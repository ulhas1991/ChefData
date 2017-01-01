# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "demo2"
client_key               "#{current_dir}/demo2.pem"
#chef_server_url          "https://ip-172-31-41-124.us-west-2.compute.internal/organizations/democrp"
chef_server_url          "https://54.244.16.75/organizations/democrp"
cookbook_path            ["#{current_dir}/../cookbooks"]
ssl_verify_mode    :verify_none
