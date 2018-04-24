#!/bin/bash

DEPENDENCES=(laravel-account laravel-ad laravel-address laravel-appmanager laravel-article laravel-attachment laravel-audit laravel-base laravel-comment laravel-district laravel-endlesslevel laravel-favorite laravel-goods laravel-location laravel-message laravel-order laravel-payment laravel-recharge laravel-statistics laravel-sysconfig laravel-user location state-machine)

for dep in ${DEPENDENCES[@]}
do
	git clone git@gitee.com:meon/${dep}.git
done
