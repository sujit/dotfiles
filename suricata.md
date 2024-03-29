# Process PCAP
  ```bash
  suricata -k none -l /var/log/suricata -c /etc/suricata/suricata.yaml -r <pcap>
  ```

# Extract specific metadata from `eve.json`

  ```sh
  ## TCP ##
  #---------------------------#
  ## Top/10 dest ports
  cat eve.json | jq -c 'select(.event_type=="flow")|[.proto, .dest_port]'|sort |uniq -c|sort -nr|head -n10
  

  ## Alerts ##
  #---------------------------#
  $cat eve.json | jq 'select(.event_type="alert")'
  ## Signatures and IDs
  cat eve.json | jq -r 'select(.event_type=="alert")|.alert.signature'
  cat eve.json | jq -r 'select(.event_type=="alert")|.alert.signature_id'


  ## TLS ##
  #---------------------------#
  $cat eve.json | jq 'select(.event_type="tls")'


  ## HTTP ##
  #---------------------------#
  cat eve.json | jq 'select(.event_type="http")'
  cat eve.json | jq 'select(.event_type="http")|.http'
  ## Unique UAs
  cat eve.json | jq -s '[.[]|.http.http_user_agent]|group_by(.)|map({key:.[0],value:(.|length)})|from_entries'


  ## DNS ##
  #---------------------------#
  cat eve.json | jq 'select(.event_type="dns")'
  ## NXDOMAIN records
  cat eve.json | jq 'select(.dns.rcode=="NXDOMAIN")'
  
  
  ## SSH ##
  #---------------------------#
  eve.json | jq -c 'select(.event_type == "ssh")'
  ## SSH clients
  eve.json | jq -c 'select(.event_type == "ssh")|.ssh.client'
  ```


# Third-party modules

* [Suricata `eve.json` log parser](https://pypi.org/project/SuricataLog/)
* [Suricata-Extractor](https://github.com/stratosphereips/Suricata-Extractor)
* [fever - Fast, extensible, versatile event router](https://github.com/DCSO/fever)


# References

* [Eve JSON Protocol Fields (OISF)](https://github.com/OISF/suricata/blob/master/doc/userguide/output/eve/eve-json-format.rst)
* 
