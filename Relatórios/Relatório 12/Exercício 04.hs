data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor   :: Double
  , etapa   :: Etapa
  }

descrever :: Atendimento -> String
descrever at =
  cliente at
    ++ " - Servico: " ++ servico at
    ++ " - Etapa: " ++ show (etapa at)

concluir :: Atendimento -> Atendimento
concluir at = at { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\at -> etapa at == Concluido) atendimentos))

main :: IO ()
main = do

  let atendimento1 =
        Atendimento { cliente = "Sem Rosto"
                    , servico = "Banho especial"
                    , valor = 150.0
                    , etapa = NaFila }

  let atendimento2 =
        Atendimento { cliente = "Espírito do Rio"
                    , servico = "Limpeza"
                    , valor = 200.0
                    , etapa = NoBanho }

  let atendimento3 =
        Atendimento { cliente = "Deus Fedido"
                    , servico = "Banho completo"
                    , valor = 180.0
                    , etapa = NaFila }

  let atendimentos = [atendimento1, atendimento2, atendimento3]

  let atendimentosAtualizados =
        [ concluir atendimento1
        , atendimento2
        , concluir atendimento3
        ]
        
  putStrLn "--- Atendimentos Originais ---"
  mapM_ putStrLn (map descrever atendimentos)

  putStrLn "Valor arrecadado:"
  print (arrecadado atendimentos)

  putStrLn "--- Atendimentos Atualizados ---"
  mapM_ putStrLn (map descrever atendimentosAtualizados)

  putStrLn "Valor arrecadado:"
  print (arrecadado atendimentosAtualizados)

  putStrLn "--- Lista Original Novamente ---"
  mapM_ putStrLn (map descrever atendimentos)
