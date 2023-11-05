# app/controllers/posts_controller.rb
class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @user = User.find(params[:user_id])
        @post = Post.new
    end

    def create
        @user = User.find(params[:user_id])

        puts params[:post][:email]
    
        if params[:post][:email] == @user.email  # 修改这一行
            @post = @user.posts.build(post_params)
            if @post.save
                redirect_to user_path(@user), notice: 'Post was successfully created.'
            else
                render :new
            end
        else
            redirect_to new_user_post_path(@user), notice: "Email is invalid."

        end
    end
    

    private
        def post_params
            params.require(:post).permit(:body)
        end
end

