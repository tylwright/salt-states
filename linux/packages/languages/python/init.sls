include:
  - linux.repositories.epel

{% if grains['os'] == 'CentOS' %}
install-python-and-pip:
  pkg.installed:
    - pkgs:
      - python-devel
      - python2-pip
{% endif %}
