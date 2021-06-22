FROM kalilinux/kali-rolling

RUN DEBIAN_FRONTEND='noninteractive' apt-get update && apt-cache search kali-linux && apt-get upgrade -y && apt-get autoremove -y && apt-get clean -y

RUN DEBIAN_FRONTEND='noninteractive' apt-get install --no-install-recommends -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
kali-linux-core \
kali-linux-large \
kali-tools-top10 \
kali-tools-information-gathering \
kali-tools-vulnerability \
kali-tools-web \
kali-tools-database \
kali-tools-passwords \
kali-tools-wireless \
kali-tools-reverse-engineering \
kali-tools-exploitation \
kali-tools-social-engineering \
kali-tools-sniffing-spoofing \
kali-tools-post-exploitation \
kali-tools-802-11 \
kali-tools-windows-resources

RUN DEBIAN_FRONTEND='noninteractive' apt-get install --no-install-recommends -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
iputils-ping

WORKDIR /home
CMD /bin/zsh

