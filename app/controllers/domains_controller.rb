class DomainsController < ApplicationController
  def index
      @domains = Domain.all
      @topics = Topic.all
  end

  def show
      @domain = Domain.find_by(id:params[:id])
  end

  def update
  end

  def destroy
  end

  def create
    domain_data_user = domain_params.merge({'user_id' => current_user.id})
    domain = Domain.create!(domain_data_user)
    flash[:success] = "Le domaine est créé"
    redirect_to domains_path
  end

  def new
    @domain = Domain.new
  end

private

  def domain_params
    params.require(:domain).permit(:name, :domain_id)
  end


end
