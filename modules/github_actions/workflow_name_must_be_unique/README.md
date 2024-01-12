# workflow_name_must_be_unique

Workflow names must be unique.

## Usage

This rule has no `config` parameter.

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        'github.com/lintnet/modules/modules/github_actions/workflow_name_must_be_unique/main_combine.jsonnet@60a46a4fa4c0e7b1b95f57c479e756afa2f376e9:v0.1.0',
      ],
    },
  ],
}
```

## Why this rule is necessary?

Name duplication may cause unexpected issues.
