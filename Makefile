### Makefile ---
## Author: dbd
## Version: 0.0.1

### Commentary:
##
##


### Code:


all:
	./make.sh

.PHONY: git-create
git-create:
	git init
	git config --global user.name "Duong Bao Duy"
	git config --global user.email "baoduy.duong0206@gmail.com"
	case "$(shell git remote)" in \
		"origin" ) git remote remove origin; \
	esac 
	git remote add origin https://github.com/duongbaoduy/git_dir2submodule.git
	git config --global credential.helper store
	@echo Done $@ : $^ !!

.PHONY: git-pub
git-pub:
	git push -u origin --all
	@echo Done $@ !!

.PHONY: gitk
gitk:
	gitk.cmd --all
	@echo Done $@ !!
	