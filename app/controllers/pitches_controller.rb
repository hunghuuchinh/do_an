class PitchesController < ApplicationController
	  before_action :logged_in_user

	def index
		@pitches = @search.result
	end

	def show
		@pitch = Pitch.find params[:id]
	end

	def new
		@pitch = Pitch.new
	end
	def create
		@pitch = current_user.build_pitch(pitch_params)
	    if @pitch.save
      	    flash[:success] = "pitch created"
        	redirect_to root_url
	    else
	     render 'new'
	    end
	end
	def edit
		
	end

	def destroy
		
	end

	 private

    def pitch_params
      params.require(:pitch).permit(:name, :sell_water, :address, :quantity,:rent_shoes,:rent_kit,:county,:cost, :lat, :lng)
    end
end
