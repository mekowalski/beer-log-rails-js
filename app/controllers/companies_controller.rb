class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def beer
    @company = Company.find(params[:id])
    @beer = Beer.find(params[:company_id])
    render template: 'beers/show'
  end

  def beer_style
    @company = Company.find(params[:id])
    @beer_style = BeerStyle.find(params[:company_id])
    render template: 'beer_styles/show'
  end

end
