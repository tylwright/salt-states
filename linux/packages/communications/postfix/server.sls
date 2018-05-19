{% if grains['os'] == 'CentOS' %}
install-postfix:
  pkg.installed:
    - pkgs:
      - postfix

/etc/postfix/main.cf:
  file.replace:
    - pattern: 'inet_interfaces = localhost'
    - repl: 'inet_interfaces = all'

postfix:
  service.running:
    - enable: True
{% endif %}
