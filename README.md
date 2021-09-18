# GitHub Action for Eleventy

Use this action to build your static website with [Eleventy](https://www.11ty.io/), version 1.0.0-canary.41.

To use it, create a `.github/workflows/eleventy_build.yml` file which [uses this repository](https://help.github.com/en/articles/workflow-syntax-for-github-actions#jobsjob_idsteps) as an action.

Here's an example which builds the site with this action, then deploys to GitHub Pages with [peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages):

```yaml
name: Eleventy Build
on: [push]

jobs:
  build_deploy:
    runs-on: ubuntu-18.04
    steps:
      - uses: actions/checkout@master
      - name: Build
        uses: TartanLlama/actions-eleventy@v1.1
      - name: Deploy
        uses: peaceiris/actions-gh-pages@v1.1.0
        env:
          PUBLISH_DIR: _site 
          PUBLISH_BRANCH: gh-pages
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

This action accepts a couple of optional inputs:

| Input Name             | Required? | Default    | Description                                                            |
| ---------------------- | :-------: | :-----:    | ---------------------------------------------------------------------- |
| `args`                 |    No     |  `""`      | Arguments to pass to the Eleventy invocation                           |
| `install_dependencies` |    No     | `false`    | If set to `true`, `npm install` will be run before Eleventy is invoked |
| `working_directory`    |    No     | `"."`      | Working directory in which to run Eleventy                             |

For example:

```yaml
- name: Build
  uses: y-wenl/actions-eleventy@v1.1
  with:
    args: --output _dist
    install_dependencies: true
    working_directory: my_site
```
