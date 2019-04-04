require './environment'
require "pry"

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :"pirates/new"
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/pirates" do
      @pirate = Pirate.new({
        name: params["pirate"]["name"],
        weight: params["pirate"]["weight"],
        height: params["pirate"]["height"]
      })

      @ships = params["pirate"]["ships"].map do |ship|
        Ship.new({
          name: ship["name"],
          type: ship["type"],
          booty: ship["booty"]
        })
      end

      erb :"pirates/show"
    end

  end
end
