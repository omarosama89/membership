class Admin::UsersController < AuthenticatedController
  before_action :has_authority?
  before_action :set_user, only: [:show, :update]
  def index
    @users = User.all
  end

  def show
  end

  def update
    if @user.update(user_params)
      redirect_to admin_users_path
    else
      redirect_to admin_users_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:role)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
