#!/bin/sh
# Based codes by Teguh Santoso
# Improved by Helmi Amirudin <helmiau.com>

xilix="/tmp/uninstall_myxllite.sh"
cat << "EOF" > "$xilix"
#!/bin/bash
rm -rf /www/myxllite
rm -f /usr/lib/lua/luci/controller/myxllite.lua
rm -f /usr/lib/lua/luci/view/myxllite.htm
[ -d /tmp/luci-modulecache ] && rm -rf /tmp/luci-modulecache
[ -e /tmp/luci-indexcache ] && rm -f /tmp/luci-indexcache
echo "Uninstall berhasil, monggoh cek di luci. Jangan lupa setting nomer dulu "
EOF
sed -i 's/\r$//' "$xilix"
chmod +x "$xilix"
bash "$xilix"