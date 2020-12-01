require 'sistema'


RSpec.describe Sistema do
    it "deberia devolver 3 por que el precio es 100 y el descuento 3%" do
        @sistema= Sistema.new
        expect(@sistema.obtenerDescuento(100)).to eq(3)
    end
    it "deberia devolver 60 por que el precio es 2000    y el descuento 5%" do
        @sistema= Sistema.new
        expect(@sistema.obtenerDescuento(2000)).to eq(60)
    end
end