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
    def obtenerImpuesto(num,ciudad)
        if ciudad=="UT"
            return num*0.06
        end
        if ciudad=="NV"
            return num*0.08
        end
        if ciudad=="TX"
            return num*0.065
        end
        if ciudad=="AL"
            return num*0.04
        end
        if ciudad=="CA"
            return num*0.03
        end
    end
    def calcular_precio_final(cantidad_items, precio_unitario, estado)
        precio=cantidad_items*precio_unitario 
        precio = precio -obtenerDescuento(precio)
        precio =precio +obtenerImpuesto(precio,estado)
        return precio
    end
end