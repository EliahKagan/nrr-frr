# nrr-frr - *client utilities that run newrepo and findrepo remotely*

`nrr.cmd`, `frr.cmd`, and `frrd.cmd` are Windows utilities. They run `newrepo`
and `findrepo` on the server.

### Installation

To install these scripts:

1. Copy the `.cmd` files to a directory listed in your `%PATH%` environment
variable.

2. Make a file in your home directory (i.e., in `%USERPROFILE%`) called
`.nrr-frr-server` consisting of a single line with the hostname or IP address
of the server you want the scripts to run `newrepo` and `findrepo` on.

    This shouldn't be a full URL, just a hostanme or IP address. For example:

    ```
    www.example.com
    ```

### What Each Command Does

Running `nrr RepoName` makes a remote repo `RepoName.git`.

Running `frr RepoName` gives the URL of the repo of that name, or suggests
similar repo names if there is no repo by that name.

`frrd` is like `frr`, except that you get lots of internal information about
how the guessing algorithm (for names that are not found) works, which you
likely only want if you are debugging findrepo (the `frr` backend) or are just
curious.

### Rationale

On Unix-like systems, `ssh SERVER newrepo REPO` and `ssh SERVER findrepo REPO`
are usually sufficient, so I haven't gotten around to writing corresponding
shell scripts, though I probably should. On Windows, it's more important to use
`GIT_SSH`, because it may be set to `plink` or a command that runs `plink` with
options, and `plink` uses Pageant for SSH key management. (This is often the
*reason* Windows users use `plink` for Git; traditionally, Pageant is the
easy way to cache SSH keys on Windows.)

### Known Bugs

- I think quoting can be improved. See the "TODO" comment in `frr.cmd`.

- It might be better to store the domain name of the server in the Windows
registry, or to fall back to accessing the registry if `%USERPROFILE%\`
