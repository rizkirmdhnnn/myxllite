# My XL Lite

My XL Lite merupakan tool sederhana yang berguna untuk melihat informasi kuota XL dengan lebih lengkap. Dengan tool ini anda bisa melihat dengan jelas FUP dari paket unlimited.

## Install via Bash Script

- Pastikan koneksi internet tersedia, untuk meminimalisir kegagalan
- Buka Terminal/TTYD/Putty, salin script dibawah ini

	```
	wget https://raw.githubusercontent.com/rizpedia/myxllite/master/installer.sh && chmod +x ./installer.sh && ./installer.sh
	```

- Untuk akses bisa ke http://ip-router/myxllite atau dimenu luci

## Uninstallation via Bash Script

- Pastikan koneksi internet tersedia, untuk meminimalisir kegagalan
- Buka Terminal/TTYD/Putty, salin script dibawah ini

	```
	chmod +x /www/myxllite/uninstaller.sh && /www/myxllite/uninstaller.sh
	```
## Update

- Untuk update anda harus uninstall dan kemudian menginstall ulang tool

-----

## Install IPK via HelmiWrt Packages (mudah)

- Pastikan koneksi internet tersedia, untuk meminimalisir kegagalan
- Buka Terminal/TTYD/Putty, salin script dibawah ini

	```
	wget --no-check-certificate https://raw.githubusercontent.com/helmiau/helmiwrt-packages/main/hpipk -O /bin/hpipk && chmod 755 /bin/hpipk && hpipk $(hpipk | grep myxllite) --force-depends
	```

- Logout lalu login LuCI.

## Uninstall IPK

- Buka Terminal/TTYD/Putty, salin script dibawah ini

	```
	opkg remove luci-app-myxllite
	```

## Credits
- [Rizki Ramadhan](https://github.com/rizpedia) as creator of this software.
- [ardcsx](https://github.com/ardcsx) thanks for API.
- [Helmi Amirudin](https://helmiau.com) as installer and uninstaller script and IPK compiler.
