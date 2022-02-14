#! /bin/bash

echo '----------------------------------------------------------------------'
echo ' First, running processes directly. Later we will run them with GDB.'
echo
echo

echo 'Running native version after you press enter.'
echo '  Process will crash via SEGFAULT with attacker controlled state.'
read -r
./gif2jpg.native ./test_images/CVE-2008-0554.gif /dev/null
echo
echo
echo

echo 'Running rWasm-compiled version after you press enter.'
echo '  Process will catch the execution stop exploit from causing harm by panic-ing.'
read -r
./gif2jpg.rwasm-built ./test_images/CVE-2008-0554.gif /dev/null
echo
echo
echo

echo 'Running vWasm-compiled version after you press enter'
echo '  Process will catch the execution stop exploit from causing harm by explicitly invoking SIGILL using ud2.'
read -r
./gif2jpg.vwasm-built ./test_images/CVE-2008-0554.gif /dev/null
echo
echo
echo

echo '----------------------------------------------------------------------'
echo ' Re-running processes, but now using GDB'
echo
echo


echo 'Running native version after you press enter.'
echo '  Process will crash via SEGFAULT with attacker controlled state.'
read -r
gdb --batch -ex 'r test_images/CVE-2008-0554.gif /dev/null' --args ./gif2jpg.native
echo
echo
echo

echo 'Running rWasm-compiled version after you press enter.'
echo '  Process will catch the execution stop exploit from causing harm by panic-ing.'
read -r
gdb --batch -ex 'r test_images/CVE-2008-0554.gif /dev/null' --args ./gif2jpg.rwasm-built
echo
echo
echo

echo 'Running vWasm-compiled version after you press enter'
echo '  Process will catch the execution stop exploit from causing harm by explicitly invoking SIGILL using ud2.'
read -r
gdb --batch -ex 'r test_images/CVE-2008-0554.gif /dev/null' --args ./gif2jpg.vwasm-built
echo
echo
echo
