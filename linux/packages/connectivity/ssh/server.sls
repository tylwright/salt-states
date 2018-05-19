{% if grains['os'] == 'CentOS' %}
openssh-server:
  pkg.installed

sshd:
  service.running:
    - enable: True
{% endif %}
