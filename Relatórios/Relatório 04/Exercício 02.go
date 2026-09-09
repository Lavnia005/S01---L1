package main

import "fmt"

func main() {
	var venda1 int 
	var venda2 int
	var venda3 int

	fmt.Print("Digite as vendas do primeiro trimestre: ")
	fmt.Scanln(&venda1)
	
	fmt.Print("Digite as vendas do segundo trimestre: ")
	fmt.Scanln(&venda2)
	
	fmt.Print("Digite as vendas do terceiro trimestre: ")
	fmt.Scanln(&venda3)

	soma := venda1 + venda2 + venda3

	if soma < 100 {
		fmt.Println("Meta mínima anual não atingida!")
	} else {
		switch {
		case soma >= 250:
			fmt.Println("Categoria Top Seller")
		case soma >= 180:
			fmt.Println("Categoria Sênior")
		default:
			fmt.Println("Categoria Pleno")
		}
	}
}
