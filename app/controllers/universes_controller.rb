class UniversesController < ApplicationController
    
    def index
        @universes = Universe.paginate(page: params[:page], per_page: 5)
    end
  
    def show
        @universe = Universe.find(params[:id])
    end
    

end