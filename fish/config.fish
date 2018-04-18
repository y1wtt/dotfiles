set -x JAVA_HOME /usr/lib/jvm/java-8-openjdk
set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx
set -x TERM xterm-color
status --is-login; and status --is-interactive; and exec byobu-launcher
