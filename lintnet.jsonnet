// A configuration file of lintnet.
// https://lintnet.github.io/docs/config-file
function(param) {
  targets: [
    {
      data_files: [
        '**/*',
        '!.git/**',
        '!testdata/*',
      ],
      lint_files: [
        'nllint/**/*.jsonnet',
        '!nllint/**/*_test.jsonnet',
      ],
    },
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      lint_files: [
        'ghalint/**/*.jsonnet',
        '!ghalint/**/*_test.jsonnet',
      ],
    },
  ],
}
