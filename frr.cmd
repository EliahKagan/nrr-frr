@echo off
rem frr.cmd - Find Remote Repo (for Windows)
rem Utility to look up an existing remote repo.

set /p server=<%USERPROFILE%\.nrr-frr-server
%GIT_SSH% %server% "env FINDREPO_REMOTE_FRONTEND_COMMAND_NAME=frr findrepo %*"

rem TODO: Is there some way to use %0 instead of frr, where backslashes (and
rem       other specially treated characters) are quoted for both the client
rem       shell (that runs this script) and the server shell (that SSH runs)?
