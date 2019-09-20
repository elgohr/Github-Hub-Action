# Github-Hub-Action
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

### Old workflow
```hcl
workflow "Publish Release" {
  on = "push"
  resolves = ["create release"]
}

action "create release" {
  uses = "elgohr/Github-Hub-Action@master"
  args = "release create $(date +%Y%m%d%H%M%S)"
  secrets = ["GITHUB_TOKEN"]
}
```

## Argument

The actions you want to perform on Github.  
All commands can be found at https://hub.github.com/hub.1.html
