function(param) [
  {
    name: 'secrets: inherit should not be used',
    location: {
      job_name: job.key,
    },
  }
  for job in std.objectKeysValues(param.data.value.jobs)
  if std.get(job.value, 'secrets', '') == 'inherit'
]
