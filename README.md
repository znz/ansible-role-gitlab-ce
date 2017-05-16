# Ansible role for GitLab CE

Setup [GitLab Community Edition](https://docs.gitlab.com/ce/README.html).

## Requirements

- Ubuntu 16.04
- packages: ca-certificates curl openssh-server postfix

## Role Variables

None.

## Dependencies

None.

## Example Playbook

Example:

    - hosts: servers
      become: yes
      roles:
         - znz.gitlab-ce

Another example:

    - hosts: all
      become: yes
      roles:
      - znz.gitlab-ce

## License

MIT License
