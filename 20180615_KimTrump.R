rm(ls)
library(tm)

# Using tidytext to make sentiment analysis easy
if (!require("tidytext")) {install.packages("tidytext")}
library(qdap)
if (!require("tidyverse")) {install.packages("tidyverse")}
library(wordcloud)
library(tibble)
library(plotrix)
library(stringr)

clean_text <- function(text){
  text <- tolower(text)
  # text <- removeNumbers(text)
  # text <- bracketX(text)
  text <- replace_number(text)
  text <- replace_abbreviation(text)
  text <- replace_contraction(text)
  text <- replace_symbol(text)
  text <- removePunctuation(text)
  text <- stripWhitespace(text)
  text <- str_replace_all(text, "americans", "america")
  
  indexes <- which(text == "")
  if(length(indexes) > 0){
    text <- text[-indexes]
  } 
  return(text)
}

clean_corpus <- function(corpus){
  corpus <- tm_map(corpus, content_transformer(replace_abbreviation))
  corpus <- tm_map(corpus, stripWhitespace)
  corpus <- tm_map(corpus, removePunctuation)
  corpus <- tm_map(corpus, removeNumbers)
  corpus <- tm_map(corpus, removeWords, c(stopwords("en"), "Top200Words"))
  corpus <- tm_map(corpus, content_transformer(tolower))
  return(corpus)
}

# 1. 데이터 불러오기 -------------------------------------------------------
Kim <- readLines("201806_Kim.txt", encoding = "UTF-8")
trump <- readLines("201806_Trump.txt", encoding = "UTF-8")
# 2. 데이터 전처리 -------------------------------------------------------
make_corpus <- function(text) {
  text_clean <- clean_text(text)
  text_source <- VectorSource(text_clean)#tm
  text_corpus <- VCorpus(text_source) #tm
  corpus <- clean_corpus(text_clean)
}

Kim_corpus <- make_corpus(Kim)
trump_corpus <- make_corpus(trump)

# 3. 말뭉치를 데이터프레임으로 변환 --------------------------------------

word_freq <- function(corpus) {
  doc_tdm <- TermDocumentMatrix(corpus)
  doc_m <- as.matrix(doc_tdm)
  doc_term_freq <- rowSums(doc_m)
  doc_word_freqs <- data.frame(term = names(doc_term_freq),
                               num = doc_term_freq) %>% arrange(desc(num))
  return(doc_word_freqs)
}

Kim_word_freqs <- word_freq(Kim_corpus)
trump_word_freqs <- word_freq(trump_corpus)

# 4. 시각화 --------------------------------------------------------------
## 4.1. wordcloud----------------------------------------------------------
windows()

par(mfrow=c(1,2))
# blues <- brewer.pal(8, "Blues")[-(1:2)]
blues <- brewer.pal(8, "Blues")
wordcloud(Kim_word_freqs$term, Kim_word_freqs$num, max.words=100, colors=blues)

reds <- brewer.pal(8, "Reds")[-(1:2)]
wordcloud(trump_word_freqs$term, trump_word_freqs$num, max.words=100, colors=reds)
## 4.2. 공통 wordcloud

all_Kim <- paste(Kim, collapse = " ")
all_trump <- paste(trump, collapse = " ")

Kim_trump <- c(all_Kim, all_trump)

Kim_trump_corpus <- make_corpus(Kim_trump)
Kim_trump_word_freqs <- word_freq(Kim_trump_corpus)

Kim_trump_tdm <- TermDocumentMatrix(Kim_trump_corpus)
Kim_trump_m <- as.matrix(Kim_trump_tdm)

commonality.cloud(Kim_trump_m,  colors ="steelblue1", max.words=100)

## 4.3. 비교 wordcloud
# colnames(Kim_trump_tdm) <- c("Kim", "Trump")

colnames(Kim_trump_tdm) <- c("김정은", "Trump")
Kim_trump_df <- as.matrix(Kim_trump_tdm) %>% as.data.frame()

comparison.cloud(Kim_trump_df, colors = c("blue", "red"), max.words = 50)

## 4.4. 피라미드 그래프
# par(mfrow=c(1,1))
# 
# common_words_25 <- Kim_trump_df %>% 
#   mutate(label = rownames(Kim_trump_df)) %>% 
#   dplyr::filter(Kim > 0 & Trump >0) %>% 
#   mutate(diff = abs(Kim - Trump)) %>% 
#   arrange(desc(diff)) %>% slice(1:25)
# 
# plotrix::pyramid.plot(common_words_25$Kim, common_words_25$Trump,
#                       labels = common_words_25$label, gap = 8,
#                       top.labels = c("Kim", "Words", "Trump"),
#                       main = "Words in Common")
