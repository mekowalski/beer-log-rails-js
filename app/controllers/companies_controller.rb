class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def beers_index
    @company = Company.find(params[:id])
    @beers = @company.beers
    render template: 'beers/index'
    # do i need to call this in routes?
  end

  def beer
    @company = Company.find(params[:id])
    @beer = Beer.find(params[:company_id])
    render template: 'beers/show'
  end

end
