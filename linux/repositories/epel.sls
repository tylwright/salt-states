install-epel-repo:
  pkg.installed:
    - pkgs:
      - epel-release.noarch
