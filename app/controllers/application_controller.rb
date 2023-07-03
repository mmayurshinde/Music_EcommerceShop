class ApplicationController < ActionController::Base
	# def index
	# 	@instruments = Instrument.all
	# end
	protect_from_forgery with: :exception
	include CurrentCart
	before_action :set_cart
end
