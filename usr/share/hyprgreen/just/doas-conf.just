disable-su:
 doas sed -i 's/#deny :wheel cmd su/deny :wheel cmd su/g' /etc/doas.conf
 doas sed -i 's/#deny :sudo cmd su/deny :sudo cmd su/g' /etc/doas.conf

enable-su:
 doas sed -i 's/deny :wheel cmd su/#deny :wheel cmd su/g' /etc/doas.conf
 doas sed -i 's/deny :sudo cmd su/#deny :sudo cmd su/g' /etc/doas.conf