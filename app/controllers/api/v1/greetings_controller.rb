# frozen_string_literal: true

module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        @greetings = Greeting.all
        respond_to do |format|
          format.json { render json: @greetings }
          format.html { render json: @greetings }
        end
      end

      def random_greeting
        random_number = rand(Greeting.count)
        @greeting = Greeting.all[random_number].text
        respond_to do |format|
          format.json { render json: @greeting }
          format.html { render json: @greeting }
        end
      end
    end
  end
end
