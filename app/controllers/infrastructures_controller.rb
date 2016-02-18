class InfrastructuresController < ApplicationController
  def index
    @infras = Infrastructure.all
    @infra = Infrastructure.includes(installations: :fitting).first
  end

  def show
    @Infras = Infrastructure.includes(installations: :fitting).find(params[:id])
  end

  def create
    @Infra = Infrastructure.create(area: params[:area])
    @Infras = Infrastructure.all
  end

  def destroy
    @deleted = Infrastructure.find(params[:id]).destroy
    @infra = Infrastructure.includes(installations: :fitting).first

    render :show
  end
end
