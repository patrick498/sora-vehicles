class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @vehicles = Vehicle.all[0..2]
  end
end
