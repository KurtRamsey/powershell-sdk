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

Details about the certification campaign that ended.

.PARAMETER Id
Unique ID for the campaign.
.PARAMETER Name
The human friendly name of the campaign.
.PARAMETER Description
Extended description of the campaign.
.PARAMETER Created
The date and time the campaign was created.
.PARAMETER Modified
The date and time the campaign was last modified.
.PARAMETER Deadline
The date and time the campaign is due.
.PARAMETER Type
The type of campaign.
.PARAMETER CampaignOwner
No description available.
.PARAMETER Status
The current status of the campaign.
.OUTPUTS

CampaignEndedCampaign<PSCustomObject>
#>

function Initialize-BetaCampaignEndedCampaign {
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
        [System.DateTime]
        ${Created},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Deadline},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("MANAGER", "SOURCE_OWNER", "SEARCH", "ROLE_COMPOSITION")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CampaignOwner},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("COMPLETED")]
        [PSCustomObject]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaCampaignEndedCampaign' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }

        if ($null -eq $Deadline) {
            throw "invalid value for 'Deadline', 'Deadline' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $CampaignOwner) {
            throw "invalid value for 'CampaignOwner', 'CampaignOwner' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "created" = ${Created}
            "modified" = ${Modified}
            "deadline" = ${Deadline}
            "type" = ${Type}
            "campaignOwner" = ${CampaignOwner}
            "status" = ${Status}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignEndedCampaign<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignEndedCampaign<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignEndedCampaign<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCampaignEndedCampaign {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaCampaignEndedCampaign' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCampaignEndedCampaign
        $AllProperties = ("id", "name", "description", "created", "modified", "deadline", "type", "campaignOwner", "status")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deadline"))) {
            throw "Error! JSON cannot be serialized due to the required property 'deadline' missing."
        } else {
            $Deadline = $JsonParameters.PSobject.Properties["deadline"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "campaignOwner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'campaignOwner' missing."
        } else {
            $CampaignOwner = $JsonParameters.PSobject.Properties["campaignOwner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "created" = ${Created}
            "modified" = ${Modified}
            "deadline" = ${Deadline}
            "type" = ${Type}
            "campaignOwner" = ${CampaignOwner}
            "status" = ${Status}
        }

        return $PSO
    }

}

