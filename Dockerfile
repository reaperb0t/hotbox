# Docker build image for the Homeland of Things Framework IoT Analysis
# https://homelandofthings.org @reaperb0t (Daniel West)
# http://blog.obscuritylabs.com/
# http://cybersyndicates.org

FROM kalilinux/kali-linux-docker

# Referenced: https://hub.docker.com/r/v00d00sec/kali-mini
# Referenced: https://github.com/v00d00sec/kali-minimal-dockerfile
# Referenced: https://github.com/attify/firmware-analysis-toolkit

# Setup Kali and FAT Tools
RUN apt-get update && apt-get install -y apt-transport-https
RUN cd /tmp && mkdir docker_tmp && cd docker_tmp
RUN cd /root/ 
RUN apt-get install -y apt bc gettext-base man-db fontconfig powerline
RUN apt-get install -y nmap hydra john tcpdump metasploit-framework sqlmap fierce dnsrecon dirb python-pip git nginx sslscan dnsenum dnsmap p0f joomscan davtest wfuzz sipvicious sslstrip gpp-decrypt patator wordlists enum4linux onesixtyone apktool dex2jar smali ridenum jad webshells snmpcheck dnsutils rsh-client gdb git exploitdb vim gnuradio gqrx-sdr hackrf tree locate default-jre busybox-static fakeroot kpartx netcat-openbsd python-psycopg2 python3-psycopg2 snmp uml-utilities util-linux vlan qemu-system-arm qemu-system-mips qemu-system-x86 qemu-utils build-essential zlib1g-dev liblzma-dev python-magic python-gtk2 python-cairo python-usb python-crypto python-serial python-dev libgcrypt-dev python-pip python-scapy gdb-multiarch x11vnc xvfb iceweasel mitmproxy binwalk ltrace strace
RUN updatedb

# Git Clone Additional Tools
RUN git clone --recursive https://github.com/attify/firmware-analysis-toolkit /root/firmware-analysis-toolkit/
RUN rm -rf /root/firmware-analysis-toolkit/firmadyne
RUN rm -rf /root/firmware-analysis-toolkit/firmwalker
RUN rm -rf /root/firmware-analysis-toolkit/firmware-mod-kit
RUN git clone --recursive https://github.com/zcutlip/nvram-faker.git /root/firmware-analysis-toolkit/nvram-faker
RUN git clone --recursive https://github.com/firmadyne/firmadyne /root/firmware-analysis-toolkit/firmadyne
RUN git clone --recursive https://github.com/craigz28/firmwalker /root/firmware-analysis-toolkit/firmwalker
RUN git clone --recursive https://github.com/mirror/firmware-mod-kit /root/firmware-analysis-toolkit/firmware-mod-kit
RUN git clone --recursive https://github.com/JonathanSalwan/ROPgadget.git /root/firmware-analysis-toolkit/ROPgadget
RUN git clone --recursive https://github.com/hugsy/gef /root/firmware-analysis-toolkit/gef
RUN git clone --recursive https://github.com/longld/peda.git /root/firmware-analysis-toolkit/peda
RUN git clone --recursive https://github.com/719Ben/baudrate.py /root/firmware-analysis-toolkit/baudrate/
RUN git clone --recursive https://github.com/andresriancho/w3af.git /root/w3af
RUN git clone --recursive https://github.com/x893/BusPirateConsole /root/BusPirateConsole
RUN git clone --recursive https://github.com/cyphunk/JTAGenum /root/JTAGenum
RUN git clone --recursive https://github.com/attify/attify-badge /root/attify-badge
RUN git clone --recursive https://github.com/attify/Attify-Zigbee-Framework /root/Attify-Zigbee-Framework
RUN git clone --recursive https://github.com/pwnieexpress/blue_hydra /root/blue_hydra
RUN git clone --recursive https://github.com/buildroot/buildroot /root/buildroot
RUN git clone --recursive https://github.com/KJCracks/Clutch /root/Clutch
RUN git clone --recursive https://github.com/jeremylong/DependencyCheck /root/DependencyCheck
RUN git clone --recursive https://github.com/stefanesser/dumpdecrypted /root/dumpdecrypted
RUN git clone --recursive https://github.com/praetorian-inc/DVRF /root/DVRF
RUN git clone --recursive https://github.com/google/enjarify /root/enjarify
RUN git clone --recursive https://github.com/cureHsu/EZ-Wave /root/EZ-Wave
RUN git clone --recursive https://github.com/ptrkrysik/gr-gsm /root/gr-gsm
RUN git clone --recursive https://github.com/skylot/jadx /root/jadx
RUN git clone --recursive https://github.com/java-decompiler/jd-gui /root/jd-gui
RUN git clone --recursive https://github.com/sviehb/jefferson /root/jefferson
RUN git clone --recursive https://github.com/grandideastudio/jtagulator /root/jtagulator
RUN git clone --recursive https://github.com/ttsou/kalibrate /root/kalibrate
RUN git clone --recursive https://github.com/steve-m/kalibrate-rtl /root/kalibrate-rtl
RUN git clone --recursive https://github.com/scateu/kalibrate-hackrf /root/kalibrate-hackrf
RUN git clone --recursive https://github.com/Nuand/kalibrate-bladeRF /root/kalibrate-bladeRF
RUN git clone --recursive https://github.com/riverloopsec/killerbee /root/killerbee
RUN git clone --recursive https://github.com/greatscottgadgets/libbtbb /root/libbtbb
RUN git clone --recursive https://github.com/devttys0/libmpsse /root/libmpsse
RUN git clone --recursive https://github.com/DanBeard/LibScanner /root/LibScanner
RUN git clone --recursive https://github.com/CISOfy/lynis /root/lynis
RUN git clone --recursive https://github.com/MobSF/Mobile-Security-Framework-MobSF /root/Mobile-Security-Framework-MobSF
RUN git clone --recursive https://github.com/blasty/moneyshot /root/moneyshot
RUN git clone --recursive https://github.com/nodesecurity/nsp /root/nsp
RUN git clone --recursive https://github.com/gnu-mcu-eclipse/openocd /root/openocd
RUN git clone --recursive https://github.com/radare/radare2 /root/radare2
RUN git clone --recursive https://github.com/RetireJS/retire.js /root/retire.js
RUN git clone --recursive https://github.com/sqlcipher/sqlcipher /root/sqlcipher
RUN git clone --recursive https://github.com/theupdateframework/tuf /root/tuf
RUN git clone --recursive https://github.com/greatscottgadgets/ubertooth /root/ubertooth
RUN git clone --recursive https://github.com/uptane/uptane /root/uptane
RUN git clone --recursive https://github.com/jopohl/urh /root/urh
RUN git clone --recursive https://github.com/osqzss/gps-sdr-sim /root/gps-sdr-sim
RUN git clone --recursive https://github.com/Oros42/IMSI-catcher /root/IMSI-catcher
RUN git clone --recursive https://github.com/cn0xroot/RFSec-ToolKit /root/RFSec-ToolKit
RUN git clone --recursive https://github.com/xmikos/qspectrumanalyzer /root/qspectrumanalyzer
RUN git clone --recursive https://github.com/hathcox/py-hackrf /root/py-hackrf
RUN git clone --recursive https://github.com/realraum/hackrf-dvb-t /root/hackrf-dvb-t
RUN git clone --recursive https://github.com/f4exb/sdrangel /root/sdrangel
RUN git clone --recursive https://github.com/h3xstream/burp-retire-js /root/burp-retire-js
RUN git clone --recursive https://github.com/mirrorer/afl /root/afl
RUN git clone --recursive https://github.com/rmadair/fuzzer /root/rmadair
RUN git clone --recursive https://github.com/samhocevar/zzuf /root/zzuf
RUN git clone --recursive https://github.com/aoh/radamsa /root/radamsa
RUN git clone --recursive https://github.com/binspector/binspector /root/binspector
RUN git clone --recursive https://github.com/renatahodovan/grammarinator /root/grammarinator
RUN git clone --recursive https://github.com/jtpereyda/boofuzz /root/boofuzz

#Install and Configure Additional Tools 
RUN /root/firmware-analysis-toolkit/binwalk/deps.sh --yes
#BROKE: RUN python /root/firmware-analysis-toolkit/binwalk/setup.py install
RUN pip install capstone unicorn keystone-engine pexpect
RUN chmod +x /root/firmware-analysis-toolkit/fat.py
RUN chmod +x /root/firmware-analysis-toolkit/reset.py
RUN sed -i -e 's/\/home\/vagrant\/firmadyne\//\/root\/firmware-analysis-toolkit\/firmadyne\//g' /root/firmware-analysis-toolkit/firmadyne/firmadyne.config
RUN echo "root:root" | chgpasswd
RUN sed -i -e 's/\/home\/ec\/firmadyne/\/root\/firmware-analysis-toolkit\/firmadyne/g' /root/firmware-analysis-toolkit/fat.py
RUN sed -i -e 's/\.\/src\/binwalk\/src\/scripts\/binwalk/\/usr\/local\/bin\/binwalk/g' /root/firmware-analysis-toolkit/firmware-mod-kit/shared-ng.inc

# Define default command if required, eg:
# CMD ["nginx -g 'daemon off;'"]
CMD cd /root/
# Ports to be exposed
EXPOSE 53
EXPOSE 80
EXPOSE 443
EXPOSE 5900
EXPOSE 8000
EXPOSE 8080
EXPOSE 8443
