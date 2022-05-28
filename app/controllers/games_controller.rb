class GamesController < ApplicationController
    def index
        @games = Game.all
    end
    
    def show
        @game = Game.find(params[:id])
    end

    def new
        @game = Game.new
    end

    def create
        @game = Game.new(game_params)
        if @game.save
            redirect_to game_path(@game)
        else
            render :new
        end
    end

end
