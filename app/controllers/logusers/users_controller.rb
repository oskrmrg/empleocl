class Logusers::UsersController < ApplicationController
  def new
    @user = Usuario.new
  end

  def create
    @user = Usuario.new(user_params)

    if @user.save
      redirect_to empleate_path, notice: 'Usuario Registrado Correctamente'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:rut, :nombre, :fecha_nac, :sexo, :telefono, :email, :password)
  end
end
