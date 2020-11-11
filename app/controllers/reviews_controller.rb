class ReviewsController < ApplicationController

  # def new
  #   set_restaurant
  #   @review = Review.new
  # end

  def create
    set_restaurant
    @review = Review.new(params_review)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_review
    @restaurant = Review.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def params_review
    params.require(:review).permit(:rating, :content)
  end

end
