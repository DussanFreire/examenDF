require 'sistema'


RSpec.describe Sistema do
    it "deberia devolver 97 por que el precio es 100 y el descuento 3%" do
        @sistema= Sistema.new
        expect(@sistema.obtenerDescuento(100)).to eq(97)
    end
end