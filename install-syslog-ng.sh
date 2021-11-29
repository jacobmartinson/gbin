sudo apt install -y syslog-ng

cd /etc/syslog-ng
sudo mv syslog-ng.conf syslog-ng.conf.dist
sudo mkdir -p /var/log/syslog-ng
sudo touch /var/log/syslog-ng/messages /var/log/syslog-ng/audit
sudo chmod 644 /var/log/syslog-ng/messages /var/log/syslog-ng/audit

cat > syslog-ng.conf <<EOF
@version: 3.13
@include "scl.conf"
@include "/usr/share/syslog-ng/include/scl/system/tty10.conf"
    options {
        time-reap(30);
        mark-freq(10);
        keep-hostname(yes);
        };

template t_imp {
  template("$MSG\n");
  template_escape(no);
};

source s_network_tcp {
         network(
           flags(no-parse)
           transport(tcp) port(1515));
       };

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
            template(t_imp)
            owner("root")
            group("root")
            perm(0644)
            ); };

log { source(s_syslog_tcp); destination(d_messages); };
log { source(s_network_tcp); destination(d_audit); };

EOF

sudo systemctl restart syslog-ng

sudo netstat -anp | grep :151

# vault audit enable socket address=10.0.143.159:1515 socket_type=tcp  
