{% if grains['os'] == 'CentOS' %}
include:
  - linux.repositories.zabbix

enable-optional-rpms-for-frontend:
  cmd.run:
    - name: yum-config-manager --enable rhel-7-server-optional-rpms

zabbix-packages:
  pkg.installed:
    - pkgs:
      - zabbix-server-mysql
      - zabbix-web-mysql

include:
  - linux.packages.databases.mysql
  - linux.packages.web-servers.apache
  - linux.packages.web-servers.php

create-database:
  cmd.run:
    - name: mysql -uroot -e "CREATE DATABASE zabbix CHARACTER SET utf8;"

initialize-database:
  cmd.run:
    - name: zcat /usr/share/doc/zabbix-server-mysql*/create.sql.gz | mysql -uroot zabbix

/etc/zabbix/zabbix_server.conf:
  file.replace:
    - pattern: 'DBUser=zabbix'
    - repl: 'DBUser=root'

{% set timezone = salt['timezone.get_zone']() %}

/etc/httpd/conf.d/zabbix.conf:
  file.append:
    - text:
      - php_value max_execution_time 300
      - php_value memory_limit 128M
      - php_value post_max_size 16M
      - php_value upload_max_filesize 2M
      - php_value max_input_time 300
      - php_value always_populate_raw_post_data -1
      - php_value date.timezone {{ timezone }}

zabbix-server:
  service.running:
    - enable: True

reload-apache:
  cmd.run:
    - name: systemctl restart httpd
{% endif %}
