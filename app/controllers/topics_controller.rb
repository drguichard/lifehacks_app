# frozen_string_literal: true

class TopicsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :secret, only: %i[edit update destroy]

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @tips = @topic.tips
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update(topic_params)
    flash[:success] = 'La modification est appliquée'
    redirect_to topic_path(@topic.id)
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    flash[:success] = 'Le sujet est supprimé'
    redirect_to topics_path
  end

  def create
    topic_data_user = topic_params.merge('user_id' => current_user.id)
    Topic.create!(topic_data_user)
    flash[:success] = 'Le sujet est créé'
    redirect_to new_tip_path
  end

  def new
    @topic = Topic.new
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  private

  def topic_params
    params.require(:topic).permit(:name, :domain_id)
  end

  def secret
    @topic = Topic.find(params[:id])
    @admin = User.find(@topic.user_id)
    return if @admin.id == current_user.id

    flash[:success] = "Vous n'avez pas le droit d'éditer ou supprimer le sujet car vous n'êtes pas l'auteur !"
    redirect_to tips_path
  end
end
