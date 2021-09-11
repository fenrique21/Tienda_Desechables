class FacturavsController < ApplicationController

    def incex
        @facturasvs = Facturav.all
        
        render 200, json: @facturasvs
    end
end
