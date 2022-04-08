class SuperheroesController < ApplicationController
    before_action :set_superhero, only: [:show, :edit, :update, :destroy]

    def show
    end

    def index
        @superheroes = Superhero.paginate(page: params[:page], per_page: 12)
    end


    def new 
        @superhero = Superhero.new
    end

    def edit

    end

    def create
        @superhero = Superhero.new(superhero_params)
        @superhero.user = current_user
        if @superhero.save
            flash[:notice] = "Superhero was created successfully"
            redirect_to superheroes_path
        else
            render 'new'
        end
    end

    def update
        if @superhero.update(superhero_params)
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


    private
    def set_superhero
        @superhero = Superhero.find(params[:id])
    end

    def superhero_params
        params.require(:superhero).permit(:name, :full_name, :place_of_birth, :image, :gender, :height, :weight, :intelligence, :strength, :speed, :power, category_ids:[])
    end
end