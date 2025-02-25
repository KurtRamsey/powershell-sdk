# DateCompareSecondDate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceName** | **String** | A reference to the source to search for the account | 
**AttributeName** | **String** | The name of the attribute on the account to return. This should match the name of the account attribute name visible in the user interface, or on the source schema. | 
**AccountSortAttribute** | **String** | The value of this configuration is a string name of the attribute to use when determining the ordering of returned accounts when there are multiple entries | [optional] 
**AccountSortDescending** | **Boolean** | The value of this configuration is a boolean (true/false). Controls the order of the sort when there are multiple accounts. If not defined, the transform will default to false (ascending order) | [optional] 
**AccountReturnFirstLink** | **Boolean** | The value of this configuration is a boolean (true/false). Controls which account to source a value from for an attribute.  If this flag is set to true, the transform returns the value from the first account in the list, even if it is null. If it is set to false, the transform returns the first non-null value. If not defined, the transform will default to false | [optional] 
**AccountFilter** | **String** | This expression queries the database to narrow search results. The value of this configuration is a sailpoint.object.Filter expression and used when searching against the database.  The default filter will always include the source and identity, and any subsequent expressions will be combined in an AND operation to the existing search criteria. Only certain searchable attributes are available:  - &#x60;nativeIdentity&#x60; - the Account ID  - &#x60;displayName&#x60; - the Account Name  - &#x60;entitlements&#x60; - a boolean value to determine if the account has entitlements | [optional] 
**AccountPropertyFilter** | **String** | This expression is used to search and filter accounts in memory. The value of this configuration is a sailpoint.object.Filter expression and used when searching against the returned resultset.  All account attributes are available for filtering as this operation is performed in memory. | [optional] 
**RequiresPeriodicRefresh** | **Boolean** | A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process | [optional] [default to $false]
**VarInput** | [**System.Collections.Hashtable**](AnyType.md) | This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI. | [optional] 
**InputFormat** | [**DateFormatInputFormat**](DateFormatInputFormat.md) |  | [optional] 
**OutputFormat** | [**DateFormatOutputFormat**](DateFormatOutputFormat.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DateCompareSecondDate = Initialize-PSSailpointBetaDateCompareSecondDate  -SourceName Workday `
 -AttributeName DEPARTMENT `
 -AccountSortAttribute created `
 -AccountSortDescending false `
 -AccountReturnFirstLink false `
 -AccountFilter !(nativeIdentity.startsWith(&quot;*DELETED*&quot;)) `
 -AccountPropertyFilter (groups.containsAll({&#39;Admin&#39;}) || location &#x3D;&#x3D; &#39;Austin&#39;) `
 -RequiresPeriodicRefresh false `
 -VarInput {type&#x3D;accountAttribute, attributes&#x3D;{attributeName&#x3D;first_name, sourceName&#x3D;Source}} `
 -InputFormat null `
 -OutputFormat null
```

- Convert the resource to JSON
```powershell
$DateCompareSecondDate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

