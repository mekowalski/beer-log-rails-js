class CompaniesController < ApplicationController
  before_action :load_id, only: [:show, :beer, :beer_index]

  def index
    @companies = Company.all
  end

  def show
  end

  def beer
    @beer = Beer.find(params[:company_id])
    render template: 'beers/show'
  end

  def beer_style
    @beer_style = BeerStyle.find(params[:company_id])
    render template: 'beer_styles/show'
  end

  private
  def load_id
    @company = Company.find(params[:id])
  end
end
