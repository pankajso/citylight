class InfrastructuresController < ApplicationController
  def index
    # @projects = Project.all
    @Infras = Infrastructure.all
    #  @project = Project.includes(tasks: :logs).first
    @infra = Infrastructure.includes(installations: :fittings).first

    # @project ||= Project.create(name: 'Demo Project')
  end

  def show
    # @project = Project.includes(tasks: :logs).find(params[:id])
    @Infras = Infrastructure.includes(installations: :fittings).find(params[:id])
  end

  def create
    # @project = Project.create(name: params[:name])
    # @projects = Project.all
  end

  def destroy
    # @deleted = Project.find(params[:id]).destroy
    # @project = Project.includes(tasks: :logs).first
    render :show
  end
end
