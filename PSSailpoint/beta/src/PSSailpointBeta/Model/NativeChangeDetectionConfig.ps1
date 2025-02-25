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

Source configuration information for Native Change Detection that is read and used by account aggregation process.

.PARAMETER Enabled
A flag indicating if Native Change Detection is enabled for a source.
.PARAMETER Operations
Operation types for which Native Change Detection is enabled for a source.
.PARAMETER AllEntitlements
A flag indicating that all entitlements participate in Native Change Detection.
.PARAMETER AllNonEntitlementAttributes
A flag indicating that all non-entitlement account attributes participate in Native Change Detection.
.PARAMETER SelectedEntitlements
If allEntitlements flag is off this field lists entitlements that participate in Native Change Detection.
.PARAMETER SelectedNonEntitlementAttributes
If allNonEntitlementAttributes flag is off this field lists non-entitlement account attributes that participate in Native Change Detection.
.OUTPUTS

NativeChangeDetectionConfig<PSCustomObject>
#>

function Initialize-BetaNativeChangeDetectionConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $false,
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCOUNT_UPDATED", "ACCOUNT_CREATED", "ACCOUNT_DELETED")]
        [String[]]
        ${Operations},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AllEntitlements} = $false,
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AllNonEntitlementAttributes} = $false,
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SelectedEntitlements},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SelectedNonEntitlementAttributes}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaNativeChangeDetectionConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "operations" = ${Operations}
            "allEntitlements" = ${AllEntitlements}
            "allNonEntitlementAttributes" = ${AllNonEntitlementAttributes}
            "selectedEntitlements" = ${SelectedEntitlements}
            "selectedNonEntitlementAttributes" = ${SelectedNonEntitlementAttributes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NativeChangeDetectionConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to NativeChangeDetectionConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NativeChangeDetectionConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToNativeChangeDetectionConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaNativeChangeDetectionConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaNativeChangeDetectionConfig
        $AllProperties = ("enabled", "operations", "allEntitlements", "allNonEntitlementAttributes", "selectedEntitlements", "selectedNonEntitlementAttributes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operations"))) { #optional property not found
            $Operations = $null
        } else {
            $Operations = $JsonParameters.PSobject.Properties["operations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allEntitlements"))) { #optional property not found
            $AllEntitlements = $null
        } else {
            $AllEntitlements = $JsonParameters.PSobject.Properties["allEntitlements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allNonEntitlementAttributes"))) { #optional property not found
            $AllNonEntitlementAttributes = $null
        } else {
            $AllNonEntitlementAttributes = $JsonParameters.PSobject.Properties["allNonEntitlementAttributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "selectedEntitlements"))) { #optional property not found
            $SelectedEntitlements = $null
        } else {
            $SelectedEntitlements = $JsonParameters.PSobject.Properties["selectedEntitlements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "selectedNonEntitlementAttributes"))) { #optional property not found
            $SelectedNonEntitlementAttributes = $null
        } else {
            $SelectedNonEntitlementAttributes = $JsonParameters.PSobject.Properties["selectedNonEntitlementAttributes"].value
        }

        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "operations" = ${Operations}
            "allEntitlements" = ${AllEntitlements}
            "allNonEntitlementAttributes" = ${AllNonEntitlementAttributes}
            "selectedEntitlements" = ${SelectedEntitlements}
            "selectedNonEntitlementAttributes" = ${SelectedNonEntitlementAttributes}
        }

        return $PSO
    }

}

