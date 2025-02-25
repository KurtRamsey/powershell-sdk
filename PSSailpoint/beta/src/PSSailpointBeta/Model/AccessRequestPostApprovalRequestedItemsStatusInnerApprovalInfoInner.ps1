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

.PARAMETER ApprovalComment
A comment left by the approver.
.PARAMETER ApprovalDecision
The final decision of the approver.
.PARAMETER ApproverName
The name of the approver
.PARAMETER Approver
No description available.
.OUTPUTS

AccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner<PSCustomObject>
#>

function Initialize-BetaAccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApprovalComment},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APPROVED", "DENIED")]
        [PSCustomObject]
        ${ApprovalDecision},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApproverName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Approver}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ApprovalDecision) {
            throw "invalid value for 'ApprovalDecision', 'ApprovalDecision' cannot be null."
        }

        if ($null -eq $ApproverName) {
            throw "invalid value for 'ApproverName', 'ApproverName' cannot be null."
        }

        if ($null -eq $Approver) {
            throw "invalid value for 'Approver', 'Approver' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "approvalComment" = ${ApprovalComment}
            "approvalDecision" = ${ApprovalDecision}
            "approverName" = ${ApproverName}
            "approver" = ${Approver}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner
        $AllProperties = ("approvalComment", "approvalDecision", "approverName", "approver")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'approvalDecision' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalDecision"))) {
            throw "Error! JSON cannot be serialized due to the required property 'approvalDecision' missing."
        } else {
            $ApprovalDecision = $JsonParameters.PSobject.Properties["approvalDecision"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approverName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'approverName' missing."
        } else {
            $ApproverName = $JsonParameters.PSobject.Properties["approverName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approver"))) {
            throw "Error! JSON cannot be serialized due to the required property 'approver' missing."
        } else {
            $Approver = $JsonParameters.PSobject.Properties["approver"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalComment"))) { #optional property not found
            $ApprovalComment = $null
        } else {
            $ApprovalComment = $JsonParameters.PSobject.Properties["approvalComment"].value
        }

        $PSO = [PSCustomObject]@{
            "approvalComment" = ${ApprovalComment}
            "approvalDecision" = ${ApprovalDecision}
            "approverName" = ${ApproverName}
            "approver" = ${Approver}
        }

        return $PSO
    }

}

