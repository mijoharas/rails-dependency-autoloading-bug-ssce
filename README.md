# README

This repo demonstrates a bug with rails autoloading.

If we run this server with:

```
config.eager_load = true
```

Then we will display a page at the root when we navigate to it.

if we run this server with:

```
config.eager_load = false
```

Then we will get the following error message:

```
NameError (uninitialized constant TestClass::ChildClass):
  
app/models/test_d.rb:4:in `foobar'
app/controllers/test_controller.rb:3:in `test'
```

An explanation of what we are doing.

We have a class `TestClass` which includes a module `IncludeModule`. `IncludeModule` itself also includes a module called `ContainerModule` which contains a class `ChildClass`.

We simply want to access `ChildClass` from within `TestClass` to call a method on it. This does not seem to be allowed by rails constant autoloading.
