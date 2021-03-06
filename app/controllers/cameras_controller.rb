class CamerasController < ApplicationController
  before_action :authorize_admin

  def index
    @cameras = Camera.all.includes(:user, vendor_model: [:vendor]).decorate
  end

  def show
    @camera = Camera.find(params[:id]).decorate
  end

end
