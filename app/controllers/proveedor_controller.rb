class ProveedorController < ApplicationController
    def index
        @proveedores = Proveedor.all

        render 200, json: @proveedores        
    end


    def create
        @proveedor = Proveedor.new(proveedor_params)

        if @proveedor.save
            render :created, json: @proveedor
        else
            render :bad_request, json: @proveedor.errors

        end
    end

    protected

    def proveedor_params
        params.require(:proveedor).permit(:nombre, :direccion, :telefono)
    end
end
