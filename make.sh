#!/bin/sh

set -eu

make clean
make
strip xfiles
if [ -d ~/opt/bin ]; then
  cp xfiles ~/opt/bin/xfiles-git
  ln -sf ~/opt/bin/xfiles-git ~/opt/bin/xfiles
fi
if [ -d ~/opt/man/man1 ]; then
  cp xfiles.1 ~/opt/man/man1/xfiles.1
fi
# cp examples/xfilesctl ~/opt/bin/xfilesctl
# cp examples/xfilesthumb ~/opt/bin/xfilesthumb
# chmod +x ~/opt/bin/xfilesctl ~/opt/bin/xfilesthumb
