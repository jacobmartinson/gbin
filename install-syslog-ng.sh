sudo apt install -y syslog-ng

cd /etc/syslog-ng
sudo mv syslog-ng.conf syslog-ng.conf.dist

cat > syslog-ng.conf <<EOF
@version: 3.13
@include "scl.conf"
@include "/usr/share/syslog-ng/include/scl/system/tty10.conf"
    options {
        time-reap(30);
        mark-freq(10);
        keep-hostname(yes);
        };
    source s_network_tcp { network(transport(tcp) port(1515)); };
    source s_syslog_tcp { syslog(transport(tcp) port(1514)); };
    destination d_messages {
        file(
            "/var/log/syslog-ng/messages"
            owner("root")
            group("root")
            perm(0644)
            ); };
    destination d_audit {
        file(
            "/var/log/syslog-ng/audit"
            owner("root")
            group("root")
            perm(0644)
            ); };
    log { source(s_syslog_tcp); destination(d_messages); };
    log { source(s_network_tcp); destination(d_audit); };
EOF

sudo systemctl restart syslog-ng

sudo netstat -anp | grep :151

