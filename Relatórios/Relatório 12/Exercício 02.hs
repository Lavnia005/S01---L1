pesoMaximo :: Double
pesoMaximo = 10.0

data Encomenda = Encomenda
  { destinatario :: String
  , peso         :: Double
  , frete        :: Double
  }

descrever :: Encomenda -> String
descrever enc =
  destinatario enc
    ++ " - Peso: " ++ show (peso enc)
    ++ " kg - Frete: R$ " ++ show (frete enc)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas =
  filter (\enc -> peso enc <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas =
  sum (map frete encomendas)

main :: IO ()
main = do

  let encomendas =
        [ Encomenda { destinatario = "Kiki", peso = 3.0, frete = 15.0 }
        , Encomenda { destinatario = "Tombo", peso = 7.0, frete = 20.0 }
        , Encomenda { destinatario = "Osono", peso = 12.0, frete = 30.0 }
        , Encomenda { destinatario = "Ursula", peso = 5.0, frete = 18.0 }
        , Encomenda { destinatario = "Fukuo", peso = 15.0, frete = 35.0 }
        ]

  let encomendasPossiveis = cabemNaVassoura encomendas

  putStrLn "--- Todas as Encomendas ---"
  mapM_ putStrLn (map descrever encomendas)

  putStrLn "--- Encomendas que Cabem na Vassoura ---"
  mapM_ putStrLn (map descrever encomendasPossiveis)

  putStrLn "--- Total dos Fretes ---"
  print (totalDeFretes encomendasPossiveis)
