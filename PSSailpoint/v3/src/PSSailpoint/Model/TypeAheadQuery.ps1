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

Query parameters used to construct an Elasticsearch type ahead query object.  The typeAheadQuery performs a search for top values beginning with the typed values. For example, typing ""Jo"" results in top hits matching ""Jo."" Typing ""Job"" results in top hits matching ""Job."" 

.PARAMETER Query
The type ahead query string used to construct a phrase prefix match query.
.PARAMETER Field
The field on which to perform the type ahead search.
.PARAMETER NestedType
The nested type.
.PARAMETER MaxExpansions
The number of suffixes the last term will be expanded into. Influences the performance of the query and the number results returned. Valid values: 1 to 1000.
.PARAMETER Size
The max amount of records the search will return.
.OUTPUTS

TypeAheadQuery<PSCustomObject>
#>

function Initialize-TypeAheadQuery {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Query},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Field},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NestedType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxExpansions} = 10,
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Size} = 100
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => TypeAheadQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Query) {
            throw "invalid value for 'Query', 'Query' cannot be null."
        }

        if ($null -eq $Field) {
            throw "invalid value for 'Field', 'Field' cannot be null."
        }

        if ($MaxExpansions -and $MaxExpansions -gt 1000) {
          throw "invalid value for 'MaxExpansions', must be smaller than or equal to 1000."
        }

        if ($MaxExpansions -and $MaxExpansions -lt 1) {
          throw "invalid value for 'MaxExpansions', must be greater than or equal to 1."
        }

        if ($Size -and $Size -lt 1) {
          throw "invalid value for 'Size', must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            "query" = ${Query}
            "field" = ${Field}
            "nestedType" = ${NestedType}
            "maxExpansions" = ${MaxExpansions}
            "size" = ${Size}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TypeAheadQuery<PSCustomObject>

.DESCRIPTION

Convert from JSON to TypeAheadQuery<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TypeAheadQuery<PSCustomObject>
#>
function ConvertFrom-JsonToTypeAheadQuery {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => TypeAheadQuery' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TypeAheadQuery
        $AllProperties = ("query", "field", "nestedType", "maxExpansions", "size")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'query' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) {
            throw "Error! JSON cannot be serialized due to the required property 'query' missing."
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "field"))) {
            throw "Error! JSON cannot be serialized due to the required property 'field' missing."
        } else {
            $Field = $JsonParameters.PSobject.Properties["field"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nestedType"))) { #optional property not found
            $NestedType = $null
        } else {
            $NestedType = $JsonParameters.PSobject.Properties["nestedType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxExpansions"))) { #optional property not found
            $MaxExpansions = $null
        } else {
            $MaxExpansions = $JsonParameters.PSobject.Properties["maxExpansions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        $PSO = [PSCustomObject]@{
            "query" = ${Query}
            "field" = ${Field}
            "nestedType" = ${NestedType}
            "maxExpansions" = ${MaxExpansions}
            "size" = ${Size}
        }

        return $PSO
    }

}

