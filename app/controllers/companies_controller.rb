class CompaniesController < ApplicationController
  before_action :load_company, only: [:show, :edit, :update]

  def index
    @companies = Company.all
  end

  def show
  end

  def new
    @company = Company.new
    @company.beers.build
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path(@company)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @company.update(company_params)
      redirect_to @company
    else
      render :edit
    end
  end

  def destroy
    load_company.destroy
    redirect_to companies_path
  end

  private
  def load_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(
    :name,
    beers_attributes: [
      :name,
      :description,
      :abv,
      :location
      ]
    )
  end
end
