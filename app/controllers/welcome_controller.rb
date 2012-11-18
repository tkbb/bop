class WelcomeController < ApplicationController
  def index
    @plan = Plan.new
  end
end
