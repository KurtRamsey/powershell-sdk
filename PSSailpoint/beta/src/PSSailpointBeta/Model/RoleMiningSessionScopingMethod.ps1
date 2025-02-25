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

.PARAMETER State
The scoping method used in the current role mining session. Can be one of these states - MANUAL|AUTO_RM
.OUTPUTS

RoleMiningSessionScopingMethod<PSCustomObject>
#>

function Initialize-BetaRoleMiningSessionScopingMethod {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${State}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleMiningSessionScopingMethod' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "state" = ${State}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningSessionScopingMethod<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningSessionScopingMethod<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningSessionScopingMethod<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMiningSessionScopingMethod {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleMiningSessionScopingMethod' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMiningSessionScopingMethod
        $AllProperties = ("state")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        $PSO = [PSCustomObject]@{
            "state" = ${State}
        }

        return $PSO
    }

}

