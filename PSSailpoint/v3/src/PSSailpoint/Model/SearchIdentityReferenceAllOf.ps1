#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Type
No description available.
.OUTPUTS

SearchIdentityReferenceAllOf<PSCustomObject>
#>

function Initialize-SearchIdentityReferenceAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCOUNT_CORRELATION_CONFIG", "ACCESS_PROFILE", "ACCESS_REQUEST_APPROVAL", "ACCOUNT", "APPLICATION", "CAMPAIGN", "CAMPAIGN_FILTER", "CERTIFICATION", "CLUSTER", "CONNECTOR_SCHEMA", "ENTITLEMENT", "GOVERNANCE_GROUP", "IDENTITY", "IDENTITY_PROFILE", "IDENTITY_REQUEST", "LIFECYCLE_STATE", "PASSWORD_POLICY", "ROLE", "RULE", "SOD_POLICY", "SOURCE", "TAG", "TAG_CATEGORY", "TASK_RESULT", "REPORT_RESULT", "SOD_VIOLATION", "ACCOUNT_ACTIVITY", "WORKGROUP")]
        [PSCustomObject]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => SearchIdentityReferenceAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SearchIdentityReferenceAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to SearchIdentityReferenceAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SearchIdentityReferenceAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToSearchIdentityReferenceAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => SearchIdentityReferenceAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SearchIdentityReferenceAllOf
        $AllProperties = ("type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
        }

        return $PSO
    }

}

