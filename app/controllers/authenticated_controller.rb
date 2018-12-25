class AuthenticatedController < ApplicationController
  before_action :authenticate_user!
  layout 'authenticated'

  def has_authority?
    redirect_to '/401' unless current_user.role == 'admin'
  end
end
