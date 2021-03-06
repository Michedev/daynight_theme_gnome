all: build install install_user_service enable_service
build:
	nim c -d:release --gc:orc daynight_theme
install:
	sudo rm -f /usr/bin/daynight_theme
	sudo cp daynight_theme /usr/local/share/
install_user_service:
	mkdir -p ${HOME}/.local/share/systemd/user
	cp daynight_theme.service ${HOME}/.local/share/systemd/user
enable_service:
	systemctl --user enable daynight_theme
	systemctl --user start daynight_theme
