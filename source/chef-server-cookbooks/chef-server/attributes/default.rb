#
# Author:: Adam Jacob (<adam@opscode.com>)
# Copyright:: Copyright (c) 2011 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

####
# The Chef User that services run as
####
# The username for the chef services user
default['chef_server']['user']['username'] = "chef"
# The shell for the chef services user
default['chef_server']['user']['shell'] = "/bin/sh"
# The home directory for the chef services user
default['chef_server']['user']['home'] = "/opt/opscode/embedded"

####
# CouchDB 
####
# Enable/disable the CouchDB service
default['chef_server']['couchdb']['enable'] = true 
# The directory for CouchDB data
default['chef_server']['couchdb']['dir'] = "/var/opt/opscode/couchdb"
# The port to listen on
default['chef_server']['couchdb']['port'] = '5984'
# The IP Address to bind on - use 0.0.0.0 for everything 
default['chef_server']['couchdb']['bind_address'] = '127.0.0.1'
default['chef_server']['couchdb']['max_document_size'] = '4294967296'
default['chef_server']['couchdb']['max_attachment_chunk_size'] = '4294967296'
default['chef_server']['couchdb']['os_process_timeout'] = '300000'
default['chef_server']['couchdb']['max_dbs_open'] = 10000
default['chef_server']['couchdb']['delayed_commits'] = 'true'
default['chef_server']['couchdb']['batch_save_size'] = 1000 
default['chef_server']['couchdb']['batch_save_interval'] = 1000 
default['chef_server']['couchdb']['log_level'] = 'info' 
default['chef_server']['couchdb']['reduce_limit'] = 'false' 

####
# RabbitMQ
####
default['chef_server']['rabbitmq']['enable'] = true
default['chef_server']['rabbitmq']['dir'] = "/var/opt/opscode/rabbitmq"
default['chef_server']['rabbitmq']['vhost'] = '/chef'
default['chef_server']['rabbitmq']['user'] = 'chef'
default['chef_server']['rabbitmq']['password'] = 'chefrocks'
default['chef_server']['rabbitmq']['node_ip_address'] = '127.0.0.1'
default['chef_server']['rabbitmq']['node_port'] = '5672'

