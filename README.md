gh_fetch
========
Downloader and updater for your github repos.

- Did you ever need to update a ton of repositories from GitHub but you had to do it one by one?
- Did you ever need to start using your dev machine quickly but needed to clone repos one by one?
- Did you ever needed to keep a backup of a large number of GitHub repos?

**gh_fetch** is designed to fix all of these problems by automating the process to the maximum extent possible. This tool will go through your GitHub repos both public and private including shared repositories from toher organizations and fetch the most recent changes for it, cloning the relevant repos if they are not already downloaded. Feature set will be expanding per my needs but you are free to fork and issue a pull request.

```
$ ../update_repos -h
usage: update_repos [-h] [-d DIRECTORY] [-x] [--exclude-forks]
                    [--include-org-forks] [--include-public-org-repos]
                    [--debug]
                    username token

Retrieve and/or update local copies of GitHub-hosted repos

positional arguments:
  username              GitHub username that will be used for cloning and
                        fetching
  token                 GitHub auth token for that username. You can create
                        one at https://github.com/settings/applications

optional arguments:
  -h, --help            show this help message and exit
  -d DIRECTORY, --directory DIRECTORY
                        Target directory for cloning and fetching
  -x, --exclude-own     Exclude own repositories in the updates
  --exclude-forks       Exclude forked repositories from the updates
  --include-org-forks   Include forked repos that are in user's orgs
  --include-public-org-repos
                        Include public repos that are in user's orgs
  --debug               Enable debugging output

```

## Examples

- Getting all your repos:
```
./update_repos -d /opt/checkout sgnn7 1234567890abfdefghijkl
```

- Backing up all organizational repos:
```
./update_repos -x -d ~/backups --include-org-forks --include-public-org-repos backup-user 1234567890abfdefghijkl
```

TODO:
- Scrubbing of remote endpoints
- Lots of testing
