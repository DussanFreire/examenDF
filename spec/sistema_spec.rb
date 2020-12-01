require 'sistema'


RSpec.describe Sistema do
    it "deberia devolver 3 por que el precio es 100 y el descuento 3%" do
        @sistema= Sistema.new
        expect(@sistema.obtenerDescuento(1000)).to eq(30)
    end
    it "deberia devolver los  descuentos adecuados" do
        @sistema= Sistema.new
        expect(@sistema.obtenerDescuento(2000)).to eq(60)
        expect(@sistema.obtenerDescuento(3000)).to eq(150)
        #expect(@sistema.obtenerDescuento(4000)).to eq(60)
    end
   
end