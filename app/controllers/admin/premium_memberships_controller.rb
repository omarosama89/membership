class Admin::PremiumMembershipsController < AuthenticatedController
  before_action :has_authority?
  before_action :set_premium_membership, only: [:destroy]

  def create
    premium_membership = PremiumMembership.new(premium_membership_params)
    if premium_membership.save
      redirect_to admin_users_path
    else
      redirect_to admin_users_path
      # render
    end
  end

  def destroy
    if @premium_membership.destroy
      redirect_to admin_users_path
    else
      redirect_to admin_users_path
    end
  end

  private
  def premium_membership_params
    params.permit(:user_id)
  end

  def set_premium_membership
    @premium_membership = PremiumMembership.find(params[:id])
  end
end
