iscsiadm -m node -p 127.0.0.1:3260 --logout
systemctl stop iscsi
systemctl stop tgt
