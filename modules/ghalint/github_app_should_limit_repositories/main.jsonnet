local sort(envs) =
  local _ = std.sort(envs);
  envs;

function(param) sort([
  {
    name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit repositories',
    location: {
      job: job.key,
      [if std.objectHas(step, 'name') then 'step_name']: step.name,
      [if std.objectHas(step, 'id') then 'step_id']: step.id,
      uses: step.uses,
    },
  }
  for job in std.objectKeysValues(param.data.value.jobs)
  for step in std.get(job.value, 'steps', [])
  if std.objectHas(step, 'uses') && (
    (
      std.startsWith(step.uses, 'tibdex/github-app-token@') &&
      !std.objectHas(std.get(step, 'with', {}), 'repositories')
    ) || (
      std.startsWith(step.uses, 'actions/create-github-app-token@') &&
      !std.objectHas(std.get(step, 'with', {}), 'repositories') &&
      std.objectHas(std.get(step, 'with', {}), 'owner')
    )
  ) &&
    std.length(std.filter(
      function(elem)
        param.data.file_path == elem.workflow_file_path &&
        job.key == elem.job_name &&
        std.get(step, 'id', '') == elem.step_id,
      std.get(param.config, 'excludes', [])
    )) == 0
])
