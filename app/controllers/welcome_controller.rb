class WelcomeController < ApplicationController
before_action :authenticate_user!
  def index  	
  end
  def addtest
  	render layout:false
  end
end
