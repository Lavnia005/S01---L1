using System;
using System.Collections.Generic;

public class EntidadeCosmica
{
    public string Nome { get; private set; }

    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        this.Nome = nome;
    }

    public virtual void Manifestar()
    {
        Console.WriteLine($"\n--- {Nome} ---");

        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Origem: {Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome)
        : base(nome)
    {
    }

    public override void Manifestar()
    {
        Console.WriteLine($"\n--- {Nome} ---");
        Console.WriteLine("O Profundo se manifesta nas profundezas do oceano.");
    }
}

public class MiGo : EntidadeCosmica
{
    public MiGo(string nome)
        : base(nome)
    {
    }

    public override void Manifestar()
    {
        base.Manifestar();

        Console.WriteLine("O Mi-Go se manifesta através de sua tecnologia alienígena.");
    }
}

public class Pesquisador
{
    public string Nome { get; private set; }

    private List<EntidadeCosmica> _catalogo;

    public Pesquisador(string nome)
    {
        this.Nome = nome;

        this._catalogo = new List<EntidadeCosmica>();
    }

    public void Catalogar(EntidadeCosmica e)
    {
        this._catalogo.Add(e);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"\n=== Catálogo de {Nome} ===");

        foreach (EntidadeCosmica entidade in _catalogo)
        {
            entidade.Manifestar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Console.WriteLine("=== Biblioteca da Universidade Miskatonic ===");

        EntidadeCosmica entidade =
            new EntidadeCosmica("Cthulhu");
      
        Profundo profundo =
            new Profundo("Dagon");

        MiGo migo =
            new MiGo("Mi-Go");

        profundo.Origem = "Oceano";

        Pesquisador pesquisador =
            new Pesquisador("Dr. Armitage");

        pesquisador.Catalogar(entidade);
        pesquisador.Catalogar(profundo);
        pesquisador.Catalogar(migo);

        pesquisador.LerCatalogo();
    }
}
