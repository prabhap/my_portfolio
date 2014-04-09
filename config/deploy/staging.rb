# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
# role :app, %w{deploy@example.com}
# role :web, %w{deploy@example.com}
# role :db,  %w{deploy@example.com}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server 'ec2-54-187-13-182.us-west-2.compute.amazonaws.com', user: 'ubuntu', roles: %w{web app}

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
 set :ssh_options, {
   keys: '/Users/prabhapattabiraman/Desktop/my_portfolio_amazon.pem',
   forward_agent: true,
   auth_methods: %w(publickey)
 }
# and/or per server
# server 'ec2-54-187-13-182.us-west-2.compute.amazonaws.com',
#   user: 'ubuntu',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'ubuntu', # overrides user setting above
#     keys: %w(~/.ssh/id_rsa),
#     forward_agent: true,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
# setting per server overrides global ssh_options
