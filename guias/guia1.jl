### A Pluto.jl notebook ###
# v0.14.2

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 161ba131-c7c4-41f4-bdc8-25e9346f0f4f
using SyS

# ╔═╡ 4a1f5e34-9d79-11eb-0204-4147c85d5542
md"""
# Guia 1
"""

# ╔═╡ 98d531d9-9f69-4d92-9cd6-fdb7a3e8812b
md"""
## Ejercicio 1
"""

# ╔═╡ 1f09c24c-c561-40ca-bf33-6126ef706ddd
a = n -> (-2 * δ(n+2))

# ╔═╡ 828395b3-8ebb-4364-860b-14ab5251b9a8
stem(-4:4, a.(-4:4))

# ╔═╡ ea1cad98-b153-4a7b-8719-3c87672ed11d
b = n -> (2.0^n) * u(n)

# ╔═╡ 76ae61be-4408-4c18-b7a2-f9aa686e0b50
stem(-3:3, b.(-3:3))

# ╔═╡ ad892276-b7a0-41d4-9d48-3bb2eaae7623
c = n -> (2.0^-n) * u(n)

# ╔═╡ d594fd12-dd16-445d-902f-04f0921085fd
stem(-3:3, c.(-3:3))

# ╔═╡ dc71c8fd-89a7-45c5-b06d-d95c95b2376c
d = n -> (2.0^-n) * u(-n)

# ╔═╡ 353414e4-2280-4da3-ad6b-76a4d7c84a7f
stem(-4:4, d.(-4:4))

# ╔═╡ d3b71a68-412f-4376-a0c1-f31f30eaee6d
e = n -> cos(π*n / 3) * u(n-2)

# ╔═╡ 751ea78c-f7b6-465d-8d66-2bc4be3a825f
stem(0:11, d.(0:11))

# ╔═╡ f9fa0060-43a6-412e-8468-3dd3006dcc14
md"""
## Ejercicio 2
"""

# ╔═╡ 440ebdd0-5b1f-4faa-8c24-ca0cf21d5dd4
# a
sum(n -> exp(im* n * π/2), 0:9)

# ╔═╡ 3d60652c-bd45-4b4d-aa5b-72c9f9670a60
# b
sum(n -> exp(im* n * π/2), -2:7)

# ╔═╡ 35959a94-b547-4b9b-8731-1af44aaeb2c0
# c
sum(n -> (0.5^n) * exp(im* n * π/2), 0:9)

# ╔═╡ ae7086d7-65fb-4f1a-bb2a-967b119fe966
# d
sum(n -> cos(n * π/2), 0:9)

# ╔═╡ 8dbfcccc-9094-4247-b765-6b0627d014ee
md"""
## Ejercicio 3
"""

# ╔═╡ 45e5c686-d3c8-4c4f-aab2-66a43d2c0563
md"""
a3 = $(@bind a3 Slider(-0.5:0.5:2; show_value=true, default=2))
"""

# ╔═╡ 835cb21d-fd3c-4892-ba0a-5500f424a79e
y = n -> sum(N -> a3^N, 0:n) * u(n)

# ╔═╡ f71f6ff0-0911-4593-a5f9-6528fecf7733
# a
y(3)

# ╔═╡ e9fc1dce-4353-499d-b67f-ea1b5e732afe
# b
 y(2000)

# ╔═╡ 483435d8-59d4-4c28-b4db-5da1ed3cfbe9
# c (TODO: Arreglar bug con Inf)
y(Inf)

# ╔═╡ 4700a652-7ab9-41e5-b96a-008319550361
# d -> Mover slider

# ╔═╡ 2af44b15-8cdd-468a-80f8-9d06118947ac
# e -> Mover slider (TODO: Arreglar bug con Inf)

# ╔═╡ 080cac50-0604-48c7-a6b2-779fa9ca7eb4
md"""
## Ejercicio 4
"""

# ╔═╡ 49f3371a-cfe7-49d2-b15e-4bd41a99bcef
md"""
A = $(@bind A Slider(0:10; show_value=true, default=1))

N = $(@bind N Slider(1:100; show_value=true, default=2))
"""

# ╔═╡ cc94a15b-b0d8-475c-ad61-503f89ee133e
x4 = n -> A*(u(n)*u(N - n)) #MAAAAAL

# ╔═╡ 464b36f6-5ca2-44b5-b27d-e84ea48a3d44
function pulso(n) #MAAAAL
	k = (N * round(n/N))+1
	println(k)
	n%N == 0 && return A
	return -A
end

# ╔═╡ 580f2224-c54b-445c-bb38-422fe045b8f5
pulso(0)

# ╔═╡ 33f47f8f-4722-45b2-9b27-c3ff9ef4975e
stem(-2*N:2*N, pulso.(-2*N:2*N))

# ╔═╡ 9845d730-1422-48b3-ac29-c461cecfcd3e
md"""
## Ejercicio 5
"""

# ╔═╡ 3a7a6e2e-f555-4464-b074-d6cf0b2d9e8b
function xn(n)
	n < 10 && return 1
	n >= 10 && n < 20 && return 2-(n/10)
	return 0
end

# ╔═╡ fa4dd6fa-0f3f-48c4-b31c-16bb82b1354f
stem(0:25, xn.(0:25))

# ╔═╡ fea913be-9771-4d70-a7bf-a678bc18824e
# a
let
	a = n -> xn(3 * n / 2 + 1)
	stem(0:25, a.(0:25))
end

# ╔═╡ 9da46f08-9d01-4730-9710-b0fb83ae8bee
# b
let
	b = n -> xn((-2*n)-1) 
	stem(0:25, b.(0:25))
end

# ╔═╡ ecebe642-b296-416f-a598-edbcf1951e3c
# c
let
	c = n -> xn(n*0.5 - 0.5)
	stem(0:25, c.(0:25))
end

# ╔═╡ 60b7346c-a0ab-4c95-9180-62f1d15dfb5e
md"""
## Ejercicio 6
"""

# ╔═╡ c27c07ce-fb7a-46f7-9a89-698025d68ffa
function xn8(n)
	(n >= 4 || n <= -3) && return 0
	n >= -2 && n <= 0 && return n + 3
	n >=1 && n <=2 && return 2
	return -n + 4
end

# ╔═╡ 96d90520-3145-4c27-a821-3fe9fd9a3e59
stem(-8:8, xn8.(-8:8))

# ╔═╡ b4c91ffd-a1dc-42b6-bbfb-e3026ff48846
# a
let
	a = n -> xn8(n) * u(2-n)
	stem(-8:8, a.(-8:8))
end

# ╔═╡ 7ea80b1e-cecd-49e8-9e6c-a56903595d46
# b
let
	b = n -> xn8(n-1)*δ(n-3) 
	stem(-8:8, b.(-8:8))
end

# ╔═╡ 049b6a08-a092-4d9d-ae9b-d222f83930d4
# c
let
	c = n -> 0.5*xn8(n) + (0.5 * (-1)^n * xn8(n))
	stem(-8:8, c.(-8:8))
end

# ╔═╡ 8ea741f6-8e40-4938-b37d-bffeeb95d453
md"""
## Ejercicio 8
"""

# ╔═╡ 8a861826-54d1-4cbe-bb51-97f868c779b8
x8 = t -> sin(t)

# ╔═╡ fbe7ac93-523e-448b-86da-abaa603fa4ef
plot(x8, -10 ,10)

# ╔═╡ d4bea7f8-2a4c-4d39-ad08-e1f8691a7dd0
y1 = t -> x8(2*t)

# ╔═╡ 149ae5ce-ff1f-4e3d-956b-97a448649fdc
plot(y1, -10, 10)

# ╔═╡ 70de9113-2c54-4dfe-8bce-8799246cc3f5
y2 = t -> x8(t/2)

# ╔═╡ 77b1d0cc-fcae-4cc4-90d3-614b4207e069
plot(y2, -20, 20)

# ╔═╡ edf7f2e1-69b8-4b9f-9628-977e531400fb
md"""
a. Si x8 es periodica -> y1 es periodica. **Verdadero**. Probar con x8 = sin(t)

b. Si y1 es periodica -> x8 es periodica. **Verdadero?**

y1(t) = y1(t + T) por ser periodica

y1(t) = x8(2t) por def

y1(t + T) = x8(2t + 2T) por def

x8(2t) = x8(2t + 2T) -> x8 es periodica con periodo 2T


c. Si x8 es periodica -> y2 es periodica. **Verdadero**. Probar con x8 = sin(t)

d. Si y2 es periodica -> x8 es periodica. **Verdadero?**

y2(t) = y2(t + T) por ser periodica

y2(t) = x8(t/2) por def

y1(t + T) = x8(t/2 + T/2) por def

x8(t/2) = x8(t/2 + T/2) -> x8 es periodica con periodo T/2

"""

# ╔═╡ 479ccac4-e3b2-4467-b8b6-6306673b41ad


# ╔═╡ Cell order:
# ╠═161ba131-c7c4-41f4-bdc8-25e9346f0f4f
# ╟─4a1f5e34-9d79-11eb-0204-4147c85d5542
# ╟─98d531d9-9f69-4d92-9cd6-fdb7a3e8812b
# ╠═1f09c24c-c561-40ca-bf33-6126ef706ddd
# ╠═828395b3-8ebb-4364-860b-14ab5251b9a8
# ╠═ea1cad98-b153-4a7b-8719-3c87672ed11d
# ╠═76ae61be-4408-4c18-b7a2-f9aa686e0b50
# ╠═ad892276-b7a0-41d4-9d48-3bb2eaae7623
# ╠═d594fd12-dd16-445d-902f-04f0921085fd
# ╠═dc71c8fd-89a7-45c5-b06d-d95c95b2376c
# ╠═353414e4-2280-4da3-ad6b-76a4d7c84a7f
# ╠═d3b71a68-412f-4376-a0c1-f31f30eaee6d
# ╠═751ea78c-f7b6-465d-8d66-2bc4be3a825f
# ╟─f9fa0060-43a6-412e-8468-3dd3006dcc14
# ╠═440ebdd0-5b1f-4faa-8c24-ca0cf21d5dd4
# ╠═3d60652c-bd45-4b4d-aa5b-72c9f9670a60
# ╠═35959a94-b547-4b9b-8731-1af44aaeb2c0
# ╠═ae7086d7-65fb-4f1a-bb2a-967b119fe966
# ╟─8dbfcccc-9094-4247-b765-6b0627d014ee
# ╠═45e5c686-d3c8-4c4f-aab2-66a43d2c0563
# ╠═835cb21d-fd3c-4892-ba0a-5500f424a79e
# ╠═f71f6ff0-0911-4593-a5f9-6528fecf7733
# ╠═e9fc1dce-4353-499d-b67f-ea1b5e732afe
# ╠═483435d8-59d4-4c28-b4db-5da1ed3cfbe9
# ╠═4700a652-7ab9-41e5-b96a-008319550361
# ╠═2af44b15-8cdd-468a-80f8-9d06118947ac
# ╠═080cac50-0604-48c7-a6b2-779fa9ca7eb4
# ╠═49f3371a-cfe7-49d2-b15e-4bd41a99bcef
# ╠═cc94a15b-b0d8-475c-ad61-503f89ee133e
# ╠═464b36f6-5ca2-44b5-b27d-e84ea48a3d44
# ╠═580f2224-c54b-445c-bb38-422fe045b8f5
# ╠═33f47f8f-4722-45b2-9b27-c3ff9ef4975e
# ╠═9845d730-1422-48b3-ac29-c461cecfcd3e
# ╠═3a7a6e2e-f555-4464-b074-d6cf0b2d9e8b
# ╠═fa4dd6fa-0f3f-48c4-b31c-16bb82b1354f
# ╠═fea913be-9771-4d70-a7bf-a678bc18824e
# ╠═9da46f08-9d01-4730-9710-b0fb83ae8bee
# ╠═ecebe642-b296-416f-a598-edbcf1951e3c
# ╠═60b7346c-a0ab-4c95-9180-62f1d15dfb5e
# ╠═c27c07ce-fb7a-46f7-9a89-698025d68ffa
# ╠═96d90520-3145-4c27-a821-3fe9fd9a3e59
# ╠═b4c91ffd-a1dc-42b6-bbfb-e3026ff48846
# ╠═7ea80b1e-cecd-49e8-9e6c-a56903595d46
# ╠═049b6a08-a092-4d9d-ae9b-d222f83930d4
# ╠═8ea741f6-8e40-4938-b37d-bffeeb95d453
# ╠═8a861826-54d1-4cbe-bb51-97f868c779b8
# ╠═fbe7ac93-523e-448b-86da-abaa603fa4ef
# ╠═d4bea7f8-2a4c-4d39-ad08-e1f8691a7dd0
# ╠═149ae5ce-ff1f-4e3d-956b-97a448649fdc
# ╠═70de9113-2c54-4dfe-8bce-8799246cc3f5
# ╠═77b1d0cc-fcae-4cc4-90d3-614b4207e069
# ╠═edf7f2e1-69b8-4b9f-9628-977e531400fb
# ╠═479ccac4-e3b2-4467-b8b6-6306673b41ad
