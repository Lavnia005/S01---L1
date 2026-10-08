using System;
using System.Collections.Generic;

public class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }

    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        this.Nome = nome;
        this.Povo = povo;
        this.Posto = posto;
    }

    public void Equipar(string arma)
    {
        this.Armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine("\n--- Combatente ---");
        Console.WriteLine($"Nome: {Nome}");
        Console.WriteLine($"Povo: {Povo}");
        Console.WriteLine($"Posto: {Posto}");

        // o armamento só aparece se não estiver desarmado
        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Cerco a Minas Tirith ===");

        CombatenteDeGondor aragorn =
            new CombatenteDeGondor("Aragorn", "Homem", "Capitão");

        CombatenteDeGondor boromir =
            new CombatenteDeGondor("Boromir", "Homem", "Guerreiro");

        CombatenteDeGondor faramir =
            new CombatenteDeGondor("Faramir", "Homem", "Comandante");

        aragorn.Equipar("Espada");

        faramir.Equipar("Arco");

        aragorn.ApresentarUnidade();
        boromir.ApresentarUnidade();
        faramir.ApresentarUnidade();
    }
}
