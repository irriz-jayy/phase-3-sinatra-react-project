class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    {message: "Hello"}.to_json
  end

  get "/blogs" do
    blogs=Blog.all
    blogs.to_json
  end

  get "/blogs/:id" do
    blog=Blog.find(params[:id])
    blog.to_json
  end

  delete "/blogs/:id" do
    blog=Blog.find(params[:id])
    blog.destroy
    blog.to_json
  end

  post "/blogs" do
    # Get the currently logged in user or create a new one
    author = Author.find_by(id: session[:author_id]) || Author.create(name: Faker::Name.name)
  
    # Create the new blog post with the author_id
    blog = Blog.create(
      title: params[:title],
      content: params[:content],
      author_id: author.id
    )
  
    # Return the new blog post as JSON
    blog.to_json
  end
  
  
end
