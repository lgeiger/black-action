# Black Code Formatter GitHub Action

A GitHub action that runs [black code formatter](https://github.com/ambv/black) for Python.

## Example Workflow

```workflow
name: Black Code Formatting on PR

on: [pull_request]

jobs:
  pr-lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
        name: Checkout
      - uses: Ahuge/black-action@v1.0.2
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          BLACK_ARGS: "."
```

For a full list of possible `args` checkout the [black docs](https://github.com/ambv/black#command-line-options).


Code inspired by https://github.com/MarvinJWendt/run-node-formatter
