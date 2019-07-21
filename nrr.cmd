@echo off
rem nrr.cmd - New Remote Repo (for Windows)
rem Utility to create a new remote repo.

set /p server=<%USERPROFILE%\.nrr-frr-server
%GIT_SSH% %server% newrepo %*
