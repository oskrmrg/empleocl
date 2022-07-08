class EmpleateController < ApplicationController
  def index
    @empleos = Empleo.all
  end

  def create
    @empleo = Empleo.new(empleo_params)
    
    if @empleo.save
      redirect_to empleate_path
    else
      render :new
    end
  end
 
  def new
    @empleos = Empleo.new
  end

  def show
    @empleo = Empleo.find(params[:id])
  end

  private

  def empleo_params
    params.require(:empleo).permit(:titulo, :descripcion, :vacantes, :salario, :fecha_inic, :tipo, :ubicacion)
  end
end
