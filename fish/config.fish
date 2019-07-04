set -x JAVA_HOME /usr/lib/jvm/java-8-openjdk
set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx
set -x TERM xterm-256color
set -x GOPATH "$HOME/.go/"
set -x TERMINAL sakura
set -x PATH $PATH /opt/firefox ~/.linuxbrew/bin/ /opt/flutter/bin/ /opt/Sdk/platform-tools /home/awataki/.gem/ruby/2.5.0/bin ~/.go/bin/ ~/.screenlayout ~/.npm-global/bin /home/awataki/.gem/ruby/2.6.0/bin
set -x ANDROID_HOME /opt/Sdk
set -x WINIT_HIDPI_FACTOR 1.0
set -x QT_QPA_PLATFORMTHEME qt5ct
set -x EDITOR nvim
status --is-login; and status --is-interactive; and exec byobu-launcher
