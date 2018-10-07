
#tipo funcion
struct NaiveModel
	f::Function 
	end
#le pasamos una funcion
m1 = NaiveModel(x -> 2x)
#evaluamos con un valor
println(m1.f(10))
#sintaxis sobrecargada
(m::NaiveModel)(x) = m.f(x)
m1(10);println(m1(10))
#usando un modelo?
struct Model{F}
    f::F
end
(m::Model)(x) = m.f(x)
m2 = Model(x->2x);println(m2(10))
# agregar paquetes
# using Pkg
# Pkg.add("BenchmarkTools")
# using BenchmarkTools
# println( @btime m1(10))
# println( @btime m2(10))
#cargamos dnd estan los modulos
a=2
push!(LOAD_PATH, "/home/okadath/Desktop/julia")
using Models
m6=@model 2*a*x
println(m6(10))
