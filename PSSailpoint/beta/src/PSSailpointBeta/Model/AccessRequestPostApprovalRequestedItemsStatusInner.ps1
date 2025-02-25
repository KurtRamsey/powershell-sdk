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

.PARAMETER Id
The unique ID of the access item being requested.
.PARAMETER Name
The human friendly name of the access item.
.PARAMETER Description
Detailed description of the access item.
.PARAMETER Type
The type of access item.
.PARAMETER Operation
The action to perform on the access item.
.PARAMETER Comment
A comment from the identity requesting the access.
.PARAMETER ClientMetadata
Additional customer defined metadata about the access item.
.PARAMETER ApprovalInfo
A list of one or more approvers for the access request.
.OUTPUTS

AccessRequestPostApprovalRequestedItemsStatusInner<PSCustomObject>
#>

function Initialize-BetaAccessRequestPostApprovalRequestedItemsStatusInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_PROFILE", "ROLE", "ENTITLEMENT")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Add", "Remove")]
        [PSCustomObject]
        ${Operation},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ClientMetadata},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ApprovalInfo}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccessRequestPostApprovalRequestedItemsStatusInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $Operation) {
            throw "invalid value for 'Operation', 'Operation' cannot be null."
        }

        if ($null -eq $ApprovalInfo) {
            throw "invalid value for 'ApprovalInfo', 'ApprovalInfo' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "type" = ${Type}
            "operation" = ${Operation}
            "comment" = ${Comment}
            "clientMetadata" = ${ClientMetadata}
            "approvalInfo" = ${ApprovalInfo}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestPostApprovalRequestedItemsStatusInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestPostApprovalRequestedItemsStatusInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestPostApprovalRequestedItemsStatusInner<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessRequestPostApprovalRequestedItemsStatusInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccessRequestPostApprovalRequestedItemsStatusInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessRequestPostApprovalRequestedItemsStatusInner
        $AllProperties = ("id", "name", "description", "type", "operation", "comment", "clientMetadata", "approvalInfo")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) {
            throw "Error! JSON cannot be serialized due to the required property 'operation' missing."
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalInfo"))) {
            throw "Error! JSON cannot be serialized due to the required property 'approvalInfo' missing."
        } else {
            $ApprovalInfo = $JsonParameters.PSobject.Properties["approvalInfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
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

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "type" = ${Type}
            "operation" = ${Operation}
            "comment" = ${Comment}
            "clientMetadata" = ${ClientMetadata}
            "approvalInfo" = ${ApprovalInfo}
        }

        return $PSO
    }

}

