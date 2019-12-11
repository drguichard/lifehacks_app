class DashboardController < ApplicationController
  before_action :secret, only: [:edit, :update, :destroy]

  def edit
  end

  def update
  end

  def show
  	  @user = current_user
  	  @tips = @user.tips
  end

  def delete
  end

   


 private

 # def user_params
 #   params.require(:user).permit(:user_id)
 # end
#
  def secret
    @tip = Tip.find(params[:id])
    @admin = User.find(@tip.user_id)
      unless @admin.id == current_user.id
        flash[:success] = "Vous n'avez pas le droit d'éditer ou supprimer le sujet car vous n'êtes pas l'auteur !"
        redirect_to tips_path
      end
  end

end
