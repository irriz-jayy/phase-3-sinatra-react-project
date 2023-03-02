require_relative 'blogs_controller.rb'
require_relative 'authors_controller.rb'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    {message: "Hello"}.to_json
  end    

  use AuthorsController
  use BlogsController
end



