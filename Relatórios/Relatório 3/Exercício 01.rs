use std::io;

fn validar_placa(placa: &str) -> bool {
    let mut qtd_maiusculas = 0;
    let mut qtd_numeros = 0;

    for c in placa.chars() {
        if c.is_ascii_uppercase() {
            qtd_maiusculas += 1;
        }
        if c.is_numeric() {
            qtd_numeros += 1;
        }
    }

    placa.len() >= 7 && qtd_maiusculas >= 4 && qtd_numeros >= 2
}

fn main() {
    loop {
        let mut entrada = String::new();
        println!("Digite a placa do veículo:");

        io::stdin()
            .read_line(&mut entrada)
            .expect("Erro ao ler");

        let placa = entrada.trim();

        if validar_placa(placa) {
            println!("Placa cadastrada no sistema!\n");
            break;
        } else {
            println!("Placa inválida. Tente novamente!\n");
        }
    }
}
