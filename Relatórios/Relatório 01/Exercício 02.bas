Dim pin  As Integer
Dim digitado As Integer

pin = 4321

Print "---Inicializacao de PIN---"
Print "Digite o PIN de acesso, por favor:"
Input digitado

While digitado <> pin 
    Print "PIN invalido. Tente novamente."
    Print "Digite o PIN de acesso, por favor:"
    Input digitado
Wend

    Print "Transacao autorizada!"

Sleep
