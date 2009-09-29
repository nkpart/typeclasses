import Typeclasses

main :: IO ()
main = examples


examples = do
  putStrLn ("hello" ++ zero ++ " world")
  
  putStrLn (append "hello" " world")
  
  putStrLn $ msum' ("abc" : "def" : [])
  
  putStrLn $ o (Just "Yep")
  
  putStrLn $ o (Nothing :: Maybe String) ++ " <-"
  
  