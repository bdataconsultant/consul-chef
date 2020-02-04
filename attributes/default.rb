default['consul']['user']           = node['install']['user'].empty? ? 'consul' : node['install']['user']
default['consul']['group']          = node['install']['user'].empty? ? 'consul' : node['install']['user']
default['consul']["dir"]            = node['install']['dir'].empty? ? "/srv/hops" : node['install']['dir']
default['consul']['home']           = "#{node['consul']['dir']}/consul"
default['consul']['conf_dir']       = "#{node['consul']['home']}/consul.d"
default['consul']['data_dir']       = "#{node['consul']['home']}/data_dir"
default['consul']['bin_dir']       = "#{node['consul']['home']}/bin"

default['consul']['version']        = "1.6.3"
default['consul']['use_dnsmasq']    = "true"

default['consul']['bind_address']   = ""

default['consul']['master']['bootstrap_expect'] = 1
default['consul']['master']['ui']               = "true"