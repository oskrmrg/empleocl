class EmpleateController < ApplicationController
  def index
    @empleos = Empleo.all
  end

  def create
    @empleo = Empleo.new(empleo_params)
    
    if @empleo.save
      redirect_to empleate_path, notice: "Vacante añadida correctamente"
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

  def edit
    @empleo = Empleo.find(params[:id])
  end

  def update
    @empleo = Empleo.find(params[:id])

    if @empleo.update(empleo_params)
      redirect_to empleate_path, notice: "Vacante actualizada"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @empleo = Empleo.find(params[:id])
    @empleo.destroy

    redirect_to empleate_path, notice: 'Vacante eliminada exitosamente', status: :see_other
  end

    private

  def empleo_params
    params.require(:empleo).permit(:titulo, :descripcion, :vacantes, :salario, :fecha_inic, :tipo, :ubicacion)
  end
end
