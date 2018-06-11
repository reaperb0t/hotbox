# Homeland of Things (HoT) Framework IoT Analysis Docker @reaperb0t (Daniel West)

IoT Exploitation and Analysis (hardware hacking) tools all in one convenient docker. Originally at cybersyndicates/hot-toolkit

https://github.com/reaperb0t/hotbox/blob/master/Dockerfile
https://homelandofthings.org
http://blog.obscuritylabs.com/
http://cybersyndicates.org

New version AO 03/19/2018 (8.62GB)

# Tools

1. afl
2. apktool
3. attify-badge
4. Attify-Zigbee-Framework
5. baudrate
6. binspector
7. boofuzz
8. blue_hydra
9. build-essential
10. buildroot
11. burp-retire-js
12. BusPirateConsole
13. busybox-static
14. Clutch
15. davtest
16. default-jre
17. DependencyCheck
18. dex2jar
19. dirb
20. dnsenum
21. dnsmap
22. dnsrecon
23. dnsutils
24. dumpdecrypted
25. DVRF
26. enjarify
27. enum4linux
28. exploitdb
29. EZ-Wave
30. fakeroot
31. fierce
32. firmware-analysis-toolkit (broken)
33. gdb
34. gdb-multiarch
35. gef
36. git
37. gnuradio
38. gpp-decrypt
39. gps-sdr-sim
40. gqrx-sdr
41. gr-gsm
42. grammarinator
43. hackrf
44. hackrf-dvb-t
45. hydra
46. iceweasel
47. IMSI-catcher
48. jad
49. jadx
50. jd-gui
51. jefferson
52. john
53. joomscan
54. JTAGenum
55. jtagulator
56. kalibrate
57. kalibrate-bladeRF
58. kalibrate-hackrf
59. kalibrate-rtl
60. killerbee
61. kpartx
62. libbtbb
63. libgcrypt-dev
64. liblzma-dev
65. libmpsse
66. LibScanner
67. locate
68. ltrace
69. lynis
70. metasploit-framework
71. Mobile-Security-Framework-MobSF
72. moneyshot
73. netcat-openbsd
74. nginx
75. nmap
76. nsp
77. nvram-faker
78. onesixtyone
79. openocd
80. p0f
81. patator
82. peda
83. py-hackrf
84. python3-psycopg2
85. python-cairo
86. python-crypto
87. python-dev
88. python-gtk2
89. python-magic
90. python-pip
91. python-psycopg2
92. python-scapy
93. python-serial
94. python-usb
95. qemu-system-arm
96. qemu-system-mips
97. qemu-system-x86
98. qemu-utils
99. qspectrumanalyzer
100. radare2
101. radamsa
102. retire.js
103. RFSec-ToolKit
104. ridenum
105. rmadair
106. ROPgadget
107. rsh-client
108. sdrangel
109. sipvicious
110. smali
111. snmp
112. snmpcheck
113. sqlcipher
114. sqlmap
115. sslscan
116. sslstrip
117. strace
118. tcpdump
119. tree
120. tuf
121. ubertooth
122. uml-utilities
123. uptane
124. urh
125. util-linux
126. vim
127. vlan
128. w3af
129. webshells
130. wfuzz
131. wordlists
132. x11vnc
133. xvfb
134. zlib1g-dev
135. zzuf

# Run with access to a physical device:
* docker run -it --device=/dev/ttyUSB0 hotbox/hotbox bash
* OR
* docker run -it --privileged -v /dev/bus/usb:/dev/bus/usb hotbox/hotbox bash

# Hardware tools confirmed working:
* HackRF (#hack_info)

# Exposed Ports
* EXPOSED 53, 80, 443, 5900, 8000, 8080, 8443

Note: ZAP Java dependencies are a PITA, pull a separate docker: "docker pull owasp/zap2docker-stable"
