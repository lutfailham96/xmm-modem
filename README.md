# OpenWrt scripts to configure connection Fibocom L860-GL
Intel XMM 7650 LTE-A Pro modem.

# How-to compile package
```
cd feeds/package/net/
git clone https://github.com/koshev-msk/xmm-modem.git
cd ../../..
./scripts feeds update -a; ./scripts/feeds install -a
make -j $(($(nproc)+1)) package/feeds/packages/xmm-modem/compile
```

# How-to configure cellular connection
The config stored in /etc/config/xmm-modem. Example configuration:
```
config xmm-modem
	option enable '1'            # Enable / disable modem
	option device '/dev/ttyACM2' # Device serial port
	option nic 'fibocom'         # Network interface
	option interface 'eth1'      # Device interface
	option apn 'internet'        # APN
	option max_retries '3'       # Connection max retries
```

# How-to configure interface
## Setup network interface
Create new unmanaged interface, select physical device eth1 or usb0 or wwan0.
Setup force link option `option force_link '1'`
## Modem configuration
All configuration stored on uci `xmm-modem`, update values depends on your needs
