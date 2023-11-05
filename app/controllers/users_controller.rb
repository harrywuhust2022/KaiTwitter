class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    if User.exists?(params[:id])
      @user = User.find(params[:id])
      @post = @user.posts
      @review = Review.new
    else
      render file: "#{Rails.root}/public/404.html", status: :not_found, layout: false
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
    @user.email = ''
  end

  def update
    @user = User.find(params[:id])

    if params[:user][:validate_email] == @user.email
      if @user.update(user_params)
        redirect_to @user
      else
        render :edit, status: :unprocessable_entity
      end
    else 
      redirect_to edit_user_path(@user), notice: "Verification Email not pass."
    end
  end

  def verify_email
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    if params[:email] == @user.email
      @user.destroy
      redirect_to users_path
      # Redirect to a confirmation page or wherever you want
    else
      # Handle the case where the email doesn't match
      redirect_to verify_email_user_path(@user), notice: "Verification Email not pass."
    end
  end

  

  private
    def user_params
      params.require(:user).permit(:firstname, :secondname, :email)
    end

end
