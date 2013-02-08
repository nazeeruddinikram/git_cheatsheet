#!/bin/bash
# Some interesting commands to remember:
#	git init		Create .git dir
#	git add .		Add all dirs and subdirs to staged files
#	git reset HEAD file	Untrack file
#	git rm file		Remove file from hdd and from staged files
#	git rm --cached file	Remove file from staged files
#	git commit --amend -m "Message"
#				Delete last commit, and commit anew.
#	git log p -N		Show all diffs from the last N commits
#	git remote add origin https://github.com/vomv1988/experiment.git
#				Add repository experiment.git with tag 'origin'
#	git remote rm origin	Remove repository tagged "origin"
#	git push origin master
#				Push commit to repository tagged "origin" 
#				with branch name "master"
# The github APIv3 doc is in:
#	http://developer.github.com/v3/
#	http://developer.github.com/v3/repos/
# Remember that, in the github api doc, strings like '/repos/:user/:repo' mean, pass...
#	https://api.github.com/repos/vomv1988/experiment
# ...to the curl command.
# Here are some interesting curl one-liners:
#	curl -XPOST -u vomv1988 https://api.github.com/user/repos \
#	-d '{"name":"experiment","description":"This is merely an experiment"}'
#				Create repository experiment.git in github.com
#	curl -XDELETE -u vomv1988 https://api.github.com/repos/vomv1988/experiment
#				Delete repository experiment.git from github.com
# Ofcourse: replace 'vomv1988' with your own username, and 'experiment' 
# with your own repo name.

# QUINE!
cat ${0}
