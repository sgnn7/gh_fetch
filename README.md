gh_fetch
========
Downloader and updater for your github repos.

- Did you ever need to update a ton of repositories from GitHub but you always had to do it one by one?
- Did you ever need to start using your dev machine quickly but needed to clone repos one by one?
- Did you ever needed to keep a backup of a large number of GitHub repos?

**gh_fetch** is designed to fix all of these problems by automating the process to the maximum extent possible. This tool will go through your GitHub repos both public and private including shared repositories from toher organizations and fetch the most recent changes for it, cloning the relevant repos if they are not already downloaded. Feature set will be expanding per my needs but you are free to fork and issue a pull request.

```
usage: update_repos [-h] [-d DIRECTORY] [-i] [--exclude-forks]
                    [--include-org-forks] [--include-public-org-repos]
                    [--debug]
                    username token

Retrieve and/or update local copies of GitHub-hosted repos

positional arguments:
  username              GitHub username
  token                 GitHub token tied to the username

optional arguments:
  -h, --help            show this help message and exit
  -d DIRECTORY, --directory DIRECTORY
                        Destination directory
  -i, --include-own     Include own repositories
  --exclude-forks       Exclude forked repositories
  --include-org-forks   Include forked repositories in orgs
  --include-public-org-repos
                        Include public repositories in orgs
  --debug               Enable debugging
```

TODO:
- Scrubbing of remote endpoints
- Lots of testing
