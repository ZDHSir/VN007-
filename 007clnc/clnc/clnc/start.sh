"${0%/*}"/Core/CuteBi start
#iptables -t mangle -I OUTPUT -m owner ! --uid 0 -p 17 --dport 53 -j ACCEPT
#iptables -t mangle -I OUTPUT -m owner ! --uid 0 -j ACCEPT
#iptables -t nat -I OUTPUT ! -p 6 -j ACCEPT
#iptables -t mangle -D PREROUTING 2
#iptables -t mangle -D OUTPUT 4

#iptables -t mangle -I OUTPUT -m owner ! --uid 3003 -j ACCEPT
#iptables -t nat -I OUTPUT -m owner ! --uid 3003 -j ACCEPT
