#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Get the configuration object 'Configuration'.

.DESCRIPTION

Get the configuration object 'Configuration'.

.OUTPUTS

System.Collections.Hashtable
#>
function Get-DefaultConfiguration {

    $Script:Configuration = Get-Config
    $Configuration = $Script:Configuration

    # persistent config values
    if (!($Configuration.BaseUrl[-1] -eq "/")) {
        $Configuration["BaseUrl"] = $Configuration.BaseUrl + "/"
    }

    $Configuration["TokenUrl"] = $Configuration.BaseUrl + "oauth/token"

    if (!$Configuration.containsKey("Token")) {
        $Configuration["Token"] = ""
    }

    if (!$Configuration.containsKey("TokenExpiration")) {
        $Configuration["TokenExpiration"] = ""
    }

    if (!$Configuration.containsKey("SkipCertificateCheck")) {
        $Configuration["SkipCertificateCheck"] = $false
    }

    if (!$Configuration.containsKey("MaximumRetryCount")) {
        $Configuration["MaximumRetryCount"] = 10
    }

    if (!$Configuration.containsKey("RetryIntervalSeconds")) {
        $Configuration["RetryIntervalSeconds"] = 5
    }

    if (!$Configuration.containsKey("Proxy")) {
        $Configuration["Proxy"] = $null
    }

    Return $Configuration

}

<#
.SYNOPSIS

Set the configuration.

.DESCRIPTION

Set the configuration.

.PARAMETER BaseUrl
Base URL of the HTTP endpoints

.PARAMETER Username
Username in HTTP basic authentication

.PARAMETER Password
Password in HTTP basic authentication

.PARAMETER ApiKey
API Keys for authentication/authorization

.PARAMETER ApiKeyPrefix
Prefix in the API Keys

.PARAMETER Cookie
Cookie for authentication/authorization

.PARAMETER AccessToken
Access token for authentication/authorization

.PARAMETER SkipCertificateCheck
Skip certificate verification

.PARAMETER DefaultHeaders
Default HTTP headers to be included in the HTTP request

.PARAMETER Proxy
Proxy setting in the HTTP request, e.g.

$proxy = [System.Net.WebRequest]::GetSystemWebProxy()
$proxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials

.PARAMETER PassThru
Return an object of the Configuration

.OUTPUTS

System.Collections.Hashtable
#>
function Set-DefaultConfiguration {

    [CmdletBinding()]
    Param(
        [string]$BaseUrl,
        [string]$Token,
        [AllowNull()]
        [Nullable[DateTime]]$TokenExpiration,
        [string]$TokenUrl,
        [string]$ClientId,
        [string]$ClientSecret,
        [System.Nullable[Int32]]$MaximumRetryCount,
        [System.Nullable[Int32]]$RetryIntervalSeconds,
        [System.Object]$Proxy,
        [switch]$PassThru
    )

    Process {

        If ($BaseUrl) {
            # validate URL
            $URL = $BaseUrl -as [System.URI]
            if (!($null -ne $URL.AbsoluteURI -and $URL.Scheme -match '[http|https]')) {
                throw "Invalid URL '$($BaseUrl)' cannot be used in the base URL."
            }
            $Script:Configuration["BaseUrl"] = $BaseUrl
        }

        If ($Token) {
            $Script:Configuration['Token'] = $Token
        }

        If ($TokenExpiration) {
            $Script:Configuration['TokenExpiration'] = $TokenExpiration
        }

        If ($TokenUrl) {
            $Script:Configuration['TokenUrl'] = $TokenUrl
        }

        If ($ClientId) {
            $Script:Configuration['ClientId'] = $ClientId
        }

        If ($ClientSecret) {
            $Script:Configuration['ClientSecret'] = $ClientSecret
        }

        If ($RetryIntervalSeconds) {
            $Script:Configuration['RetryIntervalSeconds'] = $RetryIntervalSeconds
        }

        If ($MaximumRetryCount) {
            $Script:Configuration['MaximumRetryCount'] = $MaximumRetryCount
        }

        If ($null -ne $Proxy) {
            If ($Proxy.GetType().FullName -ne "System.Net.SystemWebProxy" -and $Proxy.GetType().FullName -ne "System.Net.WebProxy" -and $Proxy.GetType().FullName -ne "System.Net.WebRequest+WebProxyWrapperOpaque") {
                throw "Incorrect Proxy type '$($Proxy.GetType().FullName)'. Must be System.Net.WebProxy or System.Net.SystemWebProxy or System.Net.WebRequest+WebProxyWrapperOpaque."
            }
            $Script:Configuration['Proxy'] = $Proxy
        } else {
            $Script:Configuration['Proxy'] = $null
        }

        If ($PassThru.IsPresent) {
            $Script:Configuration
        }
    }
}

function Get-AccessToken {
    Write-Debug "Getting Access Token"

    if ($null -eq $Script:Configuration["ClientId"] -or $null -eq $Script:Configuration["ClientSecret"] -or $null -eq $Script:Configuration["TokenUrl"]) {
        throw "ClientId, ClientSecret or TokenUrl Missing. Please provide values in the environment or in ~/.sailpoint/config.yaml"
    } else {
        Write-Debug $Script:Configuration["TokenUrl"]
        Write-Debug $Script:Configuration["ClientId"]
        Write-Debug $Script:Configuration["ClientSecret"]

            $HttpValues = [System.Web.HttpUtility]::ParseQueryString([String]::Empty)
            $HttpValues.Add("grant_type","client_credentials")
            $HttpValues.Add("client_id", $Script:Configuration["ClientId"])
            $HttpValues.Add("client_secret",$Script:Configuration["ClientSecret"])
        
            # Build the request and load it with the query string.
            $UriBuilder = [System.UriBuilder]($Script:Configuration["TokenUrl"])
            $UriBuilder.Query = $HttpValues.ToString()
        
            Write-Debug $UriBuilder.Uri
        
            try {
                
                if($null -eq $Script:Configuration["Proxy"]) {
                    $Response = Invoke-WebRequest -Uri $UriBuilder.Uri `
                                                -Method "POST" `
                                                -ErrorAction Stop `
                                                -UseBasicParsing
                } else {
                    $Response = Invoke-WebRequest -Uri $UriBuilder.Uri `
                                                -Method "POST" `
                                                -ErrorAction Stop `
                                                -UseBasicParsing `
                                                -Proxy $Script:Configuration["Proxy"].GetProxy($UriBuilder.Uri) `
                                                -ProxyUseDefaultCredentials
                }             

                if ($Response.statuscode -eq '200'){
                    $Data = ConvertFrom-Json $Response.Content
                    $Token = $Data.access_token
                    $TokenExpiration = (Get-Date).AddSeconds($Data.expires_in)
                    Set-DefaultConfiguration -Token $Token -TokenExpiration $TokenExpiration -Proxy $Script:Configuration["Proxy"]
                    return $Token
                } 

            } catch {
                Write-Debug ("Exception occurred when calling Invoke-WebRequest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
                Write-Debug ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
                return $null
            }
    }
}


function Get-HomeConfig {

    $Configuration = $Script:Configuration

    if (Test-Path -Path "$HOME/.sailpoint/config.yaml" -PathType leaf) {

        $ConfigObject = Get-Content -Path "$HOME/.sailpoint/config.yaml" -Raw | ConvertFrom-YAML

        Write-Host $ConfigObject

        if ($null -ne $ConfigObject.environments) {
            $Environments = $ConfigObject.environments
            $ActiveEnvironment = $ConfigObject.activeenvironment
            if (![string]::IsNullOrEmpty($ActiveEnvironment)) {
                if ($null -ne $Environments.Item($ActiveEnvironment).baseurl) {
                    $Configuration["BaseUrl"] = $Environments.Item($ActiveEnvironment).baseurl + "/"
                    $Configuration["TokenUrl"] = $Environments.Item($ActiveEnvironment).baseurl + "/oauth/token"
                }
                else {
                    Write-Host "No baseurl set for environment: $ActiveEnvironment" -ForegroundColor Red
                }

                if ($null -ne $Environments.Item($ActiveEnvironment).pat.clientid) {
                    $Configuration["ClientId"] = $Environments.Item($ActiveEnvironment).pat.clientid
                }
                else {
                    Write-Host "No clientid set for environment: $ActiveEnvironment" -ForegroundColor Red
                }

                if ($null -ne $Environments.Item($ActiveEnvironment).pat.clientsecret) {
                    $Configuration["ClientSecret"] = $Environments.Item($ActiveEnvironment).pat.clientsecret
                }
                else {
                    Write-Host "No clientsecret set for environment: $ActiveEnvironment" -ForegroundColor Red
                }

                if ($null -ne $Configuration["Environment"]) {
                    if ($Configuration["Environment"] -ne $ActiveEnvironment) {
                        Write-Debug "Environment has switched, resetting token."
                        $Configuration["Token"] = ""
                    }
                }

                $Configuration["Environment"] = $ActiveEnvironment
            }
            else {
                Write-Host "No active environment is set" -ForegroundColor Red
            }
        }
        else {
            Write-Host "No environments specified in config file" -ForegroundColor Red
        }
    }

    return $Configuration
}

function Get-EnvConfig {
    $Configuration = $Script:Configuration

    if ($null -ne $ENV:SAIL_BASE_URL) {
        $Configuration["BaseUrl"] = $ENV:SAIL_BASE_URL 
    }

    if ($null -ne $ENV:SAIL_CLIENT_ID) {
        $Configuration["ClientId"] = $ENV:SAIL_CLIENT_ID
    }

    if ($null -ne $ENV:SAIL_CLIENT_SECRET) {
        $Configuration["ClientSecret"] = $ENV:SAIL_CLIENT_SECRET
    }
    
    return $Configuration
}

function Get-LocalConfig {
    $Configuration = $Script:Configuration

    if (!(Test-Path -Path "config.json" -PathType Leaf)) { return $null }

    $LocalConfiguration = Get-Content -Path "config.json" | ConvertFrom-JSON
    
    $Configuration["ClientId"] = $LocalConfiguration.ClientId
    $Configuration["ClientSecret"] = $LocalConfiguration.ClientSecret
    $Configuration["BaseUrl"] = $LocalConfiguration.BaseUrl

    return $Configuration
}

function Get-Config {
    $Script:Configuration["ClientId"] = $null
    $Script:Configuration["ClientSecret"] = $null
    $Script:Configuration["BaseUrl"] = $null


    $EnvConfiguration = Get-EnvConfig
    if ($EnvConfiguration.clientId) {
        return $EnvConfiguration
    }

    $LocalConfig = Get-LocalConfig
    if ($LocalConfig.clientId) {
        return $LocalConfig
    }

    $HomeConfiguration = Get-HomeConfig
    if ($HomeConfiguration.clientId) {
        Write-Host "Configuration file found in home directory, this approach of loading configuration will be deprecated in future releases, please upgrade the CLI and use the new 'sail sdk init config' command to create a local configuration file"
        return $HomeConfiguration
    }

    return $Configuration
}
