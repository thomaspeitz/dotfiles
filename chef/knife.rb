current_dir = File.dirname(__FILE__)

#log_level                 :info
log_level                 :debug
log_location              STDOUT
node_name                 "tpeitz"
client_key                "#{ENV['HOME']}/.ssh/chef_peitz.pem"
validation_client_name    "injixo-validator"
validation_key            "#{ENV['HOME']}/.ssh/chef_injixo-validator.pem"
chef_server_url           "https://api.chef.io/organizations/injixo"
cache_type                'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path             ["#{current_dir}/../cookbooks"]
role_path                 "#{current_dir}/../roles"
cookbook_email            "Thomas Peitz <thomas.peitz@injixo.com>"
ssl_verify_mode           :verify_peer

knife[:ssh_key_name]          = ENV['AWS_SSH_KEY']
knife[:aws_access_key_id]     = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
knife[:region]                = ENV['AWS_DEFAULT_REGION']

knife[:vault_mode] = 'client'
