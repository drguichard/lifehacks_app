# frozen_string_literal: true

class TipsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :secret, only: %i[edit update destroy]

  def index
    @tips = Tip.all
  end

  def show
    @tip = Tip.find_by(id: params[:id])
  end

  def edit
    @tip = Tip.find(params[:id])
  end

  def update
    @tip = Tip.find(params[:id])
    @tip.update(tip_params)
    flash[:success] = 'La modification est appliquée'
    redirect_to tip_path(@tip.id)
  end

  def new
    @tip = Tip.new
  end

  def create
    tip_data_user = tip_params.merge('user_id' => current_user.id)
    tip = Tip.create(tip_data_user)
    flash[:success] = "C'est enregistré et bientôt en ligne après un passage en modération"
    redirect_to tip_path(tip.id)
  end

  def destroy
    @tip = Tip.find(params[:id])
    @tip.destroy
    flash[:success] = 'Lifehack supprimé'
    redirect_to tips_path
  end

  private

  def tip_params
    params.require(:tip).permit(:name, :content, :photo, :topic_id)
  end

  def secret
    @tip = Tip.find(params[:id])
    @admin = User.find(@tip.user_id)
    return if @admin.id == current_user.id

    flash[:success] = "Vous n'avez pas le droit d'éditer ou supprimer le life hack car vous n'êtes pas l'auteur !"
    redirect_to tips_path
  end
end
