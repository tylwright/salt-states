{% if grains['os'] == 'CentOS' %}
install-mariadb:
  pkg.installed:
    - pkgs:
      - mariadb
      - mariadb-server

mariadb:
  service.running:
    - enable: True
{% endif %}
