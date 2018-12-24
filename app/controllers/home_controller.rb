class HomeController < AuthenticatedController
  def index
    if current_user.admin?
      redirect_to admin_products_path
    elsif current_user.normal?
      redirect_to products_path
    end
  end
end
