{% if grains['os'] == 'CentOS' %}
install-apache:
  pkg.installed:
    - pkgs:
      - httpd

httpd:
  service.running:
    - enable: True
{% endif %}
