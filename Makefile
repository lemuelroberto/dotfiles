shellcheck:
	shellcheck \
		.bash_profile \
		.bashrc \
		.bashrc_sources/* \
		bin/* \
		install \
	;

backup:
	vscode-extensions -b -f .config/backup/vscode-extensions.list
	yay-backup -b -f .config/backup/yay-packages.list

.PHONY: install
install:
	vscode-extensions -i -f .config/backup/vscode-extensions.list
	yay-backup -i -f .config/backup/yay-packages.list

sjq-vscode-settings:
	sjq ".config/Code - OSS/User/settings.json"
