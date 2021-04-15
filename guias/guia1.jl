### A Pluto.jl notebook ###
# v0.14.2

using Markdown
using InteractiveUtils

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
