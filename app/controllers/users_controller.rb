class UsersController < ApplicationController
  def index
    @users=User.all
  end
  def new
    @user=User.new
  end
  def create
    @users=User.new(users_param)
    if @users.save
      redirect_to users_url
    else
      render "index"
    end
  end
  private
  def users_param
    params.require(:user).permit(:designation,:company,:working_since,:location,:notice,:months)
  end
end
