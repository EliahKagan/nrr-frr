@echo off
rem frr.cmd - utility to look up an existing remote repo

rem TODO: Is there some way to use %0 instead of frr, where backslashes (andd
rem       other specially treated characters) are quoted for both the client
rem       shell (that runs this script) and the server shell (that SSH runs)?
%GIT_SSH% team-roach.ddns.net "env FINDREPO_REMOTE_FRONTEND_COMMAND_NAME=frr findrepo %*"