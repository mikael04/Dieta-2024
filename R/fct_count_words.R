#' fct_count_words
#'
#' @description A function that count words from a character column vector
#'
#' @return No return
#'
#' @author Mikael M Coletto
#'
#' @date 16/01/2024

func_count_words <- function(string_vector){
  teste_interno <- F
  if(teste_interno){
    string_vector = df_dieta$obs
  }
  string = string_vector[string_vector != "NA"]
  ## Removendo pontuações
  string <- stringr::str_replace_all(string, "[[:punct:]]", "")
  string_ <- stringr::str_split(string, " ")
  ## Agora preciso contar as palavras, seja unindo tudo num único vetor e depois fazendo a contagem
  ## ou contanto por vetor de strings
}
