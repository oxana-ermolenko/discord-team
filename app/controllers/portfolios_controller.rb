class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def show
    
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      flash[:notice] = "You have successfully create a portfolio"
      redirect_to portfolios_path
    else
      render 'new'
    end
  end

  def edit
    redirect_to portfolios_path
  end

  def update
    if @portfolio.update(portfolio_params)
      flash[:notice] ="You have seccessfully updated your portfolio"
      redirect_to @portfolio
    else
      render 'edit'
    end
  end

  def destroy
    @portfolio.destroy
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:name, :description)
  end

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end