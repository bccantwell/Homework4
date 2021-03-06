class ReviewsController < ApplicationController
  before_action :has_moviegoer_and_movie, :only => [:new, :create]
  
  def has_moviegoer_and_movie
    unless @current_user
      flash[:warning] = 'You must be logged in to create a review.'
      redirect_to '/auth/google_oauth2'
    end
    unless (@movie = Movie.find_by_id(params[:movie_id]))
      flash[:warning] = 'Review must be for an existing movie.'
      redirect_to movies_path
    end
  end
  

  
  def new
    @review = @movie.reviews.build
  end

  def create
    @current_user.reviews << @movie.reviews.build(review_params)
    redirect_to movie_path(@movie)
  end
  
  
  
  
  def review_params
    params.permit(review: [:potatoes, :comments])[:review]
  end
end
