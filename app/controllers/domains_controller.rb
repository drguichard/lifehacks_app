# frozen_string_literal: true

class DomainsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :secret, only: %i[edit update destroy]

  def index
    @domains = Domain.all
    @topics = Topic.all
  end

  def show
    @domain = Domain.find_by(id: params[:id])
    @topics = @domain.topics
  end

  def update; end

  def destroy
    @domain = Domain.find(params[:id])
    @domain.destroy
    flash[:success] = 'Le domaine est supprimé'
    redirect_to domains_path
  end

  def create
    domain_data_user = domain_params.merge('user_id' => current_user.id)
    Domain.create!(domain_data_user)
    flash[:success] = 'Le domaine est créé'
    redirect_to new_topic_path
  end

  def new
    @domain = Domain.new
  end

  def edit
    @domain = Domain.find(params[:id])
  end

  private

  def domain_params
    params.require(:domain).permit(:name, :photo, :image)
  end

  def secret
    @domain = Domain.find(params[:id])
    @admin = User.find(@domain.user_id)
    return if @admin.id == current_user.id

    flash[:success] = "Vous n'avez pas le droit d'éditer ou supprimer le domaine car vous n'en êtes pas administrateur."
    redirect_to domains_path
  end
end
