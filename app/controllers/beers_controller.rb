class BeersController < ApplicationController

  def about
    render 'about'
  end

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
  end

  def create
    @beer = Beer.new(beer_params)
    @beer.save

    redirect_to beers_path(@beer)
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])
    @beer.update(beer_params)

    redirect_to beer_path(@beer)
  end

  private
  def beer_params
    params.require(:beer).permit(:name, :description, :abv, :location)
  end

end
#
# def create
#   @post = Post.new(params.require(:post).permit(:title, :description))
#   @post.save
#   redirect_to post_path(@post)
# end
#
# def update
#   @post = Post.find(params[:id])
#   @post.update(params.require(:post).permit(:title))
#   redirect_to post_path(@post)
# end
