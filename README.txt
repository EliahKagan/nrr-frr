nrr.cmd, frr.cmd, and frrd.cmd are Windows utilities.

To install them, copy them to a directory in your %PATH% environment variable.

Running "nrr RepoName" (without the quotes) makes a remote repo RepoName.git.

Running "frr RepoName" (without the quotes) gives the URL of the repo of that
name, or suggests similar repo names if there is no repo by that name.

frrd is like frr, except that you get lots of internal information about how
the guessing algorithm (for names that are not found) works, which you likely
only want if you are debugging findrepo (the frr backend) or are just curious.
