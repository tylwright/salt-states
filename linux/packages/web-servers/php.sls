{% if grains['os'] == 'CentOS' %}
install-php:
  pkg.installed:
    - pkgs:
      - php
{% endif %}
