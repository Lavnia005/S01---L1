using System;
using System.Collections.Generic;

public class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir()
    {
        Console.WriteLine($"Grimório aberto! Feitiço favorito: {FeiticoFavorito}");
    }
}

public class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        this.Nome = nome;
        this.Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"Companheiro: {Nome} - Função: {Funcao}");
    }
}

public class Maga
{
    public string Nome { get; set; }

    public Grimorio Grimorio { get; private set; }

    private List<Companheiro> _companheiros;

    public Maga(string nome)
    {
        this.Nome = nome;

        this.Grimorio = new Grimorio();

        this._companheiros = new List<Companheiro>();
    }

    public void Recrutar(Companheiro c)
    {
        this._companheiros.Add(c);
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"\n=== Grupo de {Nome} ===");

        foreach (Companheiro companheiro in _companheiros)
        {
            companheiro.Apresentar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Aventura da Maga ===");

        Companheiro companheiro1 =
            new Companheiro("Stark", "Guerreiro");

        Companheiro companheiro2 =
            new Companheiro("Fern", "Maga");

        Maga frieren =
            new Maga("Frieren");

        frieren.Recrutar(companheiro1);
        frieren.Recrutar(companheiro2);

        frieren.Grimorio.FeiticoFavorito = "Magia de Anulação";

        frieren.MostrarGrupo();

        frieren.Grimorio.Abrir();
    }
}
