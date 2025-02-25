#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Deletes an identity.

.DESCRIPTION

The API returns successful response if the requested identity was deleted.

.PARAMETER Id
Identity Id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Remove-BetaIdentity {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Remove-BetaIdentity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/identities/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling deleteIdentity."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))



        $LocalVarResult = Invoke-BetaApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Identity Details

.DESCRIPTION

This API returns a single identity using the Identity ID.

.PARAMETER Id
Identity Id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Identity
#>
function Get-BetaIdentity {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-BetaIdentity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/identities/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling getIdentity."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))



        $LocalVarResult = Invoke-BetaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Identity" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get ownership details

.DESCRIPTION

Get Ownership association details of an Identity

.PARAMETER IdentityId
The identity id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

IdentityOwnershipAssociationDetails
#>
function Get-BetaIdentityOwnershipDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IdentityId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-BetaIdentityOwnershipDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/identities/{identityId}/ownership'
        if (!$IdentityId) {
            throw "Error! The required parameter `IdentityId` missing when calling getIdentityOwnershipDetails."
        }
        $LocalVarUri = $LocalVarUri.replace('{identityId}', [System.Web.HTTPUtility]::UrlEncode($IdentityId))



        $LocalVarResult = Invoke-BetaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "IdentityOwnershipAssociationDetails" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

List Identities

.DESCRIPTION

This API returns a list of identities.

.PARAMETER Filters
Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **alias**: *eq, sw*  **firstname**: *eq, sw*  **lastname**: *eq, sw*  **email**: *eq, sw*  **cloudStatus**: *eq*  **processingState**: *eq*  **correlated**: *eq*  **protected**: *eq*

.PARAMETER Sorters
Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters/#sorting-results)  Sorting is supported for the following fields: **name, alias, cloudStatus**

.PARAMETER DefaultFilter
Adds additional filter to filters query parameter.  CORRELATED_ONLY adds correlated=true and returns only identities that are correlated.  NONE does not add any and returns all identities that satisfy filters query parameter.

.PARAMETER Count
If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Limit
Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Offset
Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Identity[]
#>
function Get-BetaIdentities {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filters},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sorters},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("CORRELATED_ONLY", "NONE")]
        [String]
        ${DefaultFilter},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Count},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-BetaIdentities' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/identities'

        if ($Filters) {
            $LocalVarQueryParameters['filters'] = $Filters
        }

        if ($Sorters) {
            $LocalVarQueryParameters['sorters'] = $Sorters
        }

        if ($DefaultFilter) {
            $LocalVarQueryParameters['defaultFilter'] = $DefaultFilter
        }

        if ($Count) {
            $LocalVarQueryParameters['count'] = $Count
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Identity[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Process a list of identityIds

.DESCRIPTION

You could use this endpoint to: 1. Calculate identity attributes, including applying or running any rules or transforms (e.g. calculate Lifecycle State at a point-in-time it's expected to change). 2. Evaluate role assignments, leading to assignment of new roles and removal of existing roles. 3. Enforce provisioning for any assigned accesses that haven't been fulfilled (e.g. failure due to source health). 4. Recalculate manager relationships. 5. Potentially clean-up identity processing errors, assuming the error has been resolved.  To learn more, refer to the [identity processing documentation](https://documentation.sailpoint.com/saas/help/setup/identity_processing.html). 

.PARAMETER ProcessIdentitiesRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

BaseReferenceDto
#>
function Start-BetaIdentityProcessing {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ProcessIdentitiesRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Start-BetaIdentityProcessing' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/identities/process'

        if (!$ProcessIdentitiesRequest) {
            throw "Error! The required parameter `ProcessIdentitiesRequest` missing when calling startIdentityProcessing."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json')) {
            $LocalVarBodyParameter = $ProcessIdentitiesRequest | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $ProcessIdentitiesRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "BaseReferenceDto" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Attribute synchronization for single identity.

.DESCRIPTION

This end-point performs attribute synchronization for a selected identity. The endpoint can be called once in 10 seconds per identity. A token with ORG_ADMIN or API authority is required to call this API.

.PARAMETER IdentityId
The Identity id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

IdentitySyncJob
#>
function Sync-BetahronizeAttributesForIdentity {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IdentityId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Sync-BetahronizeAttributesForIdentity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/identities/{identityId}/synchronize-attributes'
        if (!$IdentityId) {
            throw "Error! The required parameter `IdentityId` missing when calling synchronizeAttributesForIdentity."
        }
        $LocalVarUri = $LocalVarUri.replace('{identityId}', [System.Web.HTTPUtility]::UrlEncode($IdentityId))



        $LocalVarResult = Invoke-BetaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "IdentitySyncJob" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

