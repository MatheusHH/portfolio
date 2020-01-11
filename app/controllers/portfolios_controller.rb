class PortfoliosController < ApplicationController
  #before_action :load_portfolios, only: :index
 
  def index
    authorize(Portfolio)
    @portfolios = policy_scope(Portfolio)
  end
    
end