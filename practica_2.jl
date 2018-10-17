a=["tiene_plumas","vuela"]#agenda
reglas=[["tiene_pelo","mamifero"],
	["da_leche","mamifero"],
	["tiene_plumas","ave"],
	["vuela","pone_huevo","ave"],
	["come_carne","carnivoro"],
	["dientes_afilados","garras","vista_potente","carnivoro"],
	["mamifero","pezuñas","ungulado"],
	["mamifero","rumia","ungulado"],
	["mamifero","carnivoro","color_rojizo","rayas_negras","leopardo"]]
#aqui ira una key x cada elemento arriba
inferencias = Dict()
funciones=[]
for i=1:length(reglas)
    for j=1:length(reglas[i])
		inferencias[reglas[i][j]]=false 
    end
end
# println(inferencias)
# println(get(inferencias, "tiene_pelo", 0))#get busca la key, si no return 0
function test_1()
	if inferencias["tiene_plumas"]==true inferencias["ave"]=true end
end
function test_n()
	for num_fun=1:length(reglas)
		println(num_fun)
		numero=Symbol("fun_$(num_fun)")
	    @eval a=function $numero() 
	    			if true # solo falta sustituir aqui por inferencias["tiene_plumas"]==true
	    				#de cada array, se evalua cada funcion y listo
	    				#println(reglas[$num_fun][length(reglas[$num_fun])]);
	    				inferencias[reglas[$num_fun][length(reglas[$num_fun])]]=true;
	    			end
	    		end
	end
end

		 # for k=1:(length(reglas[i])-1)
			# inferencias[$(reglas[i][k])]==true 
			# end

while length(a)!=0	
	temp=pop!(a)
	inferencias[temp]=true 
	test_1()  
	println(inferencias) 

end
test_n()
println(fun_1())
# b="maulla"
# sym=Symbol("$(b)")
# @eval z=function $sym(nombre) return true end
# println(z(0))
# println(@macroexpand @eval function $sym(nombre) return true end)

# se necesita passear demaciada info muy fumada 
# (con razon las macros son dolorosas)
# c="ladra"
# sym2=Symbol("$(c)")
# println(@macroexpand @crea_funcion "ladra")
# println(ladra(9))
# =====================================
# macro crea_funcion(nombre)
#  :( function Symbol(nombre)() return true end)
# end 
# function f(x,y)  x + y  end
# ver todas las variables
# varinfo()
# =========================================
# println(f(5,5))
# nombre=:(a[1])
# println(:($nombre))
# println(@macroexpand @crea_funcion "asd")
# @crea_funcion "asasdd"

# while length(a)!=0	
# 	temp=pop!(a)
# 	println(temp, " array ",a)
    
# end
# ============================================
# esto si jala

# julia> b="maulla"
# "maulla"
# julia> sym=Symbol("$(b)")
# :maulla
# julia> @eval z=function $sym(nombre) return true end
# maulla (generic function with 1 method)
# julia> maulla(a)
# true
# methods(maulla)
# code_lowered(faasd)
#  @eval z=function $sym(nombre) return true end
#  z(0)