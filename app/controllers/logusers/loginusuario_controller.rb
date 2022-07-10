class Logusers::LogusuariosController < ApplicationController
  def new
  end

  def create
    @loginusuario = Loginsuario.find_by("rut = :login"), { login: params[:login] }

    if loginusuario&.authenticate(params[:password])
      redirect_to empleate_path, notice: 'Sesion iniciada'
    else
      redirect_to new_loginusuario_path, alert: 'Rut o password incorrecto'
    end
    #  @user = Usuario.new(user_params)

    #  if @user.save
    #      redirect_to empleate_path, notice: 'Usuario Registrado Correctamente'
    #  else
    #      render :new, status: :unprocessable_entity
    #  end
  end

#  private

#  def loginusuario_params
#      params.require(:user).permit(:rut, :password)
#  end
end
