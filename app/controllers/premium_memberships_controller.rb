class PremiumMembershipsController < AuthenticatedController
  def create
    premium_membership = PremiumMembership.new(user: current_user)
    if premium_membership.save
      redirect_to products_path
    else
      redirect_to products_path
      # render
    end
  end
end
