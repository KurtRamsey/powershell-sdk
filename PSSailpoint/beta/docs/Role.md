# Role
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the Role. This field must be left null when creating an Role, otherwise a 400 Bad Request error will result. | [optional] 
**Name** | **String** | The human-readable display name of the Role | 
**Created** | **System.DateTime** | Date the Role was created | [optional] [readonly] 
**Modified** | **System.DateTime** | Date the Role was last modified. | [optional] [readonly] 
**Description** | **String** | A human-readable description of the Role | [optional] 
**Owner** | [**OwnerReference**](OwnerReference.md) |  | 
**AccessProfiles** | [**AccessProfileRef[]**](AccessProfileRef.md) |  | [optional] 
**Membership** | [**RoleMembershipSelector**](RoleMembershipSelector.md) |  | [optional] 
**LegacyMembershipInfo** | [**System.Collections.Hashtable**](AnyType.md) | This field is not directly modifiable and is generally expected to be *null*. In very rare instances, some Roles may have been created using membership selection criteria that are no longer fully supported. While these Roles will still work, they should be migrated to STANDARD or IDENTITY_LIST selection criteria. This field exists for informational purposes as an aid to such migration. | [optional] 
**Enabled** | **Boolean** | Whether the Role is enabled or not. | [optional] [default to $false]
**Requestable** | **Boolean** | Whether the Role can be the target of access requests. | [optional] [default to $false]
**AccessRequestConfig** | [**RequestabilityForRole**](RequestabilityForRole.md) |  | [optional] 
**RevocationRequestConfig** | [**Revocability**](Revocability.md) |  | [optional] 
**Segments** | **String[]** | List of IDs of segments, if any, to which this Role is assigned. | [optional] 

## Examples

- Prepare the resource
```powershell
$Role = Initialize-PSSailpointBetaRole  -Id 2c918086749d78830174a1a40e121518 `
 -Name Role 2567 `
 -Created 2021-03-01T22:32:58.104Z `
 -Modified 2021-03-02T20:22:28.104Z `
 -Description Urna amet cursus pellentesque nisl orci maximus lorem nisl euismod fusce morbi placerat adipiscing maecenas nisi tristique et metus et lacus sed morbi nunc nisl maximus magna arcu varius sollicitudin elementum enim maecenas nisi id ipsum tempus fusce diam ipsum tortor. `
 -Owner null `
 -AccessProfiles null `
 -Membership null `
 -LegacyMembershipInfo {type&#x3D;IDENTITY_LIST} `
 -Enabled true `
 -Requestable true `
 -AccessRequestConfig null `
 -RevocationRequestConfig null `
 -Segments [f7b1b8a3-5fed-4fd4-ad29-82014e137e19, 29cb6c06-1da8-43ea-8be4-b3125f248f2a]
```

- Convert the resource to JSON
```powershell
$Role | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

