#
# Cookbook Name:: blacksquarelabs-sysctl
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
include_recipe 'sysctl::apply'
# https://blogs.akamai.com/2016/08/vulnerability-in-the-linux-kernels-tcp-stack-implementation.html
node.default['sysctl']['params']['net']['ipv4']['tcp_challenge_ack_limit'] = 1073741823
# disable ipv6
node.default['sysctl']['params']['net']['ipv6']['conf']['all']['disable_ipv6'] = 1
node.default['sysctl']['params']['net']['ipv6']['conf']['default']['disable_ipv6'] = 1
node.default['sysctl']['params']['net']['ipv6']['conf']['lo']['disable'] = 1
