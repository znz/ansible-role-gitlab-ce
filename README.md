# Ansible role for GitLab CE

Setup [GitLab Community Edition](https://docs.gitlab.com/ce/README.html).

## Requirements

- Debian
- Ubuntu
- packages: ca-certificates curl openssh-server postfix

## Role Variables

- `gitlab_omnibus_config`: Source of `/etc/gitlab/gitlab.rb` like `GITLAB_OMNIBUS_CONFIG` of [GitLab Docker images](https://docs.gitlab.com/omnibus/docker/README.html).

## Dependencies

None.

## Example Playbook

Example:

    - hosts: servers
      become: yes
      roles:
         - role: znz.gitlab-ce
           gitlab_omnibus_config: |
             external_url "http://gitlab.test"

Another example:

    - hosts: all
      become: yes
      gather_facts: no
      tasks:
      - name: "Install and configure the necessary dependencies"
        apt:
          name:
          - curl
          - openssh-server
          - ca-certificates
          - postfix

    - hosts: all
      become: yes
      roles:
      - role: znz.gitlab-ce
        gitlab_omnibus_config: |
          external_url "http://gitlab.test"

## License

MIT License
