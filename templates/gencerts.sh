#!/bin/bash
# {{ ansible_managed }}

{% for domain in certbot_domains %}
# Command for {{ domain.main }}
# {{certbot_dir}}/certbot-auto renew --quiet --no-self-upgrade --email {{domain.email}} --text --agree-tos -a webroot --webroot-path {{domain.root_dir}} -d {{domain.main}} -d {{domain.additional | join(' -d ') }};
{{certbot_dir}}/certbot-auto certonly -c /tmp/certbot-{{domain.main}}.conf 

{%endfor%}