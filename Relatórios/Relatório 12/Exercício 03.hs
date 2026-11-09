data Esboco = Esboco
  { titulo  :: String
  , tecnica :: String
  , horas   :: Int
  }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "O caderno esta vazio."
esbocoMaisRecente (e:_) =
  titulo e ++ " - Tecnica: " ++ tecnica e

contaEsbocos :: [Esboco] -> Int
contaEsbocos [] = 0
contaEsbocos (_:resto) = 1 + contaEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do

  let caderno =
        [ Esboco { titulo = "Dragao", tecnica = "Nanquim", horas = 4 }
        , Esboco { titulo = "Castelo Sombrio", tecnica = "Grafite", horas = 3 }
        , Esboco { titulo = "Floresta", tecnica = "Carvao", horas = 5 }
        ]

  putStrLn "--- Caderno de Esbocos ---"
  putStrLn (esbocoMaisRecente caderno)
  putStrLn ("Quantidade de esbocos: " ++ show (contaEsbocos caderno))
  putStrLn ("Total de horas desenhando: " ++ show (horasDesenhando caderno))

  putStrLn "--- Caderno Vazio ---"
  putStrLn (esbocoMaisRecente [])

  let novoEsboco = Esboco
        { titulo = "Cavaleiro"
        , tecnica = "Carvao"
        , horas = 6
        }

  let cadernoNovo = novoEsboco : caderno

  putStrLn "--- Comparando os Cadernos ---"

  putStrLn "Caderno anterior:"
  putStrLn (esbocoMaisRecente caderno)
  putStrLn ("Quantidade: " ++ show (contaEsbocos caderno))

  putStrLn "Caderno novo:"
  putStrLn (esbocoMaisRecente cadernoNovo)
  putStrLn ("Quantidade: " ++ show (contaEsbocos cadernoNovo))
