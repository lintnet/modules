function(param)
  if !std.endsWith(param.data.text, '\n') then
    [
      {
        name: 'files must end with a newline',
      },
    ]
  else if
    std.get(param.config, 'trim_space', false) &&
    std.native('strings.TrimSpace')(param.data.text) + '\n' != param.data.text
  then [
    {
      name: 'leading and trailing white spaces should be removed',
    },
  ]
  else []
