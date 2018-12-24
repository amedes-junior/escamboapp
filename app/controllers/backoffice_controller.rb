class BackofficeController < ApplicationController
  layout 'backoffice'
  before_action :authenticate_admin!

  def pundit_user
    current_admin #Current Pundit User
  end

end
