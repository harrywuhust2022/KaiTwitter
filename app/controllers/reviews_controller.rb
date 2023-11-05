class ReviewsController < ApplicationController

    def create
        @user = User.find(params[:user_id])
        @post = @user.posts.find(params[:post_id])
        @review = @post.reviews.create(review_params)
        redirect_to user_path(@user), notice: 'Review was successfully created.'


      
    end
    
    private
        def review_params
          params.require(:review).permit(:body)
        end
end
