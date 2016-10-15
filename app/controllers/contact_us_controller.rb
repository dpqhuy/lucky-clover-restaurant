class ContactUsController < ApplicationController
  def index
  	@restaurant = Restaurant.first
  end
end
