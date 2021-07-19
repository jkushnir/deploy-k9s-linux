#!/bin/bash -x

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

wget https://github.com/derailed/k9s/releases/download/v0.24.14/k9s_Linux_x86_64.tar.gz
tar -xvzf k9s_Linux_x86_64.tar.gz
chmod +x k9s
cp k9s /usr/bin/
mv k9s /usr/local/bin/
rm README.md
rm LICENSE
rm k9s_Linux_x86_64.tar.gz*
echo Done

