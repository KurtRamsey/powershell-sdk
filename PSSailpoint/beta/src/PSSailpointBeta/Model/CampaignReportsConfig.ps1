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

.PARAMETER IdentityAttributeColumns
list of identity attribute columns
.OUTPUTS

CampaignReportsConfig<PSCustomObject>
#>

function Initialize-BetaCampaignReportsConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${IdentityAttributeColumns}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaCampaignReportsConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identityAttributeColumns" = ${IdentityAttributeColumns}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignReportsConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignReportsConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignReportsConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCampaignReportsConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaCampaignReportsConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCampaignReportsConfig
        $AllProperties = ("identityAttributeColumns")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityAttributeColumns"))) { #optional property not found
            $IdentityAttributeColumns = $null
        } else {
            $IdentityAttributeColumns = $JsonParameters.PSobject.Properties["identityAttributeColumns"].value
        }

        $PSO = [PSCustomObject]@{
            "identityAttributeColumns" = ${IdentityAttributeColumns}
        }

        return $PSO
    }

}

