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
  def edit
     @user = User.find_by(id: params[:id])
  end
  def update
    @user = User.find_by(id: params[:id])

    if @user.update(users_param)
      redirect_to users_path
    else
      render "edit"
    end
  end
  def destroy
    @user=User.find_by(id: params[:id])
    if @user.destroy
      redirect_to users_url
    end
  end
  private
  def users_param
    params.require(:user).permit(:designation,:company,:working_since,:location,:notice,:months)
  end
end
