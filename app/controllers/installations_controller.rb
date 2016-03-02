class InstallationsController < ApplicationController
  def show
  end

  def create
    @inst = Infrastructure.find(params[:infrastructure_id]).installations.create(fitting_id: params[:typo], quantity: params[:quantity], running_time: params[:running_time] )
    # @installations = Infrastructure.find(params[:infrastructure_id]).installations
  end
end
