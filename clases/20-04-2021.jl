### A Pluto.jl notebook ###
# v0.14.2

using Markdown
using InteractiveUtils

# ╔═╡ 7d29bd2a-3eb6-4cb6-932e-5ecc5ace4275
using SyS

# ╔═╡ 11a03ace-a20b-11eb-03e4-bb32093ef91c
md"""
# Clase 20/04/2021
"""

# ╔═╡ 4c703964-8400-4367-8862-3c9740b81e0b
# busco correr y reflejar -> lo vemos en distinto orden
# primero lo reflejo
x = t -> u(-t)

# ╔═╡ 03012d3a-642c-447d-8c47-d4a0dba57282
plot(x, -10, 10)

# ╔═╡ 136aef45-2ff9-4b1b-81ca-e4fd9e0ae64e
# despues lo corro
x2 = t -> x(t - 10)

# ╔═╡ 7b9edc2e-03eb-456a-b2e1-1f7a3f56bcf9
plot(x2, -10, 20)

# ╔═╡ 4b9612fb-8bf9-4654-a3b0-be02d7656d1b
# todo junto seria
x3 = t -> u(-(t-10))

# ╔═╡ cfef604f-f97d-4dc4-9f5a-167a00126cd1
plot(x3, -10, 20)

# ╔═╡ 0412ede1-3827-4a98-8ca3-60b800831e2e
#si lo hago al reves, primero corro
x5 = t -> u(t + 10)

# ╔═╡ 6d88d379-7113-4eb7-93b5-31c6732fae78
plot(x5, -20, 20)

# ╔═╡ 26a3bdea-e27a-4798-8b0a-e3cb6012eb1f
#despues lo reflejo
x6 = t -> x5(-t)

# ╔═╡ dee27107-33ca-4281-b1dd-738439747be3
plot(x6, -20, 20)

# ╔═╡ c5e05f06-2699-4d4c-8636-80566072464a
# queda lo mismo que antes
x7 = t -> u(-t + 10)

# ╔═╡ c3dae68e-acec-4ba3-8351-8950507928de
plot(x7, -20, 20)

# ╔═╡ 1f3aa3e2-bcbb-4e8c-8be8-dc5ec80765a7
# reviso todos los ejercicios de la guia 1

# ╔═╡ 2e3ed744-471a-4f6f-86f3-2f4d4943386b
# se puso a dar convolucion -> no escuche nada

# ╔═╡ 74597a69-a1cc-4207-9642-2bbb0ae29c11


# ╔═╡ Cell order:
# ╟─11a03ace-a20b-11eb-03e4-bb32093ef91c
# ╠═7d29bd2a-3eb6-4cb6-932e-5ecc5ace4275
# ╠═4c703964-8400-4367-8862-3c9740b81e0b
# ╠═03012d3a-642c-447d-8c47-d4a0dba57282
# ╠═136aef45-2ff9-4b1b-81ca-e4fd9e0ae64e
# ╠═7b9edc2e-03eb-456a-b2e1-1f7a3f56bcf9
# ╠═4b9612fb-8bf9-4654-a3b0-be02d7656d1b
# ╠═cfef604f-f97d-4dc4-9f5a-167a00126cd1
# ╠═0412ede1-3827-4a98-8ca3-60b800831e2e
# ╠═6d88d379-7113-4eb7-93b5-31c6732fae78
# ╠═26a3bdea-e27a-4798-8b0a-e3cb6012eb1f
# ╠═dee27107-33ca-4281-b1dd-738439747be3
# ╠═c5e05f06-2699-4d4c-8636-80566072464a
# ╠═c3dae68e-acec-4ba3-8351-8950507928de
# ╠═1f3aa3e2-bcbb-4e8c-8be8-dc5ec80765a7
# ╠═2e3ed744-471a-4f6f-86f3-2f4d4943386b
# ╠═74597a69-a1cc-4207-9642-2bbb0ae29c11
