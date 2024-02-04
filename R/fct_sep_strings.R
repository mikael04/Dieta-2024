#' func_sep_strings
#'
#' @description Uma função que quebra a string recebida em um vetor de strings, separados por delim
#'
#' @return Uma lista com as strings quebradas pelo delimitador
#'
#' @author: Mikael
#'
#' @date: 19/01/2023


func_sep_strings <- function(string, delim){
  ## Separando as palavras para contagem
  string <- string |>
    purrr::map(\(x) stringr::str_sort(stringr::str_split_1(x, pattern = delim)))

  ## Unindo tudo num único vetor e depois fazendo a contagem
  string_vector = unlist(lapply(string, unique))
  return(string_vector)
}
