include:
  - linux.repositories.gitlab
  - linux.packages.connectivity.ssh.server
  - linux.packages.communications.postfix.server

{% if grains['os'] == 'CentOS' %}
install-dependencies:
  pkg.installed:
    - pkgs:
      - curl
      - policycoreutils-python

{% set hostname = grains['id'] %}

set-fqdn:
  environ.setenv:
    - name: EXTERNAL_URL
    - value: {{ hostname }}

gitlab-ce:
  pkg.installed
{% endif %}
