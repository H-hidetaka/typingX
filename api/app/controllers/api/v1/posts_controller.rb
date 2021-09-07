module Api
  module V1
    class Api::V1::PostsController < ApplicationController
      def index
        render json:
        cards: [
          {
            title: 'ちくわ',
            src:'/various_game.jpg',
            to:'/gamelists/retro_game_introduction'
          },
      end
    end
  end
end

# App::Controllers::Api::V1::
