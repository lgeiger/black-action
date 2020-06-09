# Black Code Formatter GitHub Action

A GitHub action that runs [black code formatter](https://github.com/ambv/black) for Python.

## Example Workflow

```yaml
name: Code Quality Checks

on: [push]

jobs:
  black:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: Run Black
      uses: lgeiger/black-action@master
      with:
        args: --check src/ tests/
```

For a full list of possible `args` checkout the [black docs](https://github.com/ambv/black#command-line-options).
