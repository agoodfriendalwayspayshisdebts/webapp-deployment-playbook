#!/usr/bin/env bash

if [ -z $1 ] ; then
	echo "No version specified"
	exit 1
fi

ansible-playbook -K \
  -i hosts \
  -e @private_vars/app_env.yml \
  -e version=$1 \
  playbook.yml
