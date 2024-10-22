#/bin/sh

if [ -n "$UPSTREAM_DNS" ]; then
  echo "nameserver $UPSTREAM_DNS" > /etc/resolv.conf
fi

tinyproxy -d