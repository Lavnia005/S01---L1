class PhoneWave
  def enviar_dmail(mensagem)
    puts "Mensagem: #{mensagem}"
    puts "D-mail enviado para o passado!"
  end
end

class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new
    @membros = []
  end

  def admitir(membro)
    @membros << membro
    puts "Membro #{membro.numero} - #{membro.nome} admitido!"
  end

  def experimento(mensagem)
    puts "\n--- Membros presentes no experimento ---"

    @membros.each do |membro|
      puts "#{membro.numero} - #{membro.nome}"
    end

    puts "\n--- Enviando D-mail ---"
    @phonewave.enviar_dmail(mensagem)
  end
end

okabe = MembroDoLab.new(1, "Rintaro Okabe")
kurisu = MembroDoLab.new(2, "Kurisu Makise")

laboratorio = LaboratorioDeGadgets.new

laboratorio.admitir(okabe)
laboratorio.admitir(kurisu)

laboratorio.experimento("Nao compre bananas ontem!")
