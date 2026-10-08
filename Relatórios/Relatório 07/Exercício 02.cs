using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Especie { get; private set; }
    public int Nivel { get; private set; }

    public Pokemon(string especie, int nivel)
    {
        this.Especie = especie;
        this.Nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"{Especie} usou um ataque genérico!");
    }
}

public class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel)
        : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        Console.WriteLine($"{Especie} usou um golpe de Planta!");
    }
}

public class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel)
        : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        base.Atacar();

        Console.WriteLine($"{Especie} soltou uma descarga elétrica!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Batalha Pokémon ===");
      
        List<Pokemon> pokemons = new List<Pokemon>();

        Pokemon pokemonNormal =
            new Pokemon("Eevee", 10);

        TipoPlanta pokemonPlanta =
            new TipoPlanta("Bulbasaur", 15);

        TipoEletrico pokemonEletrico =
            new TipoEletrico("Pikachu", 20);

        pokemons.Add(pokemonNormal);
        pokemons.Add(pokemonPlanta);
        pokemons.Add(pokemonEletrico);

        foreach (Pokemon pokemon in pokemons)
        {
            pokemon.Atacar();
        }
    }
}
