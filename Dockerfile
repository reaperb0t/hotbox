# Docker build image for the Homeland of Things Framework IoT Testing
# https://homelandofthings.org @reaperb0t (Daniel West)
# http://cybersyndicates.org @killswitch-gui @real_slacker007
# http://www.hunttools.org (Mercenary-Linux)

FROM kalilinux/kali-linux-docker

# Referenced: https://hub.docker.com/r/v00d00sec/kali-mini
# Referenced: https://github.com/v00d00sec/kali-minimal-dockerfile
# Referenced: https://github.com/attify/firmware-analysis-toolkit

# Setup Kali Tools
RUN apt-get update && apt-get install -y apt-transport-https
RUN cd /tmp && mkdir docker_tmp && cd docker_tmp
RUN cd /root/ 
RUN apt-get install -y apt bc gettext-base man-db fontconfig powerline
RUN apt-get install -y nmap hydra john tcpdump metasploit-framework sqlmap fierce dnsrecon dirb python-pip git nginx sslscan dnsenum dnsmap p0f joomscan davtest wfuzz sipvicious sslstrip gpp-decrypt patator wordlists enum4linux onesixtyone apktool dex2jar smali ridenum jad webshells snmpcheck dnsutils rsh-client gdb git exploitdb vim gnuradio gqrx-sdr hackrf tree locate
#mysql-server-5.5
RUN updatedb

# Setup IoT Tools
# Follow the firmware-analysis-toolkit readme on how to properly setup
# configurations for firmdayne and firmware-mod-kit
RUN git clone --recursive https://github.com/attify/firmware-analysis-toolkit.git /root/firmware-analysis-toolkit/
RUN python /root/firmware-analysis-toolkit/binwalk/setup.py install
RUN apt-get install -y busybox-static fakeroot kpartx netcat-openbsd python-psycopg2 python3-psycopg2 snmp uml-utilities util-linux vlan qemu-system-arm qemu-system-mips qemu-system-x86 qemu-utils build-essential zlib1g-dev liblzma-dev python-magic python-gtk2 python-cairo python-usb python-crypto python-serial python-dev libgcrypt-dev python-pip python-scapy
#RUN git clone --recursive https://github.com/firmadyne/firmadyne.git /root/firmware-analysis-toolkit/firmadyne
RUN git clone --recursive https://github.com/zcutlip/nvram-faker.git /root/firmware-analysis-toolkit/nvram-faker
RUN git clone --recursive https://github.com/JonathanSalwan/ROPgadget.git /root/firmware-analysis-toolkit/ROPgadget
RUN git clone --recursive https://github.com/hugsy/gef.git /root/firmware-analysis-toolkit/gef
RUN git clone --recursive https://github.com/longld/peda.git /root/firmware-analysis-toolkit/peda
RUN git clone --recursive https://github.com/719Ben/baudrate.py /root/firmware-analysis-toolkit/baudrate/
RUN git clone --recursive https://github.com/andresriancho/w3af.git /root/w3af
#RUN /root/firmware-analysis-toolkit/firmadyne/download.sh
RUN chmod +x /root/firmware-analysis-toolkit/fat.py /root/firmware-analysis-toolkit/reset.sh
#RUN pip install mitmproxy

# Define default command if required, eg:
# CMD ["nginx -g 'daemon off;'"]

# Ports to be exposed
EXPOSE 53
EXPOSE 80
EXPOSE 443
EXPOSE 8000
EXPOSE 8080
EXPOSE 8443
