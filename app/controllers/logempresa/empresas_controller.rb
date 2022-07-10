class Logempresa::EmpresasController < ApplicationController
    def new
        @empresa = Empresa.new
    end

    def create
        @empresa = Empresa.new(empresa_params)

        if @empresa.save
            redirect_to empleate_path, notice: 'Empresa Registrada Correctamente'
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def empresa_params
        params.require(:empresa).permit(:razon_social, :rut, :representante, :direccion, :email, :telefono, :password)
    end
end