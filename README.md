# modules

Examples of [lintnet Modules](https://lintnet.github.io/docs/module)

## :warning: Deprecated. Moved to lintnet-modules

https://github.com/lintnet-modules

- [ghalint](https://github.com/lintnet-modules/ghalint)
- [nllint](https://github.com/lintnet-modules/nllint)
- [github-actions](https://github.com/lintnet-modules/github-actions)
- etc

## Modules

- [array](modules/array): [Imported modules](https://lintnet.github.io/docs/module#2-imported-module) for array
- [ghalint](modules/ghalint): Port of [suzuki-shunsuke/ghalint](https://github.com/suzuki-shunsuke/ghalint), which is a linter for GitHub Actions
- [github_actions](modules/github_actions): Modules regarding GitHub Actions
- [hello](modules/hello): Example module
- [nllint](modules/nllint): Port of [suzuki-shunsuke/nllint](https://github.com/suzuki-shunsuke/nllint), which is a linter to check newlines at the end of files

## How to use

### Imported modules

```jsonnet
local hello = import 'github_archive/github.com/lintnet/modules/modules/hello/hello.jsonnet@d69d0083dcb2696dd3427c484f36940f717a9285:v0.1.2';
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
        'github_archive/github.com/lintnet/modules/modules/nllint/main.jsonnet@d69d0083dcb2696dd3427c484f36940f717a9285:v0.1.2',
      ],
    },
  ],
}
```

## Update Modules by Renovate

https://github.com/lintnet/renovate-config

## LICENSE

[MIT](LICENSE)
