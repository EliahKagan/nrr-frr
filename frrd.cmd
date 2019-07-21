@echo off
rem   frrd.cmd - Find Remote Repo Debug (for Windows)
rem   Utility to look up an existing remote repo with copious debugging output.
rem
rem   This file is part of nrr-frr, client scripts for newrepo/findrepo.
rem
rem   Written in 2018, 2019 by Eliah Kagan <degeneracypressure@gmail.com>.
rem
rem   To the extent possible under law, the author(s) have dedicated all
rem   copyright and related and neighboring rights to this software to the
rem   public domain worldwide. This software is distributed without any
rem   warranty.
rem
rem   You should have received a copy of the CC0 Public Domain Dedication along
rem   with this software. If not, see
rem   <http://creativecommons.org/publicdomain/zero/1.0/>.

set /p server=<%USERPROFILE%\.nrr-frr-server
%GIT_SSH% %server% "env FINDREPO_REMOTE_FRONTEND_COMMAND_NAME=frrd DEBUG_COSINE_SIMILARITY= findrepo %*"
rem TODO: See "Known Bugs" README.me for thoughts about improved quoting.
