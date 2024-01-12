// A configuration file of lintnet.
// https://lintnet.github.io/docs/config-file
function(param) {
  targets: [
    {
      data_files: [
        '**/*',
        '!**/testdata/*',
      ],
      lint_files: [
        'modules/nllint/main.jsonnet',
      ],
    },
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      lint_files: [
        'modules/ghalint/**/main.jsonnet',
        'modules/github_actions/**/main.jsonnet',
      ],
    },
  ],
}
