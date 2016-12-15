class ShipsController < ApplicationController
    before_filter :authenticate_user!

	def index
		@ships = Ship.all
	end
end
