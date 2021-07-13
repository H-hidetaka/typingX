module Api
  module V1
    class Api::V1::PostsController < ApplicationController
      def index
        render json: '暗黒剣'
      end
    end
  end
end

# App::Controllers::Api::V1::
