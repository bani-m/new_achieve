server '13.112.220.16', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/home/app/.ssh/id_rsa'
