require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/student.rb')
also_reload('./models/*')

get ('/hogwarts') do
  @students = Student.all()
  # binding.pry
  erb(:index)
end
