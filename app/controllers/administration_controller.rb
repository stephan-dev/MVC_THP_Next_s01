# frozen_string_literal: true

class AdministrationController < ApplicationController
  before_action :is_admin?
  layout "administration"

  def index
  end

  # call before every action on this controller
  def is_admin?
  # check if user is admin, if not admin then redirect  
    redirect_to root_path unless current_user.admin? 
  end
end
