class UniversesController < ApplicationController
    before_action :set_universe, only: [:show, :edit, :update, :destroy]

    def new
        @universe = Universe.new
    end
  
    def index
        @universes = Universe.paginate(page: params[:page], per_page: 5)
    end
  
    def show
        @universe = Universe.find(params[:id])
    end


    private
    def set_universe
        @universe = Universe.find(params[:id])
    end

    def universe_params
        params.require(:universe).permit(:name)
    end
  end 