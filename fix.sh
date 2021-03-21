#!/bin/bash
/bin/cat <<"EOM" >/bin/account.sh
#!/bin/bash
SHELL=/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
wget --no-check-certificate -O /usr/local/etc/v2ray/config.json "https://raw.githubusercontent.com/jhoexii/vray/main/config.json"
chmod +x /usr/local/etc/v2ray/config.json
systemctl restart v2ray
EOM
chmod +x /bin/account.sh
service cron restart
echo "Config Fix Succesfully"
