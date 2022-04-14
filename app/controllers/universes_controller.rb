class UniversesController < ApplicationController
    before_action :require_admin, except: [:index, :show]

    def new
        @universe = Universe.new
    end

    def create
        @universe = Universe.new(universe_params)
        if @universe.save 
            flash[:notice] = "Universe was successfully created"
            redirect_to @universe
        else
            render 'new'
        end
    end
  
    def index
        @Universes = Universe.paginate(page: params[:page], per_page: 5)
    end
  
    def show
        @universe = Universe.find(params[:id])
    end

    def require_admin
        if !(logged_in? && current_user.admin?)
          flash[:alert] = "Only admins can perform that action"
          redirect_to universes_path
        end
      end

    private 

    def universe_params
        params.require(:universe).permit(:name)
    end
  end 