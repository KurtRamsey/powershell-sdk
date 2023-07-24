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

.PARAMETER IsValid
When this field is true, the filter expression is valid against the input.
.PARAMETER IsValidJSONPath
When this field is true, the filter expression is using a valid JSON path.
.PARAMETER IsPathExist
When this field is true, the filter expression is using an existing path.
.OUTPUTS

ValidateFilterOutputDto<PSCustomObject>
#>

function Initialize-BetaValidateFilterOutputDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsValid} = $false,
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsValidJSONPath} = $false,
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsPathExist} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaValidateFilterOutputDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "isValid" = ${IsValid}
            "isValidJSONPath" = ${IsValidJSONPath}
            "isPathExist" = ${IsPathExist}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ValidateFilterOutputDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to ValidateFilterOutputDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ValidateFilterOutputDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToValidateFilterOutputDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaValidateFilterOutputDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaValidateFilterOutputDto
        $AllProperties = ("isValid", "isValidJSONPath", "isPathExist")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isValid"))) { #optional property not found
            $IsValid = $null
        } else {
            $IsValid = $JsonParameters.PSobject.Properties["isValid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isValidJSONPath"))) { #optional property not found
            $IsValidJSONPath = $null
        } else {
            $IsValidJSONPath = $JsonParameters.PSobject.Properties["isValidJSONPath"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isPathExist"))) { #optional property not found
            $IsPathExist = $null
        } else {
            $IsPathExist = $JsonParameters.PSobject.Properties["isPathExist"].value
        }

        $PSO = [PSCustomObject]@{
            "isValid" = ${IsValid}
            "isValidJSONPath" = ${IsValidJSONPath}
            "isPathExist" = ${IsPathExist}
        }

        return $PSO
    }

}

