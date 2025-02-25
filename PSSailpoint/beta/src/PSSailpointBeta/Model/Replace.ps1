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

No description available.

.PARAMETER Regex
This can be a string or a regex pattern in which you want to replace.
.PARAMETER Replacement
This is the replacement string that should be substituded wherever the string or pattern is found.
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.PARAMETER VarInput
This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI.
.OUTPUTS

Replace<PSCustomObject>
#>

function Initialize-BetaReplace {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Regex},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Replacement},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh} = $false,
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarInput}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaReplace' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Regex) {
            throw "invalid value for 'Regex', 'Regex' cannot be null."
        }

        if ($null -eq $Replacement) {
            throw "invalid value for 'Replacement', 'Replacement' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "regex" = ${Regex}
            "replacement" = ${Replacement}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Replace<PSCustomObject>

.DESCRIPTION

Convert from JSON to Replace<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Replace<PSCustomObject>
#>
function ConvertFrom-BetaJsonToReplace {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaReplace' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaReplace
        $AllProperties = ("regex", "replacement", "requiresPeriodicRefresh", "input")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'regex' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "regex"))) {
            throw "Error! JSON cannot be serialized due to the required property 'regex' missing."
        } else {
            $Regex = $JsonParameters.PSobject.Properties["regex"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "replacement"))) {
            throw "Error! JSON cannot be serialized due to the required property 'replacement' missing."
        } else {
            $Replacement = $JsonParameters.PSobject.Properties["replacement"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requiresPeriodicRefresh"))) { #optional property not found
            $RequiresPeriodicRefresh = $null
        } else {
            $RequiresPeriodicRefresh = $JsonParameters.PSobject.Properties["requiresPeriodicRefresh"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["input"].value
        }

        $PSO = [PSCustomObject]@{
            "regex" = ${Regex}
            "replacement" = ${Replacement}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }

}

