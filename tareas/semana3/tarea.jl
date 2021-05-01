### A Pluto.jl notebook ###
# v0.14.2

using Markdown
using InteractiveUtils

# ╔═╡ 719bc19a-aaa9-11eb-0124-5b8921c4d032
md"""
## Tarea

* `coef_serie`: recibe un vector con los valores en el primer período de la señal discreta [ x(0), x(1), ..., x(N-1) ].  Devuelve los coeficientes de la serie discreta de fourier [ a_0, a_1, ..., a_{N-1}]
* `sintesis_serie`: inversa de la función anterior: recibi el vector de coeficientes [ a_0, a_1, ..., a_{N-1}] y devuelve los valores del primer período de la señal [ x(0), x(1), ..., x(N-1) ].

"""

# ╔═╡ ecdb2d3a-7b16-4053-b0f9-a47b7505981c
function coef_serie(x)
	a = []
	N = size(x,1)
	for i in 1:N
		a_i = sum(n -> x[n] * exp(-(i-1) * im * 2 * (n-1) * π/N), 1:N)/N
		push!(a, a_i)
	end
	return a
end

# ╔═╡ cd2437ac-876c-4c9e-bb45-be9e38a3f73a
coef_serie([1,1,1,0])

# ╔═╡ 9e4a03f6-bb21-48ee-890d-61e7f02e0ff9
function sintesis_serie(a)
	x = []
	N = size(a,1)
	for i in 1:N
		x_i = sum(n -> a[n] * exp((i-1) * im * 2 * (n-1) * π/N), 1:N)
		push!(x, x_i)
	end
	return x
end

# ╔═╡ 9f1a34f3-a5a5-4319-a238-e26f6b5d96be
sintesis_serie([0.75, -0.25im, 0.25, 0.25im])

# ╔═╡ Cell order:
# ╟─719bc19a-aaa9-11eb-0124-5b8921c4d032
# ╠═ecdb2d3a-7b16-4053-b0f9-a47b7505981c
# ╠═cd2437ac-876c-4c9e-bb45-be9e38a3f73a
# ╠═9e4a03f6-bb21-48ee-890d-61e7f02e0ff9
# ╠═9f1a34f3-a5a5-4319-a238-e26f6b5d96be
