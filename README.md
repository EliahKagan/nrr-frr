# nrr-frr - client scripts for newrepo/findrepo

*Written in 2018, 2019 by Eliah Kagan \<degeneracypressure@gmail.com\>.*

*To the extent possible under law, the author(s) have dedicated all copyright
and related and neighboring rights to this software to the public domain
worldwide. This software is distributed without any warranty.*

*You should have received a copy of the CC0 Public Domain Dedication along with
this software. If not, see
<http://creativecommons.org/publicdomain/zero/1.0/>.*

The `nrr`, `frr`, and `frrd` commands run on a client machine. They connect to
a server, where they run `newrepo` (`nrr`) or `findrepo` (`frr` and `frrd`).
See [newrepo-findrepo](https://github.com/EliahKagan/newrepo-findrepo).

The files `nrr`, `frr`, and `frrd` provide those commands for Unix-like
environments, while `nrr.cmd`, `frr.cmd`, and `frrd.cmd` provide them on
Windows.

### Installation on Unix-like operating systems

1. Run `./deploy`.

2. Make a file in your home directory (i.e., in `$HOME`) called `.nrr-frr-server`
consisting of a single line with the hostname or IP address of the server you
want the scripts to run `newrepo` and `findrepo` on.

    This shouldn't be a full URL, just a hostname or IP address. For example:

    ```none
    www.example.com
    ```

### Installation on Windows

To install these scripts:

1. Copy the `.cmd` files to a directory listed in your `%PATH%` environment
variable.

2. Make a file in your home directory (i.e., in `%USERPROFILE%`) called
`.nrr-frr-server` consisting of a single line with the hostname or IP address
of the server you want the scripts to run `newrepo` and `findrepo` on.

    This shouldn't be a full URL, just a hostname or IP address. For example:

    ```none
    www.example.com
    ```

### What Each Command Does

`nrr` stands for "new remote repo." Running `nrr RepoName` makes a remote repo `RepoName.git`.

`frr` stands for "find remote repo." Running `frr RepoName` gives the URL of
the repo of that name, or suggests similar repo names if there is no repo by
that name.

`frrd` stands for "find remote repo (debug)." `frrd` is like `frr`, except that
you get lots of internal information about how the guessing algorithm (for
names that are not found) works, which you likely only want if you are
debugging findrepo (the `frr` backend) or are just curious.

### Known Bugs

- The `.cmd` files (for Windows) require `%GIT_SSH%` to be set. They don't fall
back to `ssh` when `%GIT_SSH%` expands to an empty string. This is in
undesirable contrast to the shell scripts (for Unix-like systems), which do use
`ssh` when `$GIT_SSH` expands to an empty string.

- I think quoting can be improved in the `.cmd` files.

    I think there may be a way to use `%0` instead of `frr`, where backslashes
    and other special characters are quoted for both the client shell (that
    runs this script) and the server shell (that SSH runs). This would
    correspond to the behavior of the shell scripts.

- The name nrr-frr is clunky, though newrepo-findrepo is even worse. I'm
holding off on changing either to anything nicer until I decide if
newrepo-findrepo and nrr-frr should continue to be developed in separate
repositories or joined.

    (Note that this is not about the command names, which are fine, but just
    about the names of the projects/repositories.)
