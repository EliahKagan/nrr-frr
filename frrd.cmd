@echo off
rem frrd.cmd - Find Remote Repo (Debug)
rem utility to look up an existing remote repo

rem TODO: Is there some way to use %0 instead of frrd, where backslashes (and
rem       other specially treated characters) are quoted for both the client
rem       shell (that runs this script) and the server shell (that SSH runs)?
%GIT_SSH% team-roach.ddns.net "env FINDREPO_REMOTE_FRONTEND_COMMAND_NAME=frrd DEBUG_COSINE_SIMILARITY findrepo %*"
