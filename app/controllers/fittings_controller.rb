class FittingsController < ApplicationController
  def create
    @fitting = Infrastructure.find(params[:infrastructure_id]).fittings.create(typo: params[:typo])
  end

  def destroy
    # @fitting = fitting.find(params[:id])
    # @fitting.destroy
  end
end
