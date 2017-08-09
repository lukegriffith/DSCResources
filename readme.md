# DSCResources

Looking at ways of breaking up logic in DSC Resources

```
    DSCStandard ( Core DSC modules )
        ^             ^
        |             |
        |      DSCCompliance (Resource with compliance functionality)
    DSCPatch ( Resources, with patch functionality)
```

DSCPatch and DSCCompliance both export the same resources. The same configurations can be called, switching out the imported module, allowing for different behaviour to occur with the same resources.


DSCPatch, and DSCCompliance - can have the same codebase of configuration, but be applied and return in different ways.

# Building

Configurations can be under config modules - IE Software, Security, OperatingSystem. These can be configurations targeted to these types of changes. Using simple filters against JSON objects different configs can be applied to different nodes fed in.

Patch and Compliance configurations can be built.

Apply patch in push mode, eventually push to compliance in pull mode.
