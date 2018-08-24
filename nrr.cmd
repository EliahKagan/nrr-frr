@echo off
rem nrr.cmd - New Remote Repo
rem Utility to create a new remote repo.

%GIT_SSH% team-roach.ddns.net newrepo %1
