class AuthorsController<Sinatra::Base

    get "/authors" do
        authors=Author.all
        authors.to_json
    end

    get "/authors/:id" do
        author=Author.find(params[:id])
        author.to_json
    end

    post "/authors" do
        author=Author.create(
            :name => params[:name]
        )
        author.to_json
    end

    delete "/authors/:id" do
        author=Author.find(params[:id])
        author.destroy
        author.to_json
    end

    patch "/authors/:id" do
        author=Author.find(params[:id])
        author.update(
            name: params[:name]
        )
        author.to_json
    end
end