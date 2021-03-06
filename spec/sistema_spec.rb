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
        expect(@sistema.obtenerDescuento(10000)).to eq(1000)
    end
    it "deberia devolver los  impuestos adecuados" do
        @sistema= Sistema.new
        expect(@sistema.obtenerImpuesto(100,"UT")). to eq(6)
        expect(@sistema.obtenerImpuesto(100,"NV")). to eq(8)
        expect(@sistema.obtenerImpuesto(100,"TX")). to eq(6.5)
        expect(@sistema.obtenerImpuesto(100,"AL")). to eq(4)
        expect(@sistema.obtenerImpuesto(100,"CA")). to eq(3)
    end

    it "Deberia calcula el precio final" do
        @sistema= Sistema.new
        expect(@sistema.calcular_precio_final(1, 1000, "CA")). to eq(999.1)
    end
end