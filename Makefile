BASH_SCRIPTS = .bash_profile .bashrc .bashrc_sources/* bin/* install
lint-shell: shellcheck shfmt-diff shfmt-edit

shellcheck:
	shellcheck $(BASH_SCRIPTS)

shfmt-edit:
	shfmt -i 2 -ci -bn -sr -l -w $(BASH_SCRIPTS)

shfmt-diff:
	shfmt -i 2 -ci -bn -sr -l -d $(BASH_SCRIPTS)

backup:
	vscode-extensions -b -f .config/backup/vscode-extensions.list
	yay-backup -b -f .config/backup/yay-packages.list

.PHONY: install
install:
	vscode-extensions -i -f .config/backup/vscode-extensions.list
	yay-backup -i -f .config/backup/yay-packages.list

sjq-vscode-settings:
	sjq ".config/Code - OSS/User/settings.json"

docker-upgrade:
	docker pull planetscale/pscale:latest
