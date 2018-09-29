using Printf
data=[];rigth=Int64[];left=Int64[]
position=0
#push!(data,2);#pop!(data)
function print_all()
	println("datos ",data);println("izquierda ",rigth);println("derecha ",left);end

function new_node(val, parent::String="", parent_pos::String="")
#if the new node is children of a existent node
#parent_pos values -> "left", "rigth" ,""
	r::Int64=0;l::Int64=0
	push!(data,val)
	push!(rigth,r)
	push!(left,l)
	if parent != ""
		#@printf "tiene padre";#lambda prinf like c
		v=findfirst(data .== parent)#println("ve es ",v)
		if parent_pos =="rigth" rigth[v]=length(data) end
		if parent_pos =="left" left[v]=length(data) end
	end
end
#length(data)
new_node("alcoholica?");#lambda para mostrar una variable
new_node("de uvas?","alcoholica?","rigth")
new_node("caliente?","alcoholica?","left")
new_node("vino","de uvas?","rigth")
new_node("poca cantidad?","de uvas?","left")
new_node("te","caliente?","rigth")
new_node("limonada","caliente?","left")
new_node("licor","poca cantidad?","rigth")
new_node("cerveza","poca cantidad?","left")
print_all()
#@show data;#lambda para mostrar una variable
#println(findfirst( x-> x=="a",data));#lambda
#println(findfirst(data .== "nodo 1"));#dot syntax
