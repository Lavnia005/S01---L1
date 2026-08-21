print("Digite o exponencial inicial:")
local m = tonumber(io.read());
print("Agora, o expoente final:")
local n = tonumber(io.read())
print("Por ultimo, a base da potenciacao:")
local base = tonumber(io.read())

function gerarTabelaPotenciais(inicio, fim, base)
    for i = inicio, fim do
        local resultado = base ^ i
        print(base.. " elevado a " .. i .. " = " .. resultado)
    end
end

gerarTabelaPotenciais(m, n, base);
