using Printf
data=[]
H=Int64[]
D=Int64[]
path=Int64[]
sol=Int64[]
l=0.0

#push!(data,2);#pop!(data)
function print_all() println("datos",data, " \n H ",H ,"\n D ",D) end

function print_grafo() 
	long=length(data)
	i=1
	izq=H[i]
	der=D[i]
	depth=1
	for i = 1:long
           println(data[i])
           print(H[i])
           print(D[i])
       end
    end
function es_hijo()
end


function busqueda_amplitud(texto)
	push!(sol,1)#inicializa
	position=1
	while data[position]!=texto
		if rigth[position]!=0 push!(sol,rigth[position]) end
		if left[position]!=0 push!(sol,left[position]) end
		position+=1
	end	
	println("hallado,", texto , " pos=",position)
	push!(path,position)
	#ya sabemos donde esta, vamos de atras para adelante
	while position!=1
		findfirst(rigth .== position)!=nothing ?
			push!(path,findfirst(rigth .== position)) : 
			push!(path,findfirst(left .== position))
		position=path[length(path)] 
	end
	println(reverse(path))#for i=1:length(path) println(data[path[i]]) end
end


function new_node(val, parent::String="", parent_pos::String="")
	#if the new node is children of a existent node
	#parent_pos values -> "D", "H" ,""
	r::Int64=0;l::Int64=0
	push!(data,val)
	push!(H,r)
	push!(D,l)
	if parent != ""
		#@printf "tiene padre";#lambda prinf like c
		v=findfirst(data .== parent)#println("ve es ",v)
		if parent_pos =="H" H[v]=length(data) end
		if parent_pos =="D" D[v]=length(data) end
	end
end


new_node("H1");#lambda para mostrar una variable
new_node("H1","H1","H")
new_node("H1","H1","D")
print_all()
#@show data;#lambda para mostrar una variable
#println(findfirst( x-> x=="a",data));#lambda
#println(findfirst(data .== "nodo 1"));#dot synt
print_grafo()
