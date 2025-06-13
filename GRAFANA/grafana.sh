!/bin/bash
sudo apt-get install -y apt-transport-https software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update
sudo apt-get install -y grafana

cat <<EOF>>/etc/system/grafana.service.yaml
[Unit]
Description=Grafana instance
Wants=network-online.target
After=network-online.target

[Service]
User=grafana
Group=grafana
Type=simple
ExecStart=/usr/sbin/grafana-server \
  --config=/etc/grafana/grafana.ini \
  --pidfile=/var/run/grafana/grafana-server.pid \
  --packaging=deb
Restart=always

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
