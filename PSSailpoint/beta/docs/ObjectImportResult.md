# ObjectImportResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Infos** | [**SpConfigMessage[]**](SpConfigMessage.md) | Informational messages returned from the target service on import. | 
**Warnings** | [**SpConfigMessage[]**](SpConfigMessage.md) | Warning messages returned from the target service on import. | 
**Errors** | [**SpConfigMessage[]**](SpConfigMessage.md) | Error messages returned from the target service on import. | 
**ImportedObjects** | [**BaseReferenceDto1[]**](BaseReferenceDto1.md) | References to objects that were created or updated by the import. | 

## Examples

- Prepare the resource
```powershell
$ObjectImportResult = Initialize-PSSailpointBetaObjectImportResult  -Infos null `
 -Warnings null `
 -Errors null `
 -ImportedObjects null
```

- Convert the resource to JSON
```powershell
$ObjectImportResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

