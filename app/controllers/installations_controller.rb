class InstallationsController < ApplicationController
  def show
  end

  def create
    @inst = Infrastructure.find(params[:infrastructure_id]).installations.find_by(fitting_id: params[:typo])
    if @inst.present?
      @inst.quantity = params[:quantity]
      @inst.running_time = params[:running_time]
      @inst.save!
    else
      @inst = Infrastructure.find(params[:infrastructure_id]).installations.create(fitting_id: params[:typo], quantity: params[:quantity], running_time: params[:running_time] )
    end
  end
end
