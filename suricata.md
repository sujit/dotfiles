# Process PCAP
  ```bash
  suricata -k none -l /var/log/suricata -c /etc/suricata/suricata.yaml -r <pcap>
  ```

# Extract specific metadata from `eve.json`

  ```sh
  # Alerts
  $cat eve.json | jq 'select(.event_type="alert")'

  # TLS
  $cat eve.json | jq 'select(.event_type="tls")'

  # HTTP
  cat eve.json | jq 'select(.event_type="http")'

  # DNS
  cat eve.json | jq 'select(.event_type="dns")'
  cat eve.json | jq 'select(.dns.rcode=="NXDOMAIN")' # NXDOMAIN records

  # Signatures and IDs
  cat eve.json | jq -r 'select(.event_type=="alert")|.alert.signature'
  cat eve.json | jq -r 'select(.event_type=="alert")|.alert.signature_id'
  ```
