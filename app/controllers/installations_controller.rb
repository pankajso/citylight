class InstallationsController < ApplicationController
  def show
  end

  def create
    @inst = Infrastructure.find(params[:infrastructure_id]).installations.create(name: params[:name])
  end
end
