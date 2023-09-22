#!/bin/bash

function install_linux_command() {
  # دستور لینوکس را اجرا کنید
  command_to_install

  # صفحه صورتی رنگ را بررسی کنید
  if [[ "$TERM" == "linux" ]]; then
    # صفحه صورتی رنگ را پیدا کنید
    while read -r; do
      if [[ "$REPLY" == "Press OK to continue" ]]; then
        # دکمه OK را فشار دهید
        echo "ok"
        break
      elif [[ "$REPLY" == "Press Cancel to exit" ]]; then
        # دکمه Cancel را فشار دهید
        echo "cancel"
        break
      fi
    done < <(cat /dev/tty)
  fi
}

# دستور لینوکس را اجرا کنید
install_linux_command "apt-get install certbot -y"
