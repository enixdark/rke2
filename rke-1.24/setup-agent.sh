
#!/bin/sh

mkdir -p /etc/rancher/rke2/
sudo systemctl stop ufw
sudo systemctl disable ufw
sudo systemctl disable --now apparmor.service

echo "server: https://192.168.1.28:9345" >> /etc/rancher/rke2/config.yaml
echo 'token: K106032b58db59a28113b86d52492aeaf1d6e68c4f08332a6e967c54878b0ca9be1::server:16fc638d5dd77d6f3feee49369186d9d' >> /etc/rancher/rke2/config.yaml
echo 'cni: "canal"' >> /etc/rancher/rke2/config.yaml
#disable-kube-proxy: true
