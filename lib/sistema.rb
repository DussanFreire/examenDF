class Sistema
    def obtenerDescuento(precio)
        if precio <= 3000 and precio >= 1000
            return 0.03*precio
        end
        if precio <= 1000
            return 0.03*precio
        end
        return 100
    end
    
end