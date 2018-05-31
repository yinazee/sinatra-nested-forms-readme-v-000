require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :new
  end

  post '/student' do
  @student = Student.new(params[:student])

  params[:student][:courses].each do |details|
    Course.new(details)
  end

  @courses = Course.all

    erb :student
  end
<<<<<<< HEAD
=======

end

>>>>>>> 11729a5cbb0dbc2aa3b75bcaa1c7c19f27192a4c

