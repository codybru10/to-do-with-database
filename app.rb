require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/task')

get('/') do
  @task = Task.all()
  erb(:index)
end

post('/input') do
  description = params.fetch('task')
  test_task = Task.new(description)
  test_task.save()
  erb(:success)
end
