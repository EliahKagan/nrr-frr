@echo off
rem nrr.cmd - New Remote Repo
rem utility to create a new remote repo

%GIT_SSH% team-roach.ddns.net newrepo %1
