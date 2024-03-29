BASH_SCRIPTS = .bash_profile .bashrc .bashrc_sources/* bin/* install
lint-shell: shellcheck shfmt-diff shfmt-edit

shellcheck:
	shellcheck $(BASH_SCRIPTS)

shfmt-edit:
	shfmt -i 2 -ci -bn -sr -l -w $(BASH_SCRIPTS)

shfmt-diff:
	shfmt -i 2 -ci -bn -sr -l -d $(BASH_SCRIPTS)

backup-untracked:
	vscode-extensions -b -f .config/private/vscode-extensions.list
	yay-backup -b -f .config/private/yay-packages.list
	repositories -b -r repositories/ -f .config/private/repositories.list

install-untracked:
	vscode-extensions -i -f .config/private/vscode-extensions.list
	yay-backup -i -f .config/private/yay-packages.list
	repositories -c -r repositories/ -f .config/private/repositories.list

sjq-vscode-settings:
	sjq ".config/Code - OSS/User/settings.json"

docker-upgrade:
	docker pull planetscale/pscale:latest
