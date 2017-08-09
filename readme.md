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


