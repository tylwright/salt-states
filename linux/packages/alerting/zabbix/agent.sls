{% if 'zabbix-server-ip' in grains %}
include:
  - linux.repositories.zabbix

zabbix-agent:
  pkg.installed

{% set hostname = grains['id'] %}
{% set zabbix = grains['zabbix-server-ip'] %}

/etc/zabbix/zabbix_agentd.conf:
  file.append:
    - text:
      - Server={{ zabbix }}
      - ServerActive={{ zabbix }}
      - Hostname={{ hostname }}

enable-and-run-agent:
  cmd.run:
    - name: systemctl enable --now zabbix-agent
{% endif %}
