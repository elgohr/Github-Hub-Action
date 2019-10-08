# Github-Hub-Action
[![Actions Status](https://github.com/elgohr/Github-Hub-Action/workflows/Test/badge.svg)](https://github.com/elgohr/Github-Hub-Action/actions)

Interacting with Github in an action

## Usage

### New workflow
```yaml
name: Publish Release
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Create a Release
      uses: elgohr/Github-Hub-Action@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
      with:
        args: release create $(date +%Y%m%d%H%M%S)

```

## Argument

The actions you want to perform on Github.  
All commands can be found at https://hub.github.com/hub.1.html
