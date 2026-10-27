class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }

    atacar(alvo) {
        console.log(`${this.nome} lança um ataque genérico de aura contra ${alvo.nome}!`);
    }
}

class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} usa um golpe poderoso de Nen contra ${alvo.nome}!`);
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} transforma sua aura em eletricidade e ataca ${alvo.nome}!`);
    }
}

class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} materializa uma arma de Nen e ataca ${alvo.nome}!`);
    }
}

class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma {
    #aranhas;

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas() {
        console.log(`\nAranhas avistadas na cidade de ${this.cidade}:`);

        this.#aranhas.forEach(aranha => {
            console.log(`Número: ${aranha.numero} | Nome: ${aranha.nome}`);
        });
    }

    buscarAranha(numero) {
        return this.#aranhas.find(aranha => aranha.numero === numero);
    }
}

const aranha1 = new Aranha('Chrollo', 0);
const aranha2 = new Aranha('Feitan', 2);

const trupe = new TrupeFantasma('Yorknew', [aranha1, aranha2]);

trupe.revelarAranhas();

const alvo = trupe.buscarAranha(2);

console.log('\nHunters iniciando o combate:');

const hunters = [
    new Intensificador('Gon'),
    new Transmutador('Killua'),
    new Materializador('Kurapika')
];

if (alvo) {
    hunters.forEach(hunter => {
        hunter.atacar(alvo);
    });
} else {
    console.log('Aranha não encontrada.');
}
