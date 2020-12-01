class Sistema
    def obtenerDescuento(precio)
        if precio < 3000 and precio >= 1000
            return 0.03*precio
        end
        if precio >= 3000 and precio < 7000
            return 0.05*precio
        end
        if precio >= 7000 and precio < 10000
            return 0.07*precio
        end
        if precio >= 10000 and precio < 30000
            return 0.1*precio
        end
        if precio >= 30000 
            return 0.15*precio
        end
        
        return 100
    end
    
end