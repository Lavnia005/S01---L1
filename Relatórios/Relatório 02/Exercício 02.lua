print("Digite a quantidade de elementos (N):")
local n = tonumber(io.read())

local tabela = {} 

for i = 1, n do
    print("Digite o elemento:")
    local valor = tonumber(io.read())
    table.insert(tabela, valor)
end

print("Digite um numero X a ser buscado:")
local x = tonumber(io.read())

function contarOcorrencias(tabela, alvo)
    local contador = 0
    
    for i = 1, #tabela do
        if tabela[i] == alvo then
            contador = contador + 1
        end
    end
    
    return contador
end

local total = contarOcorrencias(tabela, x)
print("O número " .. x .. " aparece " .. total .. " vez(es) na tabela.")
