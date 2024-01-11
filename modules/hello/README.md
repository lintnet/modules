# hello

This module isn't practical but just an example.

## Usage

```jsonnet
local hello = import 'github.com/lintnet/modules/modules/hello/hello.jsonnet@60a46a4fa4c0e7b1b95f57c479e756afa2f376e9:v0.1.0';

{
  message: hello.message,
  hello: hello.hello(),
}
```
