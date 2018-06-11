# Homeland of Things (HoT) Framework IoT Analysis Docker @reaperb0t (Daniel West)

IoT Exploitation and Analysis (hardware hacking) tools all in one convenient docker. Originally at cybersyndicates/hot-toolkit

https://github.com/reaperb0t/hotbox/blob/master/Dockerfile
https://homelandofthings.org
http://blog.obscuritylabs.com/
http://cybersyndicates.org

New version AO 03/19/2018 (8.62GB)

#Tools

afl
apktool
attify-badge
Attify-Zigbee-Framework
baudrate
binspector
boofuzz
blue_hydra
build-essential
buildroot
burp-retire-js
BusPirateConsole
busybox-static
Clutch
davtest
default-jre
DependencyCheck
dex2jar
dirb
dnsenum
dnsmap
dnsrecon
dnsutils
dumpdecrypted
DVRF
enjarify
enum4linux
exploitdb
EZ-Wave
fakeroot
fierce
firmware-analysis-toolkit (broken)
gdb
gdb-multiarch
gef
git
gnuradio
gpp-decrypt
gps-sdr-sim
gqrx-sdr
gr-gsm
grammarinator
hackrf
hackrf-dvb-t
hydra
iceweasel
IMSI-catcher
jad
jadx
jd-gui
jefferson
john
joomscan
JTAGenum
jtagulator
kalibrate
kalibrate-bladeRF
kalibrate-hackrf
kalibrate-rtl
killerbee
kpartx
libbtbb
libgcrypt-dev
liblzma-dev
libmpsse
LibScanner
locate
ltrace
lynis
metasploit-framework
Mobile-Security-Framework-MobSF
moneyshot
netcat-openbsd
nginx
nmap
nsp
nvram-faker
onesixtyone
openocd
p0f
patator
peda
py-hackrf
python3-psycopg2
python-cairo
python-crypto
python-dev
python-gtk2
python-magic
python-pip
python-psycopg2
python-scapy
python-serial
python-usb
qemu-system-arm
qemu-system-mips
qemu-system-x86
qemu-utils
qspectrumanalyzer
radare2
radamsa
retire.js
RFSec-ToolKit
ridenum
rmadair
ROPgadget
rsh-client
sdrangel
sipvicious
smali
snmp
snmpcheck
sqlcipher
sqlmap
sslscan
sslstrip
strace
tcpdump
tree
tuf
ubertooth
uml-utilities
uptane
urh
util-linux
vim
vlan
w3af
webshells
wfuzz
wordlists
x11vnc
xvfb
zlib1g-dev
zzuf

#Run with access to a physical device:
docker run -it --device=/dev/ttyUSB0 hotbox/hotbox bash
OR
docker run -it --privileged -v /dev/bus/usb:/dev/bus/usb hotbox/hotbox bash

#Hardware tools confirmed working:
-HackRF (#hack_info)

#Exposed Ports
EXPOSED 53, 80, 443, 5900, 8000, 8080, 8443

Note: ZAP Java dependencies are a PITA, pull a separate docker: "docker pull owasp/zap2docker-stable"
