set -x JAVA_HOME /usr/lib/jvm/java-8-openjdk
set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx
set -x TERM xterm-color
set -x GOPATH "$HOME/.go/"
set -x TERMINAL sakura
set -x PATH $PATH /opt/firefox /opt/android-studio/bin /opt/idea-IU-173.4674.33/bin ~/.linuxbrew/bin/ /opt/clion-2018.1.1/bin /opt/GoLand-2018.1.1/bin
status --is-login; and status --is-interactive; and exec byobu-launcher
