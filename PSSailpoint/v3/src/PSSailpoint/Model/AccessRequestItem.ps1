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
The type of the item being requested.
.PARAMETER Id
ID of Role, Access Profile or Entitlement being requested.
.PARAMETER Comment
Comment provided by requester. * Comment is required when the request is of type Revoke Access. 
.PARAMETER ClientMetadata
Arbitrary key-value pairs. They will never be processed by the IdentityNow system but will be returned on associated APIs such as /account-activities and /access-request-status.
.PARAMETER RemoveDate
The date the role or access profile is no longer assigned to the specified identity. * Specify a date in the future. * The current SLA for the deprovisioning is 24 hours. * This date can be modified to either extend or decrease the duration of access item assignments for the specified identity. * Currently it is not supported for entitlements. 
.OUTPUTS

AccessRequestItem<PSCustomObject>
#>

function Initialize-AccessRequestItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_PROFILE", "ROLE", "ENTITLEMENT")]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ClientMetadata},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${RemoveDate}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => AccessRequestItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "comment" = ${Comment}
            "clientMetadata" = ${ClientMetadata}
            "removeDate" = ${RemoveDate}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestItem<PSCustomObject>
#>
function ConvertFrom-JsonToAccessRequestItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => AccessRequestItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AccessRequestItem
        $AllProperties = ("type", "id", "comment", "clientMetadata", "removeDate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientMetadata"))) { #optional property not found
            $ClientMetadata = $null
        } else {
            $ClientMetadata = $JsonParameters.PSobject.Properties["clientMetadata"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "removeDate"))) { #optional property not found
            $RemoveDate = $null
        } else {
            $RemoveDate = $JsonParameters.PSobject.Properties["removeDate"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "comment" = ${Comment}
            "clientMetadata" = ${ClientMetadata}
            "removeDate" = ${RemoveDate}
        }

        return $PSO
    }

}

