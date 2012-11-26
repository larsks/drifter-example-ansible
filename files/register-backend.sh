#!/bin/sh

curl --silent \
	-X POST http://{{ hostvars.master.ansible_default_ipv4.address }}/proxy/backend/{{ ansible_default_ipv4.macaddress }}

