print("Digite o primeiro número:")
local n1 = tonumber(io.read())

print("Digite o segundo número:")
local n2 = tonumber(io.read())

print("Digite a operação (\"media\", \"maior\", ou \"diferenca\"):")
local operacao = io.read()

function calcularMedia(a, b)
    return (a + b) / 2
end

function encontrarMaior(a, b)
    if a > b then
        return a
    else
        return b
    end
end

function calcularDiferencaAbsoluta(a, b)
    local diff = a - b
    if diff < 0 then
        diff = diff * -1
    end
    return diff
end

function analisarNumeros(num1, num2, op)
    if op == "media" then
        return calcularMedia(num1, num2)
    elseif op == "maior" then
        return encontrarMaior(num1, num2)
    elseif op == "diferenca" then
        return calcularDiferencaAbsoluta(num1, num2)
    else
        return "Operação inválida!"
    end
end

local resultado = analisarNumeros(n1, n2, operacao)
print("Resultado: " .. tostring(resultado))


