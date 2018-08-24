@echo off
rem frr.cmd - utility to look up an existing remote repo

rem TODO: Is "%0" really being escaped adequatly? Might it contain quote marks?
%GIT_SSH% team-roach.ddns.net "env FINDREPO_REMOTE_FRONTEND_COMMAND_NAME=%0 findrepo %*"
