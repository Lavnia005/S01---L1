print("Digite a quantidade de elementos da tabela (N):")
local n = tonumber(io.read())

local tabela = {} 

for i = 1, n do
    print("Digite o elemento " .. i .. ":")
    local valor = tonumber(io.read())
    table.insert(tabela, valor)
end

print("Digite o valor limite (K):")
local k = tonumber(io.read())

function filtrarMaiores(tabOriginal, limite)
    local novaTabela = {}
    
    for i = 1, #tabOriginal do
        if tabOriginal[i] > limite then
            table.insert(novaTabela, tabOriginal[i])
        end
    end
    
    return novaTabela
end

local elementosFiltrados = filtrarMaiores(tabela, k)

print("--- Elementos maiores que " .. k .. " ---")
for i = 1, #elementosFiltrados do
    print(elementosFiltrados[i])
end
