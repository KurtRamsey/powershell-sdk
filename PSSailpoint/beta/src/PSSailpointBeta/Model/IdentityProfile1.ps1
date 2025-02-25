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
System-generated unique ID of the Object
.PARAMETER Name
Name of the Object
.PARAMETER Created
Creation date of the Object
.PARAMETER Modified
Last modification date of the Object
.PARAMETER Description
The description of the Identity Profile.
.PARAMETER Owner
No description available.
.PARAMETER Priority
The priority for an Identity Profile.
.PARAMETER AuthoritativeSource
No description available.
.PARAMETER IdentityRefreshRequired
True if a identity refresh is needed. Typically triggered when a change on the source has been made.
.PARAMETER IdentityCount
The number of identities that belong to the Identity Profile.
.PARAMETER IdentityAttributeConfig
No description available.
.PARAMETER IdentityExceptionReportReference
No description available.
.PARAMETER HasTimeBasedAttr
Indicates the value of requiresPeriodicRefresh attribute for the Identity Profile.
.OUTPUTS

IdentityProfile1<PSCustomObject>
#>

function Initialize-BetaIdentityProfile1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Priority},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AuthoritativeSource},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IdentityRefreshRequired} = $false,
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentityCount},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${IdentityAttributeConfig},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${IdentityExceptionReportReference},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${HasTimeBasedAttr} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaIdentityProfile1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $AuthoritativeSource) {
            throw "invalid value for 'AuthoritativeSource', 'AuthoritativeSource' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "owner" = ${Owner}
            "priority" = ${Priority}
            "authoritativeSource" = ${AuthoritativeSource}
            "identityRefreshRequired" = ${IdentityRefreshRequired}
            "identityCount" = ${IdentityCount}
            "identityAttributeConfig" = ${IdentityAttributeConfig}
            "identityExceptionReportReference" = ${IdentityExceptionReportReference}
            "hasTimeBasedAttr" = ${HasTimeBasedAttr}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityProfile1<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityProfile1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityProfile1<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentityProfile1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaIdentityProfile1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaIdentityProfile1
        $AllProperties = ("id", "name", "created", "modified", "description", "owner", "priority", "authoritativeSource", "identityRefreshRequired", "identityCount", "identityAttributeConfig", "identityExceptionReportReference", "hasTimeBasedAttr")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authoritativeSource"))) {
            throw "Error! JSON cannot be serialized due to the required property 'authoritativeSource' missing."
        } else {
            $AuthoritativeSource = $JsonParameters.PSobject.Properties["authoritativeSource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "priority"))) { #optional property not found
            $Priority = $null
        } else {
            $Priority = $JsonParameters.PSobject.Properties["priority"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityRefreshRequired"))) { #optional property not found
            $IdentityRefreshRequired = $null
        } else {
            $IdentityRefreshRequired = $JsonParameters.PSobject.Properties["identityRefreshRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityCount"))) { #optional property not found
            $IdentityCount = $null
        } else {
            $IdentityCount = $JsonParameters.PSobject.Properties["identityCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityAttributeConfig"))) { #optional property not found
            $IdentityAttributeConfig = $null
        } else {
            $IdentityAttributeConfig = $JsonParameters.PSobject.Properties["identityAttributeConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityExceptionReportReference"))) { #optional property not found
            $IdentityExceptionReportReference = $null
        } else {
            $IdentityExceptionReportReference = $JsonParameters.PSobject.Properties["identityExceptionReportReference"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasTimeBasedAttr"))) { #optional property not found
            $HasTimeBasedAttr = $null
        } else {
            $HasTimeBasedAttr = $JsonParameters.PSobject.Properties["hasTimeBasedAttr"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "owner" = ${Owner}
            "priority" = ${Priority}
            "authoritativeSource" = ${AuthoritativeSource}
            "identityRefreshRequired" = ${IdentityRefreshRequired}
            "identityCount" = ${IdentityCount}
            "identityAttributeConfig" = ${IdentityAttributeConfig}
            "identityExceptionReportReference" = ${IdentityExceptionReportReference}
            "hasTimeBasedAttr" = ${HasTimeBasedAttr}
        }

        return $PSO
    }

}

