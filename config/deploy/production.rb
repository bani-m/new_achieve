server '54.65.244.113', user: 'app', roles: %w{app db web}
set :ssh_options, keys: 'achieve-key.pem'
