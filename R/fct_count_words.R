#' func_count_words
#'
#' @description Uma função que conta palavras de uma coluna do tipo string
#'
#' @return Retornando df com palavras que mais aparecem, após remoção de stopwords
#'
#' @author Mikael M Coletto
#'
#' @date 16/01/2024

func_count_words <- function(string_vector){
  teste_interno <- F
  if(teste_interno){
    string_vector = df_dieta$obs
  }
  ## Removendo stopwords br
  my_corpus <- Corpus(VectorSource(string_vector))
  stw = c(stopwords("portuguese")) #inserir a palavra para removê-la da análise
  # str(stw)
  docs = tm_map(my_corpus,removeWords,c(stw)) # Remove as stopwords
  ## Convertendo para dataframe
  string_vector = data.frame(text = sapply(docs, as.character), stringsAsFactors = FALSE) |>
    pull(text)

  ## Removendo linhas preenchidas como "NA"
  string_vector = string_vector[string_vector != "NA"] |>
    ## Removendo pontuações
    stringr::str_replace_all("[[:punct:]]", "") |>
    ## Transformando caractéres
    stringr::str_to_lower()

  string_vector <- func_sep_strings(string_vector, delim = " ")

  df_strings_count <- func_df_strings_count(string_vector) |>
    dplyr::filter(string != "")

  ## Retornando df com palavras que mais aparecem, após remoção de stopwords
  df_strings_count

}
