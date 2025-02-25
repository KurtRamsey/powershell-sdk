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
ID of the sync group
.PARAMETER Name
Name of the sync group
.PARAMETER PasswordPolicyId
ID of the password policy
.PARAMETER SourceIds
List of password managed sources IDs
.OUTPUTS

PasswordSyncGroup<PSCustomObject>
#>

function Initialize-PasswordSyncGroup {
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
        ${PasswordPolicyId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SourceIds}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => PasswordSyncGroup' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "passwordPolicyId" = ${PasswordPolicyId}
            "sourceIds" = ${SourceIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordSyncGroup<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordSyncGroup<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordSyncGroup<PSCustomObject>
#>
function ConvertFrom-JsonToPasswordSyncGroup {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => PasswordSyncGroup' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PasswordSyncGroup
        $AllProperties = ("id", "name", "passwordPolicyId", "sourceIds")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passwordPolicyId"))) { #optional property not found
            $PasswordPolicyId = $null
        } else {
            $PasswordPolicyId = $JsonParameters.PSobject.Properties["passwordPolicyId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceIds"))) { #optional property not found
            $SourceIds = $null
        } else {
            $SourceIds = $JsonParameters.PSobject.Properties["sourceIds"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "passwordPolicyId" = ${PasswordPolicyId}
            "sourceIds" = ${SourceIds}
        }

        return $PSO
    }

}

