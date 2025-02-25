#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Domain status DTO containing everything required to verify via DKIM

.PARAMETER Id
New UUID associated with domain to be verified
.PARAMETER Domain
A domain address
.PARAMETER DkimEnabled
DKIM is enabled for this domain
.PARAMETER DkimTokens
DKIM tokens required for authentication
.PARAMETER DkimVerificationStatus
Status of DKIM authentication
.OUTPUTS

DomainStatusDto<PSCustomObject>
#>

function Initialize-BetaDomainStatusDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DkimEnabled},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${DkimTokens},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DkimVerificationStatus}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaDomainStatusDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "domain" = ${Domain}
            "dkimEnabled" = ${DkimEnabled}
            "dkimTokens" = ${DkimTokens}
            "dkimVerificationStatus" = ${DkimVerificationStatus}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainStatusDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainStatusDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainStatusDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToDomainStatusDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaDomainStatusDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaDomainStatusDto
        $AllProperties = ("id", "domain", "dkimEnabled", "dkimTokens", "dkimVerificationStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) { #optional property not found
            $Domain = $null
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dkimEnabled"))) { #optional property not found
            $DkimEnabled = $null
        } else {
            $DkimEnabled = $JsonParameters.PSobject.Properties["dkimEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dkimTokens"))) { #optional property not found
            $DkimTokens = $null
        } else {
            $DkimTokens = $JsonParameters.PSobject.Properties["dkimTokens"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dkimVerificationStatus"))) { #optional property not found
            $DkimVerificationStatus = $null
        } else {
            $DkimVerificationStatus = $JsonParameters.PSobject.Properties["dkimVerificationStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "domain" = ${Domain}
            "dkimEnabled" = ${DkimEnabled}
            "dkimTokens" = ${DkimTokens}
            "dkimVerificationStatus" = ${DkimVerificationStatus}
        }

        return $PSO
    }

}

