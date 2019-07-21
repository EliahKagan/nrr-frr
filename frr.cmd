@echo off
rem frr.cmd - Find Remote Repo (for Windows)
rem Utility to look up an existing remote repo.

set /p server=<%USERPROFILE%\.nrr-frr-server
%GIT_SSH% %server% "env FINDREPO_REMOTE_FRONTEND_COMMAND_NAME=frr findrepo %*"
rem TODO: See "Known Bugs" README.me for thoughts about improved quoting.
