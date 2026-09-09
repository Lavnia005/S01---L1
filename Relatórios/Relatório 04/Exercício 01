package main

import "fmt"

func ValidarCodigoRastreio(codigo string) (bool, string) {
	if len(codigo) == 10 {
		return true, "Código de rastreio registrado no sistema!"
	}
	return false, "Erro: O código de rastreio deve ter exatamente 10 caracteres."
}

func main() {
	var codigo string
	valido := false

	for !valido {
		fmt.Print("Digite o código de rastreio: ")
		fmt.Scanln(&codigo)

		var mensagem string

		valido, mensagem = ValidarCodigoRastreio(codigo)
		
		fmt.Println(mensagem)
	}
}
