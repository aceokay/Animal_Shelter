require('sinatra')
require('sinatra/reloader')
require('./lib/animals')
require('./lib/customers')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
