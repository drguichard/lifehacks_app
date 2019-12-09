class TipsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :set_tip_params, only: [:edit, :update, :create, :destroy]


  def index
  	@tips = Tip.all
  end

  def show
  	@tip = Tip.find_by(id:params[:id])
  end

  def edit
  end

  def update
    @tip.update(tip_params)
    redirect_to tip_path(@tip.id)
  end

  def new
    @tip = Tip.new
  end

  def create
    tip_data_user = tip_params.merge({'user_id' => current_user.id})
    tip = Tip.create(tip_data_user)
    redirect_to tip_path(tip.id)
  end

  def destroy
    @tip.destroy
    redirect_to tips_path
  end

  private

  def tip_params
    params.require(:tip).permit(:name, :content, :photo, :topic_id)
  end

  def set_tip_params
    @tip = Tip.find(params[:id])
  end 

  #def authenticate_loggued_user
  #  if (current_user.id != params[:id].to_i) then
  #    puts flash[:danger] = "mauvais profil"
  #    #redirect_to root_path
  #  end 
  #end

end
