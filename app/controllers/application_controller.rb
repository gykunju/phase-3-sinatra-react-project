class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  before do
    response.headers["Access-Control-Allow-Origin"] = "*"
  end

  # enable CORS
  options "*" do
    response.headers["Access-Control-Allow-Methods"] = "GET", "POST", "PUT", "PATCH", "DELETE"
  end

    
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/company" do 
    Company.all.to_json
  end

  get "/company/:id" do 
    Company.find(params[:id]).to_json
  end

  get "/games/:slug" do
    if params[:slug] == "Trending"
      # Display all games in descending order of likes
      Game.order(likes: :desc).to_json
    else
      # Find the genre based on the provided slug
      genre = Genre.find_by(name: params[:slug])
      if genre
        # If the genre is found, display the games belonging to that genre
        genre.games.to_json
      else
        # If the genre is not found, return an error or appropriate response
        status 404
        { error: "Genre not found" }.to_json
      end
    end
  end
  
  get "/reviews/:id" do
    Review.where(game_id: params[:id]).to_json
  end

  get "/genre/:slug" do
    Genre.find_by(name: params[:slug]).games.to_json
  end

  get "/gameplay" do
    Gameplay.all.to_json
  end

  get "/gameplay/:id" do 
    Gameplay.find(params[:id]).to_json
  end

  post '/reviews' do
    review =Review.create(params)
    
    review.to_json
  end

  patch '/games/:id' do 
    game = Game.find(params[:id])
    
    if game.update(params)
      { game: game, message: "updated succesfully"}.to_json
    else
      {message: "failure"}.to_json
    end

  end

  get "/favorites" do 
    Game.where(favorite: true).to_json

  end

  patch "/favorites/:id" do
    favorite = Game.find(params[:id])

    if favorite.update(params)
      {favorite: "patched"}.to_json
    else
      {message: "error; unpatched"}.to_json
    end
  end
end
