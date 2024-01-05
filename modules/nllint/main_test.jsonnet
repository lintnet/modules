function(param) [
  {
    name: 'pass',
    data_file: '../README.md',
    result: [],
  },
  {
    name: 'pass trim space',
    data_file: '../README.md',
    param: {
      config: {
        trim_space: true,
      },
    },
    result: [],
  },
  {
    name: 'fail',
    data_file: 'testdata/nonewline.txt',
    result: [
      {
        name: 'files must end with a newline',
      },
    ],
  },
  {
    name: 'fail trim space',
    param: {
      config: {
        trim_space: true,
      },
    },
    data_file: 'testdata/spaces.txt',
    result: [
      {
        name: 'leading and trailing white spaces should be removed',
      },
    ],
  },
]
