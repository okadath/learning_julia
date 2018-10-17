macro crea_funcion(nombre)
 :( function Symbol(nombre)() return true end)
end 


function f(x,y)
           x + y 
end
#ver todas las variables
#varinfo()
a=["tiene-plumas","vuela"]#agenda
#estas son las ya inferidas
reglas=["tiene_pelo⇾ mamifero",
	"da_leche⟶mamifero","tiene_plumas⟶ave",
	"vuela⋀pone_huevo⟶ave","come_carne⇾carnivoro",
	"dientes_afilados⋀garras⋀vista_potente⇾carnivoro",
	"mamifero⋀pezuñas⇾ungulado","mamifero⋀rumia⇾ungulado",
	"mamifero⋀carnivoro⋀color_rojizo⋀rayas_negras⇾leopardo",
	""

]#reglas a leer
inferencias = Dict("tiene plumas" => false, "vuela" => false, "c" =>false)
i=1
println(reglas[4])


b="maulla"
sym=Symbol("$(b)")
@eval function $sym(nombre) return true end
println(maulla(0))
println(@macroexpand @eval z=function $sym(nombre) return true end)
# se necesita passear demaciada info muy fumada 
# (con razon las macros son dolorosas)
# c="ladra"
# sym2=Symbol("$(c)")
# println(@macroexpand @crea_funcion "ladra")
# println(ladra(9))


# println(f(5,5))
# nombre=:(a[1])
# println(:($nombre))
# println(@macroexpand @crea_funcion "asd")
# @crea_funcion "asasdd"

# println(f(5,5))

# while length(a)!=0	
# 	temp=pop!(a)
# 	println(temp, " array ",a)
    
# end


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
 # @eval z=function $sym(nombre) return true end
 #z(0)

