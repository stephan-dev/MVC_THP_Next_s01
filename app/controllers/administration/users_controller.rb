class Administration::UsersController < AdministrationController
  def index
    @users = User.all
  end

  def show
  end

  def sendpromo
  end
end
