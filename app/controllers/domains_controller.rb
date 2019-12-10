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

  def new
  end
end
