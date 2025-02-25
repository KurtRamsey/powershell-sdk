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

.PARAMETER Id
id of the certification
.PARAMETER Name
name of the certification
.PARAMETER Campaign
No description available.
.PARAMETER Completed
Have all decisions been made?
.PARAMETER IdentitiesCompleted
The number of identities for whom all decisions have been made and are complete.
.PARAMETER IdentitiesTotal
The total number of identities in the Certification, both complete and incomplete.
.PARAMETER Created
created date
.PARAMETER Modified
modified date
.PARAMETER DecisionsMade
The number of approve/revoke/acknowledge decisions that have been made.
.PARAMETER DecisionsTotal
The total number of approve/revoke/acknowledge decisions.
.PARAMETER Due
The due date of the certification.
.PARAMETER Signed
The date the reviewer signed off on the Certification.
.PARAMETER Reviewer
No description available.
.PARAMETER Reassignment
No description available.
.PARAMETER HasErrors
Identifies if the certification has an error
.PARAMETER ErrorMessage
Description of the certification error
.PARAMETER Phase
No description available.
.OUTPUTS

IdentityCertificationDto<PSCustomObject>
#>

function Initialize-IdentityCertificationDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Campaign},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Completed},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentitiesCompleted},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentitiesTotal},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DecisionsMade},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DecisionsTotal},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Due},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Signed},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reviewer},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reassignment},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${HasErrors},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ErrorMessage},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("STAGED", "ACTIVE", "SIGNED")]
        [PSCustomObject]
        ${Phase}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => IdentityCertificationDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "campaign" = ${Campaign}
            "completed" = ${Completed}
            "identitiesCompleted" = ${IdentitiesCompleted}
            "identitiesTotal" = ${IdentitiesTotal}
            "created" = ${Created}
            "modified" = ${Modified}
            "decisionsMade" = ${DecisionsMade}
            "decisionsTotal" = ${DecisionsTotal}
            "due" = ${Due}
            "signed" = ${Signed}
            "reviewer" = ${Reviewer}
            "reassignment" = ${Reassignment}
            "hasErrors" = ${HasErrors}
            "errorMessage" = ${ErrorMessage}
            "phase" = ${Phase}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityCertificationDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityCertificationDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityCertificationDto<PSCustomObject>
#>
function ConvertFrom-JsonToIdentityCertificationDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => IdentityCertificationDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IdentityCertificationDto
        $AllProperties = ("id", "name", "campaign", "completed", "identitiesCompleted", "identitiesTotal", "created", "modified", "decisionsMade", "decisionsTotal", "due", "signed", "reviewer", "reassignment", "hasErrors", "errorMessage", "phase")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "campaign"))) { #optional property not found
            $Campaign = $null
        } else {
            $Campaign = $JsonParameters.PSobject.Properties["campaign"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) { #optional property not found
            $Completed = $null
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identitiesCompleted"))) { #optional property not found
            $IdentitiesCompleted = $null
        } else {
            $IdentitiesCompleted = $JsonParameters.PSobject.Properties["identitiesCompleted"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identitiesTotal"))) { #optional property not found
            $IdentitiesTotal = $null
        } else {
            $IdentitiesTotal = $JsonParameters.PSobject.Properties["identitiesTotal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decisionsMade"))) { #optional property not found
            $DecisionsMade = $null
        } else {
            $DecisionsMade = $JsonParameters.PSobject.Properties["decisionsMade"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decisionsTotal"))) { #optional property not found
            $DecisionsTotal = $null
        } else {
            $DecisionsTotal = $JsonParameters.PSobject.Properties["decisionsTotal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "due"))) { #optional property not found
            $Due = $null
        } else {
            $Due = $JsonParameters.PSobject.Properties["due"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signed"))) { #optional property not found
            $Signed = $null
        } else {
            $Signed = $JsonParameters.PSobject.Properties["signed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewer"))) { #optional property not found
            $Reviewer = $null
        } else {
            $Reviewer = $JsonParameters.PSobject.Properties["reviewer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassignment"))) { #optional property not found
            $Reassignment = $null
        } else {
            $Reassignment = $JsonParameters.PSobject.Properties["reassignment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasErrors"))) { #optional property not found
            $HasErrors = $null
        } else {
            $HasErrors = $JsonParameters.PSobject.Properties["hasErrors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errorMessage"))) { #optional property not found
            $ErrorMessage = $null
        } else {
            $ErrorMessage = $JsonParameters.PSobject.Properties["errorMessage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phase"))) { #optional property not found
            $Phase = $null
        } else {
            $Phase = $JsonParameters.PSobject.Properties["phase"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "campaign" = ${Campaign}
            "completed" = ${Completed}
            "identitiesCompleted" = ${IdentitiesCompleted}
            "identitiesTotal" = ${IdentitiesTotal}
            "created" = ${Created}
            "modified" = ${Modified}
            "decisionsMade" = ${DecisionsMade}
            "decisionsTotal" = ${DecisionsTotal}
            "due" = ${Due}
            "signed" = ${Signed}
            "reviewer" = ${Reviewer}
            "reassignment" = ${Reassignment}
            "hasErrors" = ${HasErrors}
            "errorMessage" = ${ErrorMessage}
            "phase" = ${Phase}
        }

        return $PSO
    }

}

