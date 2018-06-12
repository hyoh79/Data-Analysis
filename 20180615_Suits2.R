################################################################
#미드슈트에서 주인공 그래프로 시각화
################################################################

# 0. 패키지 다운로드 및 라이브러리 로드
install.packages("igraph")
library(igraph)

# 1. 데이터 로딩
df<-read.csv("ex3. network_suits.csv",header=T) # 미드 슈츠라는 드라마의 인물 관계도 존재하는 파일
df = as.data.frame(df)

# 2. graph.data.frame을통해, igraph를 실행하고 변환
df = graph.data.frame(df, directed = FALSE)


# 3. 그래프 출력으로 결과 확인

# # 방법1) 기본 그래프
# plot(df, vertex.size = 10, vertex.label = V(df)$name)


# 방법2) degree가 큰 노드들을 부각
# plot(df,
#      vertex.label = V(df)$name,
#      vertex.size = degree(df)*3 # 집중도 높은 주인공의 원 크기를 3배 해줌
# )
# 
# # 방법3) 원형 네트워크 그래프
# plot(df, layout=layout.circle, vertex.size = 10, vertex.label = V(df)$name)
plot(df, layout=layout.circle, vertex.size=degree(df)*3, vertex.label=V(df)$name)

# 4. 데이터 출력으로 결과 확인
vertex.size = degree(df)
print(vertex.size)
print(length(vertex.size))
print(names(vertex.size))

cat("# of Max edges is", max(vertex.size), "\n # of Min edges is", min(vertex.size))

num_main_characters<-0
num_extra_characters<-0

num_max_visiting<-0
num_min_visiting<-0

for(i in 1:length(vertex.size)){
  if(vertex.size[i]==6){
    
    num_max_visiting<-num_max_visiting+1
    cat("\n\n# of Max edges of", names(vertex.size[i]), "is", vertex.size[i])
    num_main_characters<-num_main_characters+1
    if(num_max_visiting==1){
      names_main_characters<-names(vertex.size[i])
      # cat("\n\n !!!!!!!!!!!Names of main characters are ", names_main_characters)
    }else{
      names_main_characters<-append(names_main_characters, names(vertex.size[i]))
      # cat("\n\n !!!!!!!!!!!!!Names of main characters are ", names_main_characters)
    }
  }
  else if(vertex.size[i]==5){
    cat("\n\n# of edges of", names(vertex.size[i]), "is", vertex.size[i])
  }
  else if(vertex.size[i]==4){
    cat("\n\n# of edges of", names(vertex.size[i]), "is", vertex.size[i])
  }
  else if(vertex.size[i]==3){
    cat("\n\n# of edges of", names(vertex.size[i]), "is", vertex.size[i])
  }
  else if(vertex.size[i]==2){
    cat("\n\n# of edges of", names(vertex.size[i]), "is", vertex.size[i])
  }
  else{
    num_min_visiting<-num_min_visiting+1
    cat("\n\n# of Min edges of", names(vertex.size[i]), "is", vertex.size[i])
    num_extra_characters<-num_extra_characters+1
    if(num_min_visiting==1){
      names_extra_characters<-names(vertex.size[i])
      # cat("\n\n !!!!!!!!!!!Names of extra characters are ", names_extra_characters)
    }else{
      names_extra_characters<-append(names_extra_characters, names(vertex.size[i]))
      # cat("\n\n !!!!!!!!!!!!!Names of extra characters are ", names_extra_characters)
    }
  }
}

# cat("\n-----------------------------------")
cat("\n\n # of main characters is ", num_main_characters, "(", names_main_characters, ")")
cat("\n\n # of extra characters is ", num_extra_characters, "(", names_extra_characters, ")")
# cat("\n-----------------------------------")
