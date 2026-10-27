class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

class AgenteProtocolo {
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola);
    }

    usarHabilidade() {
        throw new Error(`O agente ${this.codinome} deve implementar usarHabilidade()`);
    }

    entrarEmCombate() {
        console.log(`Agente: ${this.codinome}`);
        console.log(`Pistola: ${this.#pistola.modelo}`);
        console.log(`Habilidade: ${this.usarHabilidade()}`);
    }
}

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Usa uma cortina de fumaça para bloquear a visão.';
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Usa uma habilidade para revelar inimigos.';
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return 'Usa uma habilidade para avançar contra os inimigos.';
    }
}

class Esquadrao {
    #agentes;

    constructor(nome, agentes) {
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida() {
        console.log(`\n--- Esquadrão ${this.nome} iniciou a partida! ---`);

        this.#agentes.forEach(agente => {
            agente.entrarEmCombate();
            console.log('--------------------');
        });
    }

    listarControladores() {
        return this.#agentes.filter(agente => agente instanceof Controlador);
    }
}

const controlador1 = new Controlador('Omen', 'Ghost');
const controlador2 = new Controlador('Brimstone', 'Sheriff');
const iniciador = new Iniciador('Sova', 'Classic');
const duelista = new Duelista('Jett', 'Frenzy');

const esquadrao = new Esquadrao('Alpha', [
    controlador1,
    controlador2,
    iniciador,
    duelista
]);

esquadrao.iniciarPartida();

console.log('\nControladores do esquadrão:');

esquadrao.listarControladores().forEach(agente => {
    console.log(agente.codinome);
});

const agenteGenerico = new AgenteProtocolo('Agente', 'Classic');
