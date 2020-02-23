<div style="text-align: center"> 
    
  # R 디버깅 및 응용 편 
    
<div style="text-align: left">
    
+	윈도우 및 리눅스 환경에서 R 실행 비교 
    +	Encoding별 R처리 방식 비교
![fig3_1](https://user-images.githubusercontent.com/40076487/75109362-6edec400-5665-11ea-9b29-74a5ae179d6c.png)
![fig3_2](https://user-images.githubusercontent.com/40076487/75109363-6f775a80-5665-11ea-9b8a-197831ff97a9.png)
+	R 디버깅
    +	디버깅 함수들을 활용한 “나의 영문 명함 예제 정검하기”
        *	디버깅: 함수가 호출되는 순서가 call stack에 쌓이는데 이를 추척해서 보여주는 traceback( )활용
            -	1)사용자 정의 함수 디버깅 – browser ( )를 원하는 위치에 넣고 디버깅
            -	2) 내장 함수 디버깅 – debug( )를 사용해서 내장 함수 자체 디버깅 모드로 변환
            -	3) 소스의 일부분만 디버깅 - trace( ) 및 함수 객체의 라인 넘버를 활용해서 특정 부분에 break point걸어서 디버깅

![fig3_3](https://user-images.githubusercontent.com/40076487/75109364-70a88780-5665-11ea-8cd1-24e383d6a42b.png)
![fig3_4](https://user-images.githubusercontent.com/40076487/75109366-71411e00-5665-11ea-964f-ce4c1827ab1d.png)
![fig3_5](https://user-images.githubusercontent.com/40076487/75109368-71411e00-5665-11ea-8db9-9e4232b6d583.png)
+	컴퓨팅 사고 기반 R응용
    +	급변하는 시대에서 다양한 문제 및 현상 등을 효율적으로 해결하기 위해서는 (빅) 데이터 기반 컴퓨터를 활용하여 문제를 효율적으로 푸는 경향이 있음
    +	결과 사람이 컴퓨터(기계)를 이용해서 문제를 효율적으로 풀기 위해서는 컴퓨터가 어떻게 사고해서 문제를 풀어나가는지 “컴퓨팅 사고”를 해야함.
        *	본 교재에서는 실생활에서 접할 수 있는 대표적인 예제 5개를 컴퓨팅 사고 후 R로 코딩하여 객관적이고 효율적인 답을 도출하는 방법론을 소개
            *	복잡한 문제보다는 컴퓨팅 사고 (분해, 패턴인식, 추상화 및 알고리즘)의 각 단계가 구별되는 “이산적 컴퓨팅 사고”가 가능한 예제를 중심으로 구성
                -	이산적 컴퓨팅 사고
                -	연속적 컴퓨팅 사고

<div style="text-align: center"> 
    
  <패키지 Tuber를 활용한 유투브 데이터 정적 및 동적 분석> 
    
<div style="text-align: left">

예제 1) 정적 및 동적으로 유투브 데이터 분석
+	문제정의
+	소셜 정보망이 발전함에 따라 전 세계적으로 유투브의 사용량은 지수적으로 증가
+	비록 개인별 로그인 후 과거 시청 리스트가 존재한다면 이를 바탕으로 유투브는 각 사용자 별 맞춤 유투브 영상 추천 시스템을 제공
+	하지만 과거의 데이터가 없거나 좀더 정교한 카테고리 별 및 fake댓글 및 통계정보만으로 정확한 랭킹 및 추천 시스템 제공에는 한계가 있음
+	본 예제에서는 사용자가 실제로 영상을 끝까지 보고 영상을 이해 한 뒤 관심이 깊은 댓글의 경향성 (동적 정보) 및 소셜 사용자들이 평균적으로 매긴 채널의 수, 구독자의 수 및 좋아요 등의 통계정보(정적 정보)를 동시에 고려하여 더욱 정교한 유투브 추천 시스템을 디자인
+	이를 위한 이산적 컴퓨팅 사고는 다음과 같음

+	1) 컴퓨팅 사고 
    -  A.분해(Decomposition) – 유투브 데이터 준비, 데이터 처리, 출력
        - a) 유투브 데이터 준비
        - 데이터 크롤링
            : 유투브 채널 별 크롤링이 되는 채널, 비디오 영상이 존재하고 크롤링이 되지 않는 채널, 비디오가 존재 (원인: 개인 별 다양한 설정 등등)
               : 데이터 크롤링 방법
        - chrome extension gadget 및 유투브 Tuber 패키지 활용 등
        - b) 유투브 데이터 처리
        - c) 결과 출력

    - B.패턴(Pattern recognition)- 유투브 채널 별, 비디오 별 정적/동적 정보 크롤링
    - C.	추상화(Abstraction)- 유투브 모든 데이터 및 패키지 내용을 모든 기능을 알 필요 없이 본 문제에서 필요한 부분만 필터링해서 고려. 즉, 불필요한 부분은 고려하지 않음. 
        * i.	예) 유투브 영상에서 연관성이 없는 데이터는 고려하지 않음. 
    - D.	알고리즘(Algorithm)- 순차적 나열

+	2) 슈도코드 및 다이어그램
+	3) R코드 작성 및 디버깅

[참고] 유튜브 채널 명시적 함축적 데이터 분석을 활용하여 플립드 러닝을 극대화할 수 있을까? [15]

+	최근 연령에 상관없이 영어,중국어 등의 어학분야는 물론 다양한 분야에서 평생교육에 대한 관심이 높아지면서 인터넷 강의, 라디오, 학습용 어플 등 스마트폰 기반의 다양한 컨텐츠가 관심을 끌고 있다. 스마트폰 사용자가 증가함에 따라 오프라인 보다 온라인 컨텐츠 수요가 증가하고 있는 것이다. 하지만 위와 같은 온라인 서비스는 사용자의 자발적인 학습 동기를 필요로 하기 때문에 시간이 지날수록 의욕이 저하되고 학습에 흥미를 잃기 쉽다.
+	이러한 온라인 학습자들의 특성을 반영하여 유튜브 기반 학습 채널의 인기가 높아지고 있다. 인터넷 강의는 ‘오프라인 수업’이라는 기존 개념이 아닌, 시공간을 초월하여 언제 어디서나 학습할 수 있는 교육학에서의 플립드 러닝(flipped learning)[16]과 유사하다. 특히, 유투브는 자유로운 분위기에서 유튜버가 내용을 재미있게 구성하고 소셜 정보망에서 다수의 선택을 받는 영상들을 통계적으로 분석해볼 수 있는 빅 데이터를 제공하기 때문에 이를 활용하면 교육 효과를 극대화할 수 있다. 즉, 동영상을 활용한 교육은 텍스트 위주의 교육만큼 집중도를 요구하지 않고 사용자들이 부담없이 여유 시간에 이용할 수 있기 때문에 효율적인 교육 방안으로 다가온다. 특히, 네이티브 기반 영어 학습 채널(native based English Education)은 물리적인 한계를 해결하여 누구나 실시간(real time) 혹은 스트리밍(pre-recorded streaming) 으로 교육받을 수 있기 때문에 유투브를 활용한 교육방법은 플립드 러닝에 장점을 극대화할 수 있다. 
+	하지만 기술의 발전 및 빅 데이터 출현으로 유투브 채널이 기하 급수적으로 급증함에 따라 사용자들은 오히려 개인 맞춤형 영상 선택에 큰 어려움을 겪고 있다. 즉, 사용자들은 어떤 채널을 선택할지 어려움을 겪게 되고 좋은 채널을 찾기 위해 검색 혹은 직접 컨텐츠를 비교하는 등의 추가적인 시간을 들이게 된다. 
+	결과, 유튜브 영어 학습 채널을 중심으로 유튜브에서 제공하는 각종 데이터를 명시적(explicit) 및 함축적(implicit) 분석을 통해 플립드 러닝 효과를 극대화하기 위한 채널 추천 기법을 제안할 수 있다[15]. 유튜브 채널 랭킹 사이트인 social blade[17]의 자체 순위가 비슷한 채널 4개를 대상으로 R의 tuber 패키지를 이용해 수집한 채널의 조회수, 좋아요수 등의 수치 데이터를 바탕으로 1차적 통계를 내고 댓글의 감성분석을 통해 긍정도와 부정도를 계산한다. 최종적으로 수치 데이터 통계와 감성분석 결과를 토대로 하여 사용자에게 영어 학습 채널을 추천하여 시공간에 구애 받지 않는 플립드 러닝 효과를 극대화 한다. 제안하는 기법은 어학 분야는 물론 다양한 분야에서의 유투브 채널 빅 데이터 분석에도 사용할 수 있기 때문에 다양한 컨텐츠들의 플립드 러닝에 활용될 수 있다.
+	연구 대상 채널은 신생 채널임을 고려하여 Social blade[16]의 자체 등급인 B-에 해당하는 영어 학습 채널로 하였고 그 중 다음과 같은 소셜 정보망 데이터를 고려하여 세부 기준을 정하고 필터링하였다. 구독자수는 물론이고 조회수, 좋아요 수가 월등히 높은 영어 학습 채널들은 일반적으로 채널 개설 일이 오래되었기 때문에 동영상의 수는 물론이고 인지도 또한 높았다. 하지만 최신 영상을 고려하기 위해 2016년부터 2018년 사이에 개설된 채널을 선정했다. 유튜브 채널은 각각의 특성(concept)을 가지고 있는데, 영어 학습 채널은 크게 강의형과 토커(talker)형 으로 나뉜다. 사용자들이 인터넷 강의보다 유튜브를 선호하는 이유 중 하나는 형식적이지 않고 자유로운 분위기의 컨텐츠를 통해 영어를 학습할 수 있기 때문이다. 그래서 강의형을 제외한 토커형의 채널을 중심으로 ETJ English, Interactive English, JForrest English, Real English With Real Teachers, 총 네 개의 채널을 대상으로 진행하였다.
+	 연구 방법은 통계 분석용 소프트웨어 R의 tuber 패키지를 사용하였다. 크롬 확장 도구 SelectorGadget을 사용했던 연구[18]가 있지만, 빅데이터 분석을 위해 다양한 패키지가 존재하는 R의 특성[19]을 고려하여 유튜브 전용 tuber 패키지를 활용하였다. 유튜브에서 해당 데이터를 크롤링하고 1차적 수치 소셜 정보망 데이터에 대한 통계 그래프를 명시적으로 추출하였다. 이후, 유튜브 데이터 접근 전용 패키지 및 구글 오픈 API[19]를 통해 각 채널에서 각 동영상 별 댓글 빅 데이터를 크롤링하여 유튜브 데이터 질적 분석을 수행했다. 
+	전반적인 연구 과정은 다음 그림과 같다. Tuber패키지로 유튜브 채널 데이터를 크롤링한 후, 데이터 유형에 맞추어 각각 다른 연구 방법을 설정한다. 좋아요수, 구독자수와 같이 소셜 수치데이터는 상호 관계를 토대로 그래프를 추출하고 수치데이터로는 알 수 없는, 실제 사용자들이 채널에 대한 의견이 반영된 댓글 데이터는 감성분석을 통해 질적 접근 방식을 적용한다.<br>
    

 <div style="text-align: center"> 
    
   ![fig3_6](https://user-images.githubusercontent.com/40076487/75109369-71d9b480-5665-11ea-8c64-3a605673d249.jpg) 
    
<div style="text-align: left">   

    



+	Rstudio환경에서 유튜브 데이터 접근 전용 패키지 및 구글 오픈 API[20]를 활용하여 빅 데이터를 분석했다. 다음그림은 성능평가 결과를 보여준다.  The English Coach 채널의 동영상 수는 28개로, 네 개의 채널 중 가장 적지만 각각의 영상들의 조회수가 높은 것을 확인할 수 있다. Interactive English 채널은 영상수가 많지만 Real English with Real Teachers 채널과 비교하였을 때 조회수가 일정하지 않은 것으로 보아 사용자들의 평가가 영상별로 다른 것을 알 수 있다. 또, JForrest채널은 네 개의 채널 중 가장 낮은 조회수 분포이지만 일정함을 보이고 있다. 즉, 기존 연구들과 같이 단순히 소셜 정보망 데이터를 활용한 명시적 분석으로는 함축적으로 영상의 인지도를 알 수 없기 때문에 명시적 및 함축적으로 동시에 분석하는 본 연구가 의미가 있다고 판단된다.<br>

  <div style="text-align: center"> 
    
  ![fig3_7](https://user-images.githubusercontent.com/40076487/75109370-72724b00-5665-11ea-9507-18679747bf4b.jpg)
    
<div style="text-align: left">  

<div style="text-align: center"> 
    
  <머신러닝 기초 및 응용 기반 데이터 분석>
<div style="text-align: left">

예제 2) 머신러닝 개념을 활용한 데이터 분석 기초
+	등장배경
    *	머신러닝이란? 대부분 머신러닝 방법은 주어진 빅 데이터에서 데이터 특성을 표현해주는 선(line)을 찾는 것. 혹은 선을 긋는 것. 이라고 정의할 수 있음
    *	머신러닝 알고리즘은 여러 개가 있으며 알고리즘을 바탕으로 방정식에서 coefficient들을 구할 수 있으며 최적의 coefficient를 구하고 완성된 방정식 y = ax+b을 모델이라고 함. 주어진 데이터에서 패턴을 찾고 (학습하여) 알고리즘을 이용해서 모델을 구하는 것. 
    *	결과, 머신러닝 종류는 다음 그림들과 같이 분류될 수 있음.
        *	회귀모델- 연속적인 실수형 숫자(y)를 예측하는 방식. 데이터(x,y)를 가지고 x’’의 숫자 y’’를 예측하는 것.
        *	분류모델 – 이산적인 분류가 되는 y를 예측하는 방식. 데이터(x,y)를 가지고 x’’의 y’’를 분류하는 것.
        *	클러스터링(군집) – 사전 정보(답)가 없이 클러스터링. 데이터(x)를 가지고 x를 n개로 나눠보는 것.

![fig3_8](https://user-images.githubusercontent.com/40076487/75109264-422aac80-5665-11ea-8868-576200fbebec.png)
![fig3_9](https://user-images.githubusercontent.com/40076487/75109265-435bd980-5665-11ea-8058-956b54e0c396.png)
+	예) 분류모델을 위한 R코드 샘플
![fig3_10](https://user-images.githubusercontent.com/40076487/75109266-43f47000-5665-11ea-83f8-4e6db175fff7.png)
![fig3_11](https://user-images.githubusercontent.com/40076487/75109267-448d0680-5665-11ea-989d-547526e3e017.png)
![fig3_12](https://user-images.githubusercontent.com/40076487/75109268-45259d00-5665-11ea-8166-96eb51cda48c.png)
![fig3_13](https://user-images.githubusercontent.com/40076487/75109269-45259d00-5665-11ea-93da-725b125be702.png)
+	기타, reinforcement learning 및 recommendation분야도 있음.
    +	예) movielens데이터에서 아이템 쌍 (parit)간 PCC(Pearson Correlation Coefficient) 및 COS(Cosine Similarity) 분석을 활용한 소셜 정보 기반 추천 시스템 분석 가능성 테스트
        *	Social information based Recommender system with PCC and COS
        *	데이터 특성
            +	movielen.txt파일 처음 부분

![fig3_14](https://user-images.githubusercontent.com/40076487/75109270-45be3380-5665-11ea-99cd-ba27e7cde1bd.png)
+	movielen.txt파일 마지막 부분
![fig3_15](https://user-images.githubusercontent.com/40076487/75109271-45be3380-5665-11ea-9158-0c16ef73d7df.png)

+	Rstudio에서 동일한 디렉토리에 있는 movielen.txt를 읽고 data frame으로 변환 후 출력해본 경우

* a <- read.table("movielen.txt") ##movielen.txt 읽음
* qty <- data.frame(a$V4,a$V5)  ##movielen.txt의 4,5번째 열으로 dataframe qty만듬

![fig3_16](https://user-images.githubusercontent.com/40076487/75109272-4656ca00-5665-11ea-84b0-5e88978b2621.png)
+	데이터프레임 qty를 출력했을 때 앞부분과 뒷부분

![fig3_17](https://user-images.githubusercontent.com/40076487/75109273-46ef6080-5665-11ea-890f-3fad67ce4b29.png)
![fig3_18](https://user-images.githubusercontent.com/40076487/75109275-46ef6080-5665-11ea-9674-7f4a533cc080.png)
+	movielen.txt에서 아이템 쌍 평점 간 PCC와 COS가 0.5점 이상인 경우 향후 소셜 정보 (사용자간 trusters, trustee)기반 추천 시스템 디자인에 활용될 수 있음을 R로 검증

![fig3_19](https://user-images.githubusercontent.com/40076487/75109276-4787f700-5665-11ea-97fe-68ccec20dfab.png)
![fig3_20](https://user-images.githubusercontent.com/40076487/75109277-48208d80-5665-11ea-98f9-ccd5b1d9d853.png)
![fig3_21](https://user-images.githubusercontent.com/40076487/75109278-48208d80-5665-11ea-8d8e-3d75c78844f0.png)
![fig3_22](https://user-images.githubusercontent.com/40076487/75109279-48b92400-5665-11ea-9ca9-be78897c1d36.png)

 +	y축 값의 범위를 아래와 같이 다양한 각도에서 테스트

![fig3_23](https://user-images.githubusercontent.com/40076487/75109280-4951ba80-5665-11ea-8bbc-481f3b538671.png)
![fig3_24](https://user-images.githubusercontent.com/40076487/75109281-49ea5100-5665-11ea-8d49-9994853e099a.png)   

+	R에서 t function은 transpose기능을 가지고 있음. 
    +	결과, t(qty)를 출력해보면 다음과 같음.
   
![fig3_25](https://user-images.githubusercontent.com/40076487/75109282-49ea5100-5665-11ea-8fe8-decbd1483467.png)
![fig3_26](https://user-images.githubusercontent.com/40076487/75109283-4a82e780-5665-11ea-8f04-689a7bbcb3cb.png)

+	movielens_100k_item_pcc_cos_count 데이터 테스트
![fig3_27](https://user-images.githubusercontent.com/40076487/75109285-4b1b7e00-5665-11ea-9e8f-c2bdd8c9257a.png)
![fig3_28](https://user-images.githubusercontent.com/40076487/75109286-4c4cab00-5665-11ea-9420-f8780d606031.png)

<div style="text-align: center"> 
    
  < facebook 워드 클라우드 시각화 (응용)>
  
<div style="text-align: left">
    
예제 3) stop words를 추가로 고려한 facebook 워드 클라우드 시각화 (응용)
+ 문제정의
    + ABC News 페이스북의 뉴스피드 글에 나타나는 단어들의 빈도수 분석을 통해 뉴스에 관련된 관심사를 ‘워드 클라우드(WordCloud)’로 시각화

![fig3_29](https://user-images.githubusercontent.com/40076487/75109287-4ce54180-5665-11ea-8a0f-29b2e0e90f2f.png)
![fig3_30](https://user-images.githubusercontent.com/40076487/75109288-4d7dd800-5665-11ea-923b-5dda2db176d3.png)
![fig3_31](https://user-images.githubusercontent.com/40076487/75109289-4d7dd800-5665-11ea-8731-9314ae308029.png)
![fig3_32](https://user-images.githubusercontent.com/40076487/75109290-4e166e80-5665-11ea-8e17-35ca9e271c1c.png)
![fig3_33](https://user-images.githubusercontent.com/40076487/75109291-4eaf0500-5665-11ea-8cf8-7564700c1aee.png)
![fig3_34](https://user-images.githubusercontent.com/40076487/75109292-4f479b80-5665-11ea-8500-b634491c9027.png)
![fig3_35](https://user-images.githubusercontent.com/40076487/75109293-4fe03200-5665-11ea-92aa-7a473803f364.png)
![fig3_36](https://user-images.githubusercontent.com/40076487/75109295-5078c880-5665-11ea-8e30-a8447b63fbd4.png)
![fig3_37](https://user-images.githubusercontent.com/40076487/75109297-5078c880-5665-11ea-9132-6f4d7c957158.png)
![fig3_38](https://user-images.githubusercontent.com/40076487/75109298-51a9f580-5665-11ea-98d3-d5dd7501200a.png)
![fig3_39](https://user-images.githubusercontent.com/40076487/75109299-52428c00-5665-11ea-9f95-cc5dbd0cc4b8.png)
![fig3_40](https://user-images.githubusercontent.com/40076487/75109300-52428c00-5665-11ea-8dc9-52176a90118a.png)
![fig3_41](https://user-images.githubusercontent.com/40076487/75109301-52db2280-5665-11ea-88b0-75260f3230d5.png)
![fig3_42](https://user-images.githubusercontent.com/40076487/75109303-540c4f80-5665-11ea-936a-32cd5067abd3.png)
![fig3_43](https://user-images.githubusercontent.com/40076487/75109304-540c4f80-5665-11ea-99e7-1fbe560eb81b.png)
![fig3_44](https://user-images.githubusercontent.com/40076487/75109305-54a4e600-5665-11ea-9156-21de0325cbfe.png)
![fig3_45](https://user-images.githubusercontent.com/40076487/75109307-553d7c80-5665-11ea-8dfc-f38dd01ebe9e.png)
![fig3_46](https://user-images.githubusercontent.com/40076487/75109308-55d61300-5665-11ea-85fb-d06d01be0430.png)
![fig3_47](https://user-images.githubusercontent.com/40076487/75109309-566ea980-5665-11ea-809c-14de93a28760.png)
![fig3_48](https://user-images.githubusercontent.com/40076487/75109310-579fd680-5665-11ea-99f8-9e756e4a4b48.png)+	stop words제거 전&후 워드 클라우드 비교 시각화 및 파일 자동생성
    +	tm (text mining) 패키지를 활용하여 stop words추가 제거
    +	2개 이상의 워드 클라우드를 동시에 시각화해서 비교 분석
    +	클라우드 결과 파일 자동 생성
+	각 패키지 안에 내장된 다양한 함수 활용 : stopwords( )
+	결과 파일 자동 생성 : savePlot( )
+	코드원본은 아래 github에서 다운받아 활용 가능
+	facebook 크롤링 후 워드 클라우드로 시각화(기본-stop words고려 하지 않음)
https://github.com/hyoh79/Data-Analysis/blob/master/20180615_facebook1.R
+	facebook 크롤링 후 워드 클라우드로 시각화(응용-stop words고려함)
https://github.com/hyoh79/Data-Analysis/blob/master/20180615_facebook.zip
![fig3_49](https://user-images.githubusercontent.com/40076487/75109311-58386d00-5665-11ea-9f72-0d0c67798256.png)
![fig3_50](https://user-images.githubusercontent.com/40076487/75109312-58386d00-5665-11ea-9bcf-ad21933dd233.png)
![fig3_51](https://user-images.githubusercontent.com/40076487/75109313-58d10380-5665-11ea-89e0-65329cd2661b.png)
![fig3_52](https://user-images.githubusercontent.com/40076487/75109315-59699a00-5665-11ea-945d-3f5eeca7b2c5.png)
![fig3_53](https://user-images.githubusercontent.com/40076487/75109316-5a023080-5665-11ea-8895-637a69e55e58.png)
![fig3_54](https://user-images.githubusercontent.com/40076487/75109317-5a023080-5665-11ea-9f40-cac475cfe513.png)
![fig3_55](https://user-images.githubusercontent.com/40076487/75109320-5a9ac700-5665-11ea-830a-b40434bdd2c5.png)
![fig3_56](https://user-images.githubusercontent.com/40076487/75109321-5bcbf400-5665-11ea-984d-9eaf1c371d1a.png)
<div style="text-align: center"> 
    
  < 통계분석방법 소개 및 다양한 예제들 비교 분석 >
<div style="text-align: left">
    
예제 4) 통계분석방법 소개 및 데이터 분석
+	문제정의
    *	그룹, 변수의 개수 및 변수의 종류에 따라 11가지 통계분석 방법이 존재함을 인지하고 문제 유형에 제일 적합한 통계분석기법을 선택. 

![fig3_57](https://user-images.githubusercontent.com/40076487/75109322-5c648a80-5665-11ea-8dec-a9b2f61babe3.jpg)
    
+	통계분석방법 소개
	+ 차이 검정 (t-test, ANOVA: analysis of variation)
        + 소프트웨어 교육의 효과를 다 각도에서 분석 하는 방법론 간단히 소개
+	관계 검정 (상관 분석1:1, 회귀 분석1:N, 교차 분석)<br>

 ![fig3_58](https://user-images.githubusercontent.com/40076487/75109323-5cfd2100-5665-11ea-9db3-470a7ff94f2a.png)

<div style="text-align: center"> 
    
  < 컴퓨팅 사고 기반 숫자 맞추기 게임 확장(응용) >
  
<div style="text-align: left">
    
예제 5) 컴퓨팅 사고 기반 숫자 맞추기 게임 완성 예시
+	문제정의
    +	두 객체가 게임하듯이 인터렉티브하게 다른 객체가 소유한 숫자를 맞추는 것을 목표로 함.
    +	앞서 언급했듯이, 컴퓨팅사고를 통해 기초 슈도코드 및 R코드를 작성할 수 있지만, 자유롭게 아이디어를 생각해서 기존 컴퓨팅 사고 과정의 적절한 단계를 확장하면 됨.
        *	자유롭게 생각할 수 있는 아이디어 예시들
            +	숫자맞추기 게임에서 힌트 확장
                -	“추가적인 연산활동 유도”
                - 사용자에게 시작 범위를 받고, 끝나는 범위를 받음. 
                -	힌트를 자릿수 고려. (예: 1부터 99999)
                -	짝수와 홀수 힌트를 고려! Sys.date( ),
                    *	다양한 연산자 활용으로 힌트 제공, (예: %%활용 등등)
            +	숫자맞추기 게임 난이도 조절
                -	논리연산자 활용
                -	2자리 이상의 숫자 및 자리수까지 맞추기
                    *	숫자야구게임 응용
            +	숫자맞추기 게임에서 승패 유무기반 참여도 극대화
                -	게임 승률을 계산 후 출력, repeat,
                -	사용자 점수 수식 정의 및 활용
                -	숫자맞추기 게임에서 정확도 혹은 기타 요구사항 고려
                -	게임유저 닉네임 출력 및 활용
                -	숫자를 맞춘 경우와 틀린 경우 다른 소리 생성 기법 
                -	시간 개념 고려, Sys.time( ) (예: 시간 제한)
                -	게임 유저를 2인 이상으로 확대 시도
                -	숫자 뿐만 아니라, 문자 맞추기 게임으로 확대 시도. (예: 문자 데이터를 메모리 공간에 저장하는 scan(what=“”)활용
                -	정답과 실패 별, 효과음, 이미지 생성 활용 기법
                -	정수 뿐만 아니라 실수 (float)까지 맞추는 게임으로 확대 시도
[참고] 숫자 맞추기 게임을 플립드 러닝기반 (자기주도적)으로 완성한 이산적 컴퓨팅사고력 R응용의 대표적인 예시(답안) 보고서가 있을까?

+	보고서 답안 샘플(1)
    +	1) 제일 초기에 생성한 1회성 숫자 맞추기 게임 확장을 위한 아이디어 수집을 위해 ‘숫자 맞추기 게임’, ‘Up and Down game’ 두 가지 키워드로 검색을 수행했다. 그 결과 1) 컴퓨터가 임의로 고른 숫자를 사용자가 맞추는 과정에서 힌트를 주는 방법에 대한 차이점을 파악하였으며, 2) 컴퓨터가 고른 숫자의 배열이나 범위에 차이를 줄 수 있겠다는 생각을 해 보았다.
    +	첫 번째 경우는 사칙연산을 학습하는 교육용 게임으로 실질적인 사용을 확인하였다. 컴퓨터가 고른 임의의 숫자에 대한 힌트를 단순히 작다, 크다가 아닌 덧셈, 뺄셈 부호를 사용해 표현하는 방법을 제안할 수 있다. 덧셈 게임의 경우를 예로 들어보겠다. 우선 computer_num변수에 할당할 숫자를 1에서 10사이의 숫자로 제한하고, 사용자로부터 1~10사이의 숫자를 입력 받아 user_num에 할당한다. 이 user_num을 computer_num에서 뺀 값을 출력해 사용자에게 보이도록 한다. 이를 통해 사용자는 자신이 입력한 숫자와 출력된 숫자의 합으로 computer_num의 숫자를 유추해낼 수 있다. 이를 R언어로 표현하면 다음과 같다. (실제로 게임을 수행하는 부분만 코딩하였음. 게임 횟수 지정, 게임종료후 회귀 등의 응용은 이어질 확장 시나리오에서 다룰 예정)

![fig3_59](https://user-images.githubusercontent.com/40076487/75109324-5d95b780-5665-11ea-8c94-67d38ad4a3a1.png)
+	기본적인 up&down게임과 원리는 같다고 볼 수 있으나, 임의로 정해진 computer_num을 맞추기 위해 사용자가 입력한 숫자를 기준으로 정답의 힌트를 제공하는 방식에 차이점이 있다. 단순히 크다, 작다라는 힌트로는 어떠한 학습 효과를 기대하기 어렵지만, 사칙연산을 배우는 단계에서 반복적인 연산 훈련을 위해 위의 소스를 사용할 수 있다.
+	두 번째로 computer_num이 가진 숫자가 기본 1개인 경우를 확장하여 2개 이상의 숫자를 가짐에 따라 그 숫자에 대한 힌트를 각각 주는 방식을 고안해 냈다. 겹치지 않는 임의의 두 숫자를 각각 computer_num[1], computer_num[2]로 나타낼 수 있다. 이 경우 사용자에게 게임의 성공조건(두 숫자 중 하나만 맞춰도 정답)을 출력한 뒤 게임이 진행된다.

![fig3_60](https://user-images.githubusercontent.com/40076487/75109325-5d95b780-5665-11ea-8d83-70c7503c3906.png)

+	초반 코드는 기본 숫자 게임과 동일하다. 조건을 거는 if문 후에 if가 아닌 경우 중 특정한 경우를 지정하기 위해 else가 아니라 else if를 사용한 코드를 사용했다.

![fig3_61](https://user-images.githubusercontent.com/40076487/75109326-5e2e4e00-5665-11ea-8857-a7694452bd44.png)

+	앞선 기존 프로젝트와 결정적으로 다른 점은, 인덱싱 된 두 개의 숫자에 대해 각각 힌트를 부여했다는 점이다. 주석을 통해 알 수 있듯이, 사용자가 지정한 숫자가 컴퓨터가 지정한 두 숫자보다 작거나 클 수도 있는 상황을 고려하였다. 예를 들어 뽑힌 두 숫자가 7, 10인 경우 사용자가 7 이하의 숫자를 입력하면 두 숫자 모두 7보다 크기에 정답은 더 큰 숫자라는 문구가 출력된다. 그러나 사용자가 숫자 8을 입력하면 첫번째 숫자 7보다는 크고 10보다는 작다는 문구가 출력된다. Source 수행시에 가장 윗줄에서부터 차례로 코딩되는 특성에 비추어, for문(반복문) 안의 문장 순서를 논리적으로 치환하였다. 첫번째로, 제일 먼저 사용된 두 개의 조건문에서 남은 게임 횟수를 고려하게 된다. 게임 횟수가 소진되지 않은 경우에만 다음 절차로 넘어가게끔 하여야 횟수소진으로 게임이 종료된 후에도 힌트문구가 출력되는 오류를 방지할 수 있다. 그 다음 else if문으로 user_num과 computer_num이 일치해 정답인 상황을 두 번째로 고려하여, 정답을 맞춰서 게임이 종료된 경우에 힌트문구가 출력되는 오류를 막았다. 한 마디로 횟수 소진 여부 판별, 정답 여부 판별이 이루어지고 나서야 힌트가 주어지는 식으로 명령어 순서를 바꾼 것이다.
+	위의 분석을 통해 원리의 프로그램일지라도 프로그래머의 역량에 따라 다방면의 사용도가 나올 수 있다는 점을 깨달았으며, 선험에 의해 이미 공유된 정보를 활용하는 능력 또한 상당히 중요하다는 점도 깨달았다. 정보화 사회 속에서 발달된 전세계 인터넷망을 통해 우리는 마음만 먹으면 원하는 작업을 실행할 수 있는 다양한 소스들을 너무나도 쉽게 구할 수 있다. 쉽게 구할 수 있는 소스들로 단순 작업만을 실행하기보다는 그렇게 구한 지식을 적절히 응용/확장하여 적재적소에 사용하는 능력이야말로 현대 지식인들이 갖추어야 할 가장 중요한 역량이 될 것이라는 확신을 가지게 되었다. 당장에 우리가 즐기는 게임을 떠올려봐도, 비슷한 장르와 틀 속에서 어떻게 더 참신한 스토리나 게임방식이 등장하느냐, 얼마나 더 편리하고 직관적인 UI를 제공하느냐에 따라 그 화제성과 호응도는 천차만별이다. 이처럼 이미 공개된 프로그램을 어떻게 변형시켜 기존 것과 다른 것을 만들지에 대한 컴퓨팅적 사고가 상당히 중요하다고 사료된다. 기존에 주어진 코드에서 순서를 바꾸고 세부사항을 수정하여 디버깅을 완수한 후, 1)힌트를 주는 방법에 차이를 줌과 동시에 2)컴퓨터가 고른 숫자의 배열이나 범위에도 차이를 주는 방식으로 6개의 숫자를 뽑아서 진행하는 모의 로또 게임을 만든 후, 게임 완료 시간 출력 등의 세부사항을 추가해 스크립트를 확장하도록 해보겠다.
 
+	2) 우선 기본적인 3회성 게임 소스를 기반으로 사고를 확장시키는 과정을 거쳤다. 추가/수정하고자 한 사항은 다음과 같다.

    +	1) 컴퓨터가 가진 5개의 숫자를 모두 맞추어야 당첨금을 지급하는 게임 (가제:스피드 로또) 생성
    +	2) 할당된 변수에 각각 힌트를 주는 것이 아닌, 맞춘 숫자 개수로 힌트를 제공
    +	3) 컴퓨터가 임의로 뽑는 숫자의 개수와 범위 조정
    +	4) 정답 출력 문구 수정/당첨금 출력
    +	5) 몇 번 만에 정답을 맞췄는지 출력,
    +	6) 게임을 시작한 후 정답을 맞추기까지 걸린 시간을 가시화
    +	7) 맞춘 시간÷임의의 당첨금 된 숫자를 최종 당첨금으로 출력
    +	8) 최종 당첨금 출력 후 게임 리셋 여부를 입력받음
    +	9) 리셋 혹은 게임 완전종료
+	스피드 로또(가제)의 진행 순서는 다음과 같다. 컴퓨터가 특정 범위 내에서 5개의 숫자{이하 correct_num[j])를 겹치지 않게 뽑고(replace=F), scan()을 통해 사용자로부터 랜덤 숫자(user_num[k])를 각각 다섯개 입력받는다. 입력받은 user_num[j]를, 이중for문을 활용해 computer_num[k]와 각각 대조한다. 이 경우, 실제 로또게임과는 달리 자릿수를 고려하지 않고 단순히 일치하는 숫자의 개수를 센다.(정답 순서 무관) user_num[1]과 computer_num[1]~[5]까지의 숫자가 하나라도 일치하면 correct라는 변수에 1을 더해준다. 이와 마찬가지로 user_num[j]이 computer_num[k]과 일치하는 개수가 correct에 카운팅되고, if문을 통해 correct 변수가 +5가 된다면 정답문구가 출력되도록 cat()을 사용한다.
+	게임의 전체적인 진행 구성은 이러한데, 최종 결과 출력을 위한 키포인트라고 할 수 있는 시간정보 출력을 위해 Sys.time()함수를 이용해 start_time과 end_time 변수에 게임이 시작되고 끝나는 시간을 기록한다. 이 두 변수의 차를 이용해 정답을 맞추기까지의 시간을 gametime이라는 변수에 저장한다. 이 변수로 당첨금에 패널티를 부여함으로써 가변적인 당첨금이 출력된다.
+	이후 사용자가 당첨금을 확인후 새로운 게임을 진행할 것인지 여부를 while문을 통해서 반복하고, loop라는 변수를 사용해서 while문을 반복시킬 것인지(1) 종료시킬(else) 것인지 여부를 결정한다.
+	본 게임에서의 주안점은 게임 횟수를 입력받던 기존 코드와는 달리 정해진 게임 횟수 내에서 얼마나 빠른 시간 내에 숨겨진 다섯개의 숫자를 맞추느냐다. 정답 숫자 다섯개를 정확하게 입력해야만 당첨금이 지급되며 다섯개의 숫자 중 하나만 틀려도 당첨금이 지급되지 않는 시스템이다. 이렇게 지급된 당첨금에 소요된 시간을 제외시켜 최종적인 금액(최종 스코어)을 계산해 출력해내고, 사용자가 마음에 드는 결과가 나올 때까지 재시도 할 수 있게끔 명령어를 넣어준다.
 
+	3) 코드가 의도대로 작동하는 것을 확인하였으며 주석 작성을 완료했다.

![fig3_62](https://user-images.githubusercontent.com/40076487/75109327-5ec6e480-5665-11ea-9993-7f7543bb1b78.png)
+	4) 테스트

Case1
    
![fig3_63](https://user-images.githubusercontent.com/40076487/75109328-5ec6e480-5665-11ea-90a4-288fac2974fa.png)

Case2

![fig3_64](https://user-images.githubusercontent.com/40076487/75109330-5f5f7b00-5665-11ea-9f13-f28ee76d71c0.png)

Case3
![fig3_65](https://user-images.githubusercontent.com/40076487/75109331-5ff81180-5665-11ea-9f29-de453e2ea8fd.png)
+	{게임 반복 테스트}
-	Case1 다섯 번 내에 다섯 개의 숫자를 전부 맞춤
-	- 게임 종료
-	- 재도전
-	Case2 다섯 번 내에 다섯 개의 숫자 중 일부분 맞춤
-	- 재도전
-	Case3 다섯 번 내에 한 개의 숫자도 맞추지 못함
-	- 재도전

+	[게임 결과 출력 테스트’]
-	Case1 다섯 번 내에 다섯 개의 숫자를 전부 맞춤
-	- 시간 출력, 최종 당첨금 출력
-	- 재도전 여부 출력
-	Case2 다섯 번 내에 다섯 개의 숫자 중 일부분 맞춤
-	- 맞춘 개수 출력
-	- 자동 재도전
-	Case3 다섯 번 내에 한 개의 숫자도 맞추지 못함
-	- 맞춘 개수(0개) 출력
-	- 자동 재도전

caseA
![fig3_66](https://user-images.githubusercontent.com/40076487/75109332-6090a800-5665-11ea-9c1c-2ab361dd6465.png)
caseB
![fig3_67](https://user-images.githubusercontent.com/40076487/75109333-61293e80-5665-11ea-8856-6f0e41b004a7.png)

-	[시간 테스트]
-	CaseA
-	-최대한 빠르게 맞춤
-	CaseB
-	-CaseA에 비해 오랜 시간 대기 후 맞춤
[별첨 1] 1. The Operating System Manages the Hardware (1/8)
![fig3_68](https://user-images.githubusercontent.com/40076487/75109334-61c1d500-5665-11ea-960f-f201e4a5d594.png)
[별첨 2] 1. The Operating System Manages the Hardware (2/8)
![fig3_69](https://user-images.githubusercontent.com/40076487/75109335-625a6b80-5665-11ea-8612-d4767091c5dd.png)
[별첨 3] 1. The Operating System Manages the Hardware (3/8)
![fig3_70](https://user-images.githubusercontent.com/40076487/75109336-62f30200-5665-11ea-8774-83f1a8516618.png)
[별첨 4] 1. The Operating System Manages the Hardware (4/8)
![fig3_71](https://user-images.githubusercontent.com/40076487/75109337-638b9880-5665-11ea-991e-de551daa49c6.png)
[별첨 5] 1. The Operating System Manages the Hardware (5/8)
![fig3_72](https://user-images.githubusercontent.com/40076487/75109338-638b9880-5665-11ea-9e2c-d32392da260d.png)
[별첨 6] 1. The Operating System Manages the Hardware (6/8)
![fig3_73](https://user-images.githubusercontent.com/40076487/75109339-64bcc580-5665-11ea-92bb-96b9a41eaa74.png)
[별첨 7] 1. The Operating System Manages the Hardware (7/8)
![fig3_74](https://user-images.githubusercontent.com/40076487/75109340-65555c00-5665-11ea-8867-6dd5f9cd519d.png)
[별첨 8] 1. The Operating System Manages the Hardware (8/8)
![fig3_75](https://user-images.githubusercontent.com/40076487/75109341-65edf280-5665-11ea-98d0-4c83ff00499c.png)

[별첨 9] 1. Hardware Organization of a System (1/2)
![fig3_76](https://user-images.githubusercontent.com/40076487/75109343-66868900-5665-11ea-840e-bebf4c8651f0.png)
[별첨 10] 1. Hardware Organization of a System (2/2)
![fig3_77](https://user-images.githubusercontent.com/40076487/75109344-671f1f80-5665-11ea-81f2-c0cc4d9f2ce6.png)
[별첨 11] 2. Windows 7 활용

+ 1)	윈도우 탐색기
    + A.	파일 목록 보기 옵션
        + i.	다양한 방식으로 내 컴퓨터에 있는 파일들과 폴더들을 볼 수 있음.
        ![fig3_78](https://user-images.githubusercontent.com/40076487/75109345-67b7b600-5665-11ea-9e75-813bc75716a9.png)
    + B.	속성 표시
        + 1.	칼럼 헤더를 오른 클릭하면 제시되는 메뉴에서 보고 싶은 속성을 선택
         ![fig3_79](https://user-images.githubusercontent.com/40076487/75109346-68504c80-5665-11ea-92e8-d1564bcf431f.png)
        + 2.	메뉴의 '자세히'를 선택하면 속성의 종류와 순서 조정 가능
         ![fig3_80](https://user-images.githubusercontent.com/40076487/75109348-68504c80-5665-11ea-8185-d0766cda76b9.png)
    + C.	파일 삭제
        + i.	윈도우 바탕화면에 존재하는 휴지통 버튼에서 마우스 오른쪽 버튼 클릭 후, 속성 선택
        + ii.	휴지통 속성창이 뜨고 휴지통에 대한 상세 정보 확인 및
        + iii.	일반 사용자들이 파일 및 폴더 삭제 시 “바로 삭제”될지, “화인 후 삭제”될지 선택할 수 있음.
            + 1.	파일을 휴지통이 아닌 바로 삭제하는 방법 1
                + A.	'shift' + 'del' key로 삭제
                + B.	'파일 삭제' 대화상자는 제시됨
            + 2.	파일을 휴지통이 아닌 바로 삭제하는 방법 2
                + A.	아래 그림과 같이 바탕화면의 '휴지통'을 오른 클릭 해서 제시되는 메뉴에서 '속성'을 선택
                + B.	'선택한 위치에 대한 설정'의 '파일을 휴지통에 버리지 않고 삭제할 때 바로 제거' 선택 후 확인
                + C.	shift key를 사용하지 않아도 영구 삭제 가능
-> 주의 : 어떤 경고도 없이 즉시 삭제됨
![fig3_81](https://user-images.githubusercontent.com/40076487/75109349-69817980-5665-11ea-8102-9a4fca1d45b9.png)

+ 2)	시작 메뉴
    + A.	시작 메뉴에 프로그램 아이콘 고정 및 제거
        + i.	빈번하게 사용하는 프로그램은 아래 그림과 같이 아이콘을 시작 메뉴에 고정하면 편리함
        + ii.	시작 버튼 클릭 후 
            + 1.	원하는/고정할 프로그램 아이콘 오른쪽 클릭
                > '시작 메뉴에 고정' 선택
            + 2.	고정된 아이콘을 제거하려면 원하는/해당 아이콘을 오른 클릭 
                > '시작 메뉴에서 제거' 선택
            + 3.	자주 사용하지 않는 프로그램 아이콘을 시작 메뉴에서 제거
                    프로그램 아이콘 오른 클릭 > '이 목록에서 제거' 선택

    + B.	시작 단추 이동
        + i.	'시작' 단추 란?
            + 1.	아래 그림과 같이 작업 표시줄에 있는 “동그란 버튼”이며, 제거는 불가능
            + 2.	아래 그림과 같이 작업 표시줄과 함께 이동 가능
                + A.	보통, 작업 표시줄은 윈도우 화면 맨 아래/하단에 위치하지만 클릭 후 드래그해서 왼쪽 혹은 오른쪽 혹은 상단/위쪽으로 위치시킬 수 있음.
        + ii.	구체적인 이동 방법
            + 1.	작업 표시줄의 빈 공간을 오른 클릭하여 제시되는 메뉴 확인
            + 2.	메뉴의 '작업 표시줄 잠금' 왼쪽에 체크가 되어 있으면 클릭하여 제거
            + 3.	바탕 화면 네 가장자리(오른쪽, 왼쪽, 상단 및 하단) 가운데 중 하나로 이동
            + 4.	해당 위치에 고정하려면 '작업 표시줄 잠금' 선택
![fig3_82](https://user-images.githubusercontent.com/40076487/75109350-6a1a1000-5665-11ea-9fbf-9151781b1e07.png)
![fig3_83](https://user-images.githubusercontent.com/40076487/75109351-6a1a1000-5665-11ea-9159-f0aae93ea076.png)

+ C.	시작 메뉴에 '최근 문서', '즐겨 찾기' 추가
    + i.	아래 그림과 같이 시작 버튼을 마우스 오른쪽으로 클릭 후 “속성”을 선택
    + ii.	“속성”에서 “작업 표시줄 및 시작 메뉴 속성” 창이 뜨면 “시작 메뉴”클릭
    + iii.	“사용자 지정”에서 스크롤바를 내려서 “최근 문서” 및 “즐겨 찾기” 추가 버튼을 선택
        + 1.	주의사항: “사용자 지정” 창에서도 “확인”을 클릭
        + 2.	주의사항: “작업 표시줄 및 시작 메뉴 속성” 창에서도 “확인”을 클릭해야함
    + iv.	결과, 시작 메뉴를 다시 클릭해서 확인해보면 시작 메뉴에 “최근 문서”와 “즐겨 찾기”가 추가 되어 있음을 확인할 수 있음.
![fig3_84](https://user-images.githubusercontent.com/40076487/75109353-6ab2a680-5665-11ea-9af4-09c2a1392ae6.png)
![fig3_85](https://user-images.githubusercontent.com/40076487/75109354-6be3d380-5665-11ea-9778-221d7dbf8a6f.png)
![fig3_86](https://user-images.githubusercontent.com/40076487/75109355-6be3d380-5665-11ea-86e8-c29015477825.png)
+ D.	시작 메뉴에 표시할 프로그램 및 점프 목록 문서 수 조정
    + i.	아래 그림 및 좀 전 C과정에서 했던 것처럼 창이 뜨면 맨 아래에서 문서 수를 조정할 수 있음. (예: 10  20개로 수정 후 시작 메뉴를 클릭해서 확인해보면 차이점을 알 수 있음.)

![fig3_87](https://user-images.githubusercontent.com/40076487/75109357-6c7c6a00-5665-11ea-8466-fed3b56df26d.png)
![fig3_88](https://user-images.githubusercontent.com/40076487/75109358-6d150080-5665-11ea-851a-760ed9d32259.png)[붙임12]<br>
데이터 분석 관련 유용한 R 함수들
+	[참고] apply ( )함수

![fig3_89](https://user-images.githubusercontent.com/40076487/75109359-6dad9700-5665-11ea-8d10-f60364c825d8.png)

+	[참고] 기타 데이터 관리 함수들

![fig3_90](https://user-images.githubusercontent.com/40076487/75109360-6dad9700-5665-11ea-89ea-d6029edf0ec5.png)

+ [참고] 통계 관련 함수들

![fig3_91](https://user-images.githubusercontent.com/40076487/75109361-6e462d80-5665-11ea-8950-01a245361b7c.png)

참고문헌
+ [1] 최병문(대전대학교), 한국형 리버럴아츠칼리지 모델 개발을 위한 연구, 한국 교양 기초 교육원, 2017.12
+ [2] http://kid.chosun.com/site/data/html_dir/2013/04/14/2013041401054.html
+ [3] 아주대학교 블랙보드, https://eclass2.ajou.ac.kr/
+ [4] 2018년 다보스 포럼의 주요 내용과 시사점, http://hri.co.kr/upload/publication/2018119154640[1].pdf
+ [5] 세계경제포럼, https://www.weforum.org/agenda/2016/01/the-10-skills-you-need-to-thrive-in-the-fourth-industrial-revolution/
+ [6] 클라우스 슈밥의 제 4차 산업혁명, http://www.yes24.co.kr/24/goods/25600088
+ [7] Giseop No, Hayoung Oh, Kyu-haeng Lee and Chongkwon Kim,"Toward Trustworthy Social Network Services: A Robust Design of Recommender Systems", Journal of Communications and Networks (JCN), April. 2015. (SCIE)
+ [8] MIT의 scratch, https://scratch.mit.edu/
+ [9] 오하영, “인간의 지능, 본능 및 현실 확장 등의 다양한 문제 해결을 위한 이산적 컴퓨팅 사고 교육 방법론 (Flipped learning 기반 비전공자 소프트웨어 교육 특정 사례를 중심으로)”, 한국교양교육학회 2018 국제학술대회
+ [10] 시스템 프로그래밍,
+ [11] 윈도우 7, 10 기초 (컴퓨터 개론)
+ [12] R과 RStudio를 활용한 데이터 분석 방법론
+ [13] 오하영 외, “컴퓨터와 R을 활용한 텍스트 데이터 분석 기초”, 휴먼싸이언스 2018년 3월
+ [14] 오하영, “컴퓨터와 Python을 활용한 컴퓨팅 사고”, 휴먼싸이언스 2018년 2월
+ [15] 이지현, 오하영, “유튜브 채널 명시적 함축적 데이터 분석을 활용한 플립드 러닝 극대화”, 한국 통신학회 추계종합학술대회, 2018
+ [16] URL https://ko.wikipedia.org/wiki/%EC%97%AD%EC%A7%84%ED%96%89_%EC%88%98%EC%97%85
+ [17] URL https://socialblade.com
+ [18] Yun Hong Chan, Ran Rong and Oh Hayoung, "A Study on the Automatic Ranking of Most Recognizable Channel in YouTube," Proceedings of Symposium of the Korean Institute of communications and Information Sciences, pp. 1431~1431, Jun, 2017.
+ [19] Jong Hwa Lee and Hyun-Kyu Lee, "A study on unstructured text mining algorithm through R programming based on data dictionary," Journal of the Korea Industrial Information Systems Research, Vol. 20, No. 2, pp. 113~124, Apr, 2015. 
+ [20] URL https://developers.google.com/apis-explorer

