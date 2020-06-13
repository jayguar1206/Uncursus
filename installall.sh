#!/bin/bash
if [ "$EUID" -ne 0 ]; then
echo Please run this script as root.
else
echo -e "\e[31mWelcome to Uncursus Install Script V0.2.1 (Alha) By @Yaya4_4 Follow Me On Twitter Pls.\e[0m"
echo "WARNING : THIS IS IN ALPHA A9-A11 IS NOT SUPPORTED IM NOT RESPONSABLE IF ANYTHING GOES WRONG"
echo "If you found bug pls create an issues in github ;)"
echo "Enjoy :)"
echo "Installing Dependency For The Installer"
apt update
apt install unzip -y
apt install com.bingner.plutil -y
apt install zsh -y
apt install curl -y
echo "Downloading And Executing Offical Procurus Script From Coolstar"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Yaya48/Uncurus/master/procursus-deploy-u0.sh)"
echo "Downloading And Installing Offical Procurus Deb"
apt update
apt install wget -y
wget https://github.com/Yaya48/Uncurus/blob/master/DebProcurusSystem.zip --directory-prefix=/User/Documents/
unzip /User/Documents/DebPatch/DebProcurusSystem.zip -d /User/Documents/
dpkg -i /User/Documents/DebProcurusSystem/*.deb
echo "Done. Create Custom Directory For Download All Files Requied. Path (/User/Documents/)."
rm -rf /User/Documents/DebPatch
mkdir /User/Documents/DebPatch
rm -rf /User/Documents/u0
mkdir /User/Documents/u0
wget https://github.com/Yaya48/Uncurus/blob/master/DebPatch/coreutils.deb --directory-prefix=/User/Documents/DebPatch
wget https://github.com/Yaya48/Uncurus/blob/master/DebPatch/xz-utils.deb --directory-prefix=/User/Documents/DebPatch
wget https://github.com/Yaya48/Uncurus/blob/master/DebPatch/coreutils-bin_8.31-1_all.deb --directory-prefix=/User/Documents/DebPatch
wget https://github.com/Yaya48/Uncurus/blob/master/DebPatch/libssl.deb --directory-prefix=/User/Documents/DebPatch
wget https://github.com/Yaya48/Uncurus/blob/master/DebPatch/lzma.deb --directory-prefix=/User/Documents/
wget https://github.com/Yaya48/Uncurus/blob/master/DebPatch/ncurses5-libs_5.9-1_all.deb --directory-prefix=/User/Documents/DebPatch
wget https://github.com/Yaya48/Uncurus/blob/master/DebPatch/xz_5.2.4-4_all.deb --directory-prefix=/User/Documents/DebPatch
wget https://apt.bingner.com/debs/1443.00/com.ex.substitute_0.0.15_iphoneos-arm.deb --directory-prefix=/User/Documents/u0
wget https://apt.bingner.com/debs/1443.00/com.saurik.substrate.safemode_0.9.6003_iphoneos-arm.deb --directory-prefix=/User/Documents/u0
echo "Done. Installing necessary debs for patch."
dpkg -i --force-all /User/Documents/DebPatch/coreutils.deb
dpkg -i --force-all /User/Documents/DebPatch/xz-utils.deb
dpkg -i --force-all /User/Documents/DebPatch/coreutils-bin_8.31-1_all.deb
dpkg -i --force-all /User/Documents/DebPatch/libssl.deb
dpkg -i --force-all /User/Documents/DebPatch/lzma.deb
dpkg -i --force-all /User/Documents/DebPatch/ncurses5-libs_5.9-1_all.deb
dpkg -i --force-all /User/Documents/DebPatch/xz_5.2.4-4_all.deb
dpkg -i --force-all /User/Documents/u0/*.deb
echo "Done. Running Firmware Configuration (./firmware.sh)"
bash /usr/libexec/firmware.sh
echo "Downloading & Installing Sileo"
wget https://github.com/coolstar/Odyssey-bootstrap/blob/master/org.coolstar.sileo_1.8.1_iphoneos-arm.deb?raw=true
dpkg -i --force-all /User/Documents/DebPatch/cydia_2.3_iphoneos-arm.deb
echo "BootStrap Installions Done. The Installer Clean The Installions"
rm -rf /User/Documents/DebPatch
rm -rf /User/Documents/DebProcurusSystem
rm /etc/apt/source.list.d/odyssey.sources
echo "All Done."
killall SpringBoard
fi
