{% if grains['os'] == 'CentOS' %}
#GNOME Desktop:
#  pkg.group_installed

install-gnome:
  cmd.run:
    - name: yum groupinstall -y "GNOME Desktop"
{% endif %}
