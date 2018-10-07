#jugando con macros
println("the sine of 1 is $(sin(1))")
println( :( x ) )#variable
println( :( $(sin(1)) ) )#evalua
# a=1;ex = :($a + b);println(ex)#se tarda mucho evaluando
macro dotimes(n, body)
   return :(for i = 1:$(esc(n))
           $(esc(body))
       end)
end
@dotimes 4 println("n")
##evalua lo que saca la macro
# println(@macroexpand @dotimes 4 println("n"))

macro sayhello()
	return :(println("Hello, world!"))
end
@sayhello()#es mas rapido con macros

# macro sayhello(name)
#    return :( println("Hello, ", $name) )
# end
# a=:(@sayhello "sadsa")
# println(typeof(a))
# @sayhello 
# #se puede guardar en cadena
# a= @macroexpand @dotimes 4 println("n")
# show(a)
# #e imprimirse
# eval(a)
# println(typeof(a))
macro anida(a)
	return :(push!($(esc(a)),a))
end
a=[]
@anida a
@anida a
@show a