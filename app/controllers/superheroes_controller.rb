class SuperheroesController < ApplicationController
    before_action :set_superhero, only: [:show]

    def index
        @superheroes = Superhero.all
    end

    def show
    end

    private
    def set_superhero
        @superhero = Superhero.find(params[:id])
    end

    def superhero_params
        params.require(:superhero).permit(:name)
    end
end