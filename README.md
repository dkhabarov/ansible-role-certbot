# ansible-role-certbot

Installs Certbot (for Let's Encrypt) for Debian/Ubuntu.

## Requirements

Certbot requires Git to be installed.

## Role Variables


        certbot_repo: https://github.com/certbot/certbot.git
        certbot_version: master
        certbot_keep_updated: yes
        certbot_dir: /opt/certbot
        certbot_post_hook: 'test -e /usr/sbin/nginx && /usr/sbin/nginx -t && nginx -s reload'
        
        certbot_domains:
          - main: domain.ltd
            root_dir: /var/www/domain.ltd
            email: support@domain.ltd
            additional_domains:
              - www.domain.ltd
        
          - main: example.com
            root_dir: /var/www/example.com
            email: support@example.com
            additional_domains:
              - www.example.com


## Example Playbook

    - hosts: servers
      roles:
        - dkhabarov.ansible-role-certbot


## License
GNU GPLv3