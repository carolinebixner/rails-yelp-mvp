class ReviewsController < ApplicationController

  before_action :set_restaurant, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_reviews)
    @review.save
    @review.restaurant = @restaurant
    if @review.save
    redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end


  def params_reviews
    params.require(:review).permit(:content, :rating)
  end

end



