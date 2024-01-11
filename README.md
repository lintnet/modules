# modules

Examples of [lintnet Modules](https://lintnet.github.io/docs/module)

## Modules

- [array](modules/array): [Imported modules](https://lintnet.github.io/docs/module#2-imported-module) for array
- [ghalint](modules/ghalint): Port of [suzuki-shunsuke/ghalint](https://github.com/suzuki-shunsuke/ghalint), which is a linter for GitHub Actions
- [github_actions](modules/github_actions): Modules regarding GitHub Actions
- [hello](modules/hello): Example module
- [nllint](modules/nllint): Port of [suzuki-shunsuke/nllint](https://github.com/suzuki-shunsuke/nllint), which is a linter to check newlines at the end of files

## How to use

### Imported modules

```jsonnet
local hello = import 'github.com/lintnet/modules/modules/hello/hello.jsonnet@60a46a4fa4c0e7b1b95f57c479e756afa2f376e9:v0.1.0';
```

### Lint rule module

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/*',
      ],
      modules: [
        'github.com/lintnet/modules/modules/nllint/main.jsonnet@60a46a4fa4c0e7b1b95f57c479e756afa2f376e9:v0.1.0',
      ],
    },
  ],
}
```

## Update Modules by Renovate

https://github.com/lintnet/renovate-config

## LICENSE

[MIT](LICENSE)
