class SuperheroesController < ApplicationController
    before_action :set_superhero, only: [:show]

    def index
        @superheroes = Superhero.all
    end

    def new 
        @superheroes = Superhero.new
    end

    def edit
    end

    def create
        @superhero = Superhero.new(superhero_params)
        @superhero.user = user.first
        if @superhero.save
            flash[:notice] = "Superhero was created successfully"
            redirect_to @superhero
        else
            render 'new'
        end
    end

    def update
        if @superhero.update(article_params)
            flash[:notice] = "Superhero was updated successfully"
            redirect_to @superhero
        else
            render 'edit'
        end
    end

    def destroy
        @superhero.destroy
        redirect_to supheroes_path
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