class RegistrantController < ApplicationController

	def new
		registrant = Registrant.create
	end

end
