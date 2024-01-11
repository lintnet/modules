# array

Utilities for Jsonnet's array.

## filterMapWithIndex

This function is similar with `std.filterMap`, but original indexes of array's elements are passed to `filterFunc` and `mapFunc`.

e.g.

https://github.com/lintnet/modules/blob/main/modules/ghalint/action_shell_is_required/main.jsonnet#L8

```jsonnet
  filterMapWithIndex(
    function(idx, step) std.objectHas(step, 'run') && !std.objectHas(step, 'shell'),
    function(idx, step) {
      name: 'shell is required if run is set',
      location: {
        index: idx,
        [if std.objectHas(step, 'name') then 'step_name']: step.name,
        [if std.objectHas(step, 'id') then 'step_id']: step.id,
      },
    },
    std.get(std.get(param.data.value, 'runs', {}), 'steps', [])
  )
```
