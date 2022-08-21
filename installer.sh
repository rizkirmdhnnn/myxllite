#!/bin/sh
# Based codes by Teguh Santoso
# Improved by Helmi Amirudin <helmiau.com>

opkg update
pkgname="bash"
if [[ $(opkg list-installed | grep -c "^$pkgname") == "0" ]]; then echo -e "Installing [$pkgname]..." && opkg install $pkgname ; fi
pkgname="curl"
if [[ $(opkg list-installed | grep -c "^$pkgname") == "0" ]]; then echo -e "Installing [$pkgname]..." && opkg install $pkgname ; fi
pkgname="git"
if [[ $(opkg list-installed | grep -c "^$pkgname") == "0" ]]; then echo -e "Installing [$pkgname]..." && opkg install $pkgname ; fi
pkgname="git-http"
if [[ $(opkg list-installed | grep -c "^$pkgname") == "0" ]]; then echo -e "Installing [$pkgname]..." && opkg install $pkgname ; fi
pkgname="php7"
if [[ $(opkg list-installed | grep -c "^$pkgname") == "0" ]]; then echo -e "Installing [$pkgname]..." && opkg install $pkgname ; fi
pkgname="php7-mod-curl"
if [[ $(opkg list-installed | grep -c "^$pkgname") == "0" ]]; then echo -e "Installing [$pkgname]..." && opkg install $pkgname ; fi

cd /www
git clone https://github.com/rizpedia/myxllite
cd myxllite
mv luci/controller/myxllite.lua /usr/lib/lua/luci/controller/myxllite.lua
mv luci/view/myxllite.htm /usr/lib/lua/luci/view/myxllite.htm
chmod +x /usr/lib/lua/luci/controller/myxllite.lua
chmod +x /usr/lib/lua/luci/view/myxllite.htm
[ -d /tmp/luci-modulecache ] && rm -rf /tmp/luci-modulecache
[ -e /tmp/luci-indexcache ] && rm -f /tmp/luci-indexcache
echo "Terinstall, monggoh cek di luci. Jangan lupa setting nomer dulu "
