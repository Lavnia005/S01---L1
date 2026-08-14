Dim peso As Integer
Dim agua As Integer
Dim quantidade As Integer

Print "---Meta de agua diaria---"
Print "Digite seu peso:"
Input peso
Print "Agora, digite a quantidade de agua que bebeu:"
Input agua

quantidade = peso * 35

If agua >= quantidade Then
    Print "Meta atingida!"
Else
    Print "Meta nao atingida"
End If

Sleep
