class GamesController < ApplicationController
    def index
        @games = Game.all
        if params[:query].present?
          @results = PgSearch.multisearch(params[:query])
        else
          @results = Game.all
        end
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
