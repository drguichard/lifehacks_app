class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update(topic.params)
    redirect_to topics_path
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path
  end

  def create
    topic_data_user = topic_params.merge({'user_id' => current_user.id})
    topic = Topic.create(topic_data_user)
    redirect_to topic_path(topic.id)
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
end
