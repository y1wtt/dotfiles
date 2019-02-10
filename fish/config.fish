set -x JAVA_HOME /usr/lib/jvm/java-8-openjdk
set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx
set -x TERM xterm
set -x GOPATH "$HOME/.go/"
set -x TERMINAL sakura
set -x PATH $PATH /opt/firefox ~/.linuxbrew/bin/ /opt/flutter/bin/ /opt/Sdk/platform-tools /home/awataki/.gem/ruby/2.5.0/bin ~/.go/bin/
set -x ANDROID_HOME /opt/Sdk
set -x QT_QPA_PLATFORMTHEME qt5ct
set -x WINIT_HIDPI_FACTOR 1.0
status --is-login; and status --is-interactive; and exec byobu-launcher
