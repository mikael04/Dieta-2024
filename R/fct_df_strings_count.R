#' func_name
#'
#' @description Uma função que transforma a lista de strings recebidas em df e devolve elas ordenadas por maior frequência
#'
#' @return Um dataframe com as strings que mais aparecem ordenadas pela frequência
#'
#' @author
#'
#' @date:

func_df_strings_count <- function(string_vector){
  ## Fazendo a contagem e transformando em um dataframe, podemos verifiicar diretamente na tabela
  df_strings_count <- as.data.frame(table(string_vector), stringsAsFactors = F) |>
    dplyr::arrange(desc(Freq))
  ## Renomeando colunas
  names(df_strings_count) <- c("string", "count")

  return(df_strings_count)
}

