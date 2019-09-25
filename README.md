# Black Code Formatter GitHub Action

A GitHub action that runs [black code formatter](https://github.com/ambv/black) for Python.

## Example Workflow

```workflow
workflow "Example Workflow" {
  on = "push"
  resolves = ["Lint"]
}

action "Lint" {
  uses = "lgeiger/black-action@master"
  args = ". --check"
}
```

For a full list of possible `args` checkout the [black docs](https://github.com/ambv/black#command-line-options).


Code inspired by https://github.com/MarvinJWendt/run-node-formatter

# TODO:
- Action currently fails when branch contains a slash, e.g. dependabot/bump_test. There is a solution for this in the code by MarvinJWendt, so this should be implemented here as well.
