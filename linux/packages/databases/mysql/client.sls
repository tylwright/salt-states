{% if grains['os'] == 'CentOS' %}
install-mariadb-client:
  pkg.installed:
    - pkgs:
      - mariadb
{% endif %}
