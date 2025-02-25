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

Meta-data about the transform. Values in this list are specific to the type of transform to be executed.

.PARAMETER Json

JSON object

.OUTPUTS

TransformAttributes<PSCustomObject>
#>
function ConvertFrom-BetaJsonToTransformAttributes {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match AccountAttribute defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToAccountAttribute $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccountAttribute"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccountAttribute' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Base64Decode defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToBase64Decode $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Base64Decode"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Base64Decode' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Base64Encode defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToBase64Encode $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Base64Encode"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Base64Encode' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Concatenation defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToConcatenation $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Concatenation"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Concatenation' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Conditional defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToConditional $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Conditional"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Conditional' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match DateCompare defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToDateCompare $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "DateCompare"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'DateCompare' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match DateFormat defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToDateFormat $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "DateFormat"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'DateFormat' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match DateMath defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToDateMath $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "DateMath"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'DateMath' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match DecomposeDiacriticalMarks defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToDecomposeDiacriticalMarks $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "DecomposeDiacriticalMarks"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'DecomposeDiacriticalMarks' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match E164phone defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToE164phone $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "E164phone"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'E164phone' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match FirstValid defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToFirstValid $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "FirstValid"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'FirstValid' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match ISO3166 defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToISO3166 $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ISO3166"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ISO3166' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match IdentityAttribute1 defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToIdentityAttribute1 $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "IdentityAttribute1"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'IdentityAttribute1' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match IndexOf defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToIndexOf $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "IndexOf"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'IndexOf' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match LeftPad defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToLeftPad $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "LeftPad"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'LeftPad' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Lookup defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToLookup $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Lookup"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Lookup' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Lower defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToLower $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Lower"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Lower' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match NameNormalizer defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToNameNormalizer $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "NameNormalizer"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'NameNormalizer' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match RandomAlphaNumeric defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToRandomAlphaNumeric $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "RandomAlphaNumeric"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'RandomAlphaNumeric' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match RandomNumeric defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToRandomNumeric $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "RandomNumeric"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'RandomNumeric' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Reference defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToReference $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Reference"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Reference' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Replace defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToReplace $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Replace"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Replace' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match ReplaceAll defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToReplaceAll $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ReplaceAll"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ReplaceAll' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match RightPad defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToRightPad $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "RightPad"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'RightPad' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Rule defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToRule $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Rule"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Rule' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Split defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToSplit $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Split"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Split' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Static defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToStatic $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Static"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Static' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Substring defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToSubstring $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Substring"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Substring' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Trim defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToTrim $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Trim"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Trim' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match UUIDGenerator defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToUUIDGenerator $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "UUIDGenerator"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'UUIDGenerator' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        # try to match Upper defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToUpper $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Upper"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Upper' defined in oneOf (BetaTransformAttributes). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([AccountAttribute, Base64Decode, Base64Encode, Concatenation, Conditional, DateCompare, DateFormat, DateMath, DecomposeDiacriticalMarks, E164phone, FirstValid, ISO3166, IdentityAttribute1, IndexOf, LeftPad, Lookup, Lower, NameNormalizer, RandomAlphaNumeric, RandomNumeric, Reference, Replace, ReplaceAll, RightPad, Rule, Split, Static, Substring, Trim, UUIDGenerator, Upper]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("AccountAttribute", "Base64Decode", "Base64Encode", "Concatenation", "Conditional", "DateCompare", "DateFormat", "DateMath", "DecomposeDiacriticalMarks", "E164phone", "FirstValid", "ISO3166", "IdentityAttribute1", "IndexOf", "LeftPad", "Lookup", "Lower", "NameNormalizer", "RandomAlphaNumeric", "RandomNumeric", "Reference", "Replace", "ReplaceAll", "RightPad", "Rule", "Split", "Static", "Substring", "Trim", "UUIDGenerator", "Upper")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([AccountAttribute, Base64Decode, Base64Encode, Concatenation, Conditional, DateCompare, DateFormat, DateMath, DecomposeDiacriticalMarks, E164phone, FirstValid, ISO3166, IdentityAttribute1, IndexOf, LeftPad, Lookup, Lower, NameNormalizer, RandomAlphaNumeric, RandomNumeric, Reference, Replace, ReplaceAll, RightPad, Rule, Split, Static, Substring, Trim, UUIDGenerator, Upper]). JSON Payload: $($Json)"
        }
    }
}

