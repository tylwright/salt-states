{% if grains['os'] == 'CentOS' %}
/etc/yum.repos.d/gitlab_gitlab-ce.repo:
  file.managed:
    - source: salt://linux/repositories/gitlab/files/gitlab-ce-el7.repo
{% endif %}
