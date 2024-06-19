# Module Folder

This folder contains modules to be reused in any of the terraform configuration.

To use the module use below syntax.

```
module "module_name"{
   source = <path to module folder>
   variable_1 = <pass the value>
   variable_2 = <pass the value>
   ...
   ...

}
```