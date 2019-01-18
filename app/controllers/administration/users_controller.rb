class Administration::UsersController < AdministrationController
  def index
    @users = User.all
  end

  def show
  end

  def sendpromo
    User.find(params[:format]).sendthepromo
  end
end
