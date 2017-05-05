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
NameError (uninitialized constant TestD::TestC):
  
app/models/test_d.rb:4:in `foobar'
app/controllers/test_controller.rb:3:in `test'
  Rendering .../gems/ruby-2.4.1/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/diagnostics.html.erb within rescues/layout
  Rendering .../gems/ruby-2.4.1/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/_source.html.erb
  Rendered .../gems/ruby-2.4.1/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/_source.html.erb (2.3ms)
  Rendering .../gems/ruby-2.4.1/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/_trace.html.erb
  Rendered .../gems/ruby-2.4.1/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/_trace.html.erb (1.0ms)
  Rendering .../gems/ruby-2.4.1/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/_request_and_response.html.erb
  Rendered .../gems/ruby-2.4.1/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/_request_and_response.html.erb (0.6ms)
  Rendered .../gems/ruby-2.4.1/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/diagnostics.html.erb within rescues/layout (16.9ms)
```

