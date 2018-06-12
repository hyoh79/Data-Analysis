# ------------------------------------------------------
# PROJECT. ABC News 페이스북 글을 통한 관심사 분석
#
# COPYRIGHT (c) 2016 AJOU University
# Author 	: xxx, 사번 201600000
# Details	: ABC News 페이스북 페이지를 크롤링하여 텍스트마이닝으로 
#                  분석 후 워드클라우드로 시각화 
# Input		: -
# Output		: 수집된 페이스북 데이터 파일 및 워드클라우드 이미지 파일 
# Usage		: > source(“20180615_facebook1.R“)
# History	: (1차) 2018년 6월 15일
# ------------------------------------------------------
# 패키지 설치 및 라이브러리 실행
install.packages("KoNLP") 
install.packages("wordcloud") 
install.packages("Rfacebook")
library(KoNLP) 
library(wordcloud)
library(Rfacebook)

# 페이스북 페이지 크롤링 함수
facebook_crawling <- function(token, page, output) {
  # ABC News 페이스북 데이터 수집
  facebookData <- getPage(page, token, n=100)
  # ABC News 뉴스피드 데이터를 파일에 저장
  write(facebookData$message, output)
}

# ABC News 페이지에서 데이터 수집
page <- "ABCNews" 		       # ABC News 페이지 ID
token <- "EAACEdEose0cBAGOyczNyuFZAETGMZCkNZCPy09KzEbbQWMPFfBkpO67HJcfllISSgmweZBCKeWGaYlFQl1KmThLgsoI8J7x9WbLkYY6xfEIBrfSsxXL8gCv0g9wSbV9gZAXR5vCZAJ8xA5M40XRPRuxuvhcvRTmZB6Rt3MnHozliZAm4USsZBaAd5ryB9ZBliVxZCL7QdEZA6ABJQAZDZD"	# 페이스북 개발자 토큰
output <- "abcnews_fb_data.txt"	# 저장할 결과 파일 이름 
facebook_crawling(token, page, output) 

# 텍스트마이닝을 이용한 데이터 정제 및 분석

## 1) 페이스북 데이터 읽어오기
facebookPosts <- readLines(output)
## 2) NA 데이터 제거
facebookPosts <- facebookPosts[!is.na(facebookPosts)]
## 3) 명사 추출
facebookWords <- sapply(facebookPosts,extractNoun,USE.NAMES=F)
## 4) 특수문자, 숫자, 공백, 불필요한 단어 제거
interest<-gsub("[[:punct:][:digit:][:space:]]", "", unlist(facebookWords))

## 5) 단어길이 3개 보다 큰 단어만 통과
interest <- Filter(function(x) {nchar(x) > 3}, interest)
## 6) 데이터 빈도 분석
word_count <- table(interest)
head(sort(word_count, decreasing = T), 30)	# 빈도수 상위 30개 출력

# 분석 결과 저장 및 시각화
write.table(sort(word_count, decreasing = T), file="abcnews_interest_all.txt")
## [조건] 최소 빈도수 5 이상인 단어를 워드클라우드로 시각화
palette <- brewer.pal(8, "Set2")
wordcloud(names(word_count), freq=word_count, rot.per = 0.25, min.freq = 5, random.order = F, random.color = T, colors=palette)
