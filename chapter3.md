<div style="text-align: center"> 
    
# [R 기초 응용 편][13]

## <프로그램 개발 프로세스>
<div style="text-align: left">


프로그램 개발을 위해서 필요한 과정은 어떻게 되는가? 
![fig2_49](https://user-images.githubusercontent.com/40076487/75106175-228f8600-565d-11ea-89a5-9051e24ad2ab.png)
<div style="text-align: center"> 
    
<미드 슈트에서 등장인물 분석 기초>

<div style="text-align: left">
    
+	예제1) 엑셀 파일에 존재하는 미드 슈트 등장인물들의 관계를 그래프로 시각화
  *	1. 문제정의 단계 [그림. 58 및 그림. 59번 참고]

![fig2_50](https://user-images.githubusercontent.com/40076487/75106176-23281c80-565d-11ea-8e09-cbc7ebda9064.png)
<div style="text-align: center"> 
    
그림. 58. (a) 미드 슈트 등장인물 분석을 위한 문제정의단계

<div style="text-align: left">
    
![fig2_51](https://user-images.githubusercontent.com/40076487/75106177-23281c80-565d-11ea-839d-32bf7ad9ef2a.png)
<div style="text-align: center"> 
    
그림. 58. (b) 미드 슈트 등장인물 분석 (주인공은 누구이고, 엑스트라는 누구일까?)

<div style="text-align: left">

![fig2_52](https://user-images.githubusercontent.com/40076487/75106178-23c0b300-565d-11ea-92e1-381398e75dd1.png)
<div style="text-align: center"> 
    
그림. 59. 미드 슈트 등장인물 분석 후 그래프 그리기 (주인공은 누구이고, 엑스트라는 누구일까?)

<div style="text-align: left">
    
+	2. 요구사항 분석 단계 [그림. 50번 참고]
  -	앞서 언급했지만, 프로그래밍 명령어는 크게 변수와 함수로 구성됨. 따라서, 해당 문제를 해결하기 위해 필요로 하는 핵심이 되는 명사는 변수에 저장하고 문제를 해결하기 위해 필요로 하는 처리과정(동사)은 함수로 해결해야함.
  -	결과, “요구사항 분석 단계”에서는 문제정의에서 핵심이 되는 명사를 고려해서 변수로 저장하고, 동사를 추출하는 단계가 필요로 함. 
  
 ![fig2_53](https://user-images.githubusercontent.com/40076487/75106179-24594980-565d-11ea-9350-c3feb4ecf17a.png)
<div style="text-align: center"> 
    
그림. 50. 미드 슈트 등장인물 분석을 위한 요구사항 추출 (핵심이 되는 명사/동사 추출?)

<div style="text-align: left">
    
+	3. 초기 데이터 설계 [그림. 51번 참고]
  -	RStudio에서 입력 파일로 직접 불러들인 등장인물들과 그들의 관계를 특정 변수(i.e., 컴퓨터 메모리의 일정 공간)에 저장하고 해당 프로그램 명령어 작성시 계속 참고해서 사용 (예: Suits미드 등장인물관계 데이터 엑셀파일을 변수 df에 저장)
  1)	df <- read.csv(“ex3.network_suits.csv”)

 ![fig2_54](https://user-images.githubusercontent.com/40076487/75106180-24594980-565d-11ea-8fe8-cda5116de418.png)
<div style="text-align: center"> 
    
그림. 51. 미드 슈트 등장인물 분석을 위한 요구사항 추출 (핵심이 되는 명사/동사 추출?)
<div style="text-align: left">
    
    - [참고] 중간 데이터 설계란 무엇인가? 프로그램에 초기 데이터가 입력되면 문제 정의를 고려해서 프로그래밍을 하게 되고 중간(진행) 단계에서 약간 변형된 중간 데이터가 발생하게 됩니다. 결과, 해당 중간 데이터를 또 다른 변수에 할당하고 역시 추후 프로그래밍 명령어 작성시 계속 참고해서 사용하게 됩니다.
    -	데이터 설계란 무엇인가? 문제 정의를 고려해서 문법 에러없이 모든 프로그램을 작성하게 되면 원하는 결과 데이터를 얻을 수 있습니다. 보통, 어느정도 의미 있는 문제 정의에 따른 결과 데이터를 뽑는 데까지 사용되는(필요로 하는) 소스의 양은 최소 10라인부터 몇 천만 라인 이상이 될 수 있습니다. 하지만, 프로그래머가 모든 라인에서 문법적 에러가 없이 프로그래밍을 작성한다는 것은 쉬운 일이 아닙니다. 기초 파트에서 이미 언급했듯이, “컴파일러(Compiler)”는 중간에서 프로그래머가 작성한 프로그램들의 문법적 에러를 잡아주고 해결합니다. 
+	4. 입출력 설계 [그림. 52번 참고]
  -	모든 프로그램은 초기 데이터가 다양한 방식으로 주어지면 이를 활용해서 결과를 얻게 됨.
  -	본 예제에서 초기 데이터는 엑섹파일에 존재하는 미드 인물 관계도 였음. 하지만 본 문제에서 얻고자 하는 결과가 주인공과 엑스트라를 구분해서 한 눈에 보여주는 그래프이기 때문에 RStudio를 활용해서 이를 그려줄 수 있는 내부 데이터 변환 단계가 필요.
  -	결과, 본 예제에서 “입출력 설계”는 아래 그림과 같이 원본 엑셀 파일 데이터를 data frame 및 graph형태로 변환한 뒤 주인공과 엑스트라를 구분해서 그래프 형태로 그리는 것임.

 ![fig2_55](https://user-images.githubusercontent.com/40076487/75106181-24f1e000-565d-11ea-9acc-ea78b5f3a973.png)
<div style="text-align: center"> 
    
그림. 52. 미드 슈트 등장인물 분석을 위한 입출력 설계 (입력 및 출력에 사용되는 함수들 취사선택 후 함수 파라미터 개수 및 사용법 확인)
<div style="text-align: left">
    
+ 원본 엑셀파일을 내부적으로 data frame으로 변환하고 graph로 그리는 방법은 다음과 같음.<br>
       1)	예) 초기 엑셀 데이터
   *	테이블 형태로 보여지고 메모리에 저장된 원본 데이터 
   *	본 데이터의 가정 사항
     -	“본 예제에서 등장인물들은 각 노드(vertex)로 표현할 수 있다. 또한, 주인공들은 엑스트라에 비해서 연결 수(number of edges)가 많다. 왜냐하면, 주인공들은 다른 엑스트라나 등장인물들에 비해서 다른 사람들과 접촉이 많은 경우가 일반적이고 이는 각 연결선으로 표현할 수 있으므로, 본 데이터에서 노드와 노드를 연결해주는 연결선의 개수가 많으면 주인공이라고 가정한다.”
2)	예) 데이터 프레임 구조의 데이터
   *	as.data.frame ( )이라는 함수를 활용하여 원본 데이터를 데이터 프레임 구조로 확실하게 변환 후 메모리에 저장
   *	데이터 프레임이란 무엇인가?
     -	본 교재 기초 예제 파트에서 이미 언급했듯이 RStudio에서 프로그램을 작성하고 메모리에 저장하는 방식은 다양한 형태가 존재함. 각 데이터 타입의 형태, 목적 및 사용 문법은 다르기 때문에 정확하게 아는 것이 매우 중요
     -	데이터 타입 첫번째 부류) vector, matrix, array
       +	정수면 정수만, 문자면 문자만, 문자열이면 문자열만, 이렇게 단일 데이터만 한 행 혹은 한 열 단위로 저장할 수 있는 데이터 타입
       +	vector – 동일한 데이터 형태로 2개 이상의 데이터가 연속적으로 저장된 데이터 행 혹은 데이터 열
       +	RStudio에서는 c ( )라는 함수로 벡터 생성 가능.
            예) num <- c(1, 2, 3, 4, 5)
            예) characters <- c(‘a’, ‘b’, ‘c’)
            예) strings <- c(“ab”, “cd”, “ef”)
       +	matrix – vector가 2개 이상으로 구성된 2차원 매트릭스, 결과 동일한 데이터 형태의 행과 열이 동시에 존재하는 m행 n열 (예: m x n구조)
         예) temp_vector <- c(“Hayoung Oh”, “Femle”, “Ajou”)
           dim(temp_vector)<-c(3:1)
           class(temp_vector)
           -> 위와 같이 RStudio 콘솔화면에서 테스트해보면 vector형태의 temp_vector가 matrix형태로 변환된 것을 확인 가능.
        +	array – vector가 다차원의 형태로 구성된 데이터 저장 타입으로 1차원(1-dimensional space)인 matrix와 달리 다차원(m-dimensional space)임을 알 수 있음
    예) temp_vector <- c(“Hayoung Oh”, “Femle”, “Ajou”, “Eunjae”, “Female”, “PSA”)
   temp_array <- array ( temp_vector, dim = c(3, 1, 2))
   class(temp_array)
            -> 위와 같이 2차원의 array를 만들면 각 사람 정보가 분류 되서 데이터가 저장되는 것을 확인할 수 있음. 만약 아래와 같이 특정 원소를 추출하는 인덱싱 연산자 [ ]를 사용해서 콘솔에서 명령어로 테스트해보면 temp_array[1, 1, 2]
              Eunjae라는 사람의 이름이 출력되는 것을 알 수 있음. 

  ![fig2_56](https://user-images.githubusercontent.com/40076487/75106183-24f1e000-565d-11ea-9ea4-7bd6cf67bb92.png)
  ![fig2_57](https://user-images.githubusercontent.com/40076487/75106184-258a7680-565d-11ea-8bf4-582258fc7c3e.png)
  +	데이터 타입 두번째 부류) list, data frame, factor등등
   -	list – vector와 달리 다양한 데이터 형태로 저장될 수 있는 데이터 행 혹은 데이터 열
   -	앞서 언급했던 것과 마찬가지로 list라는 예약어를 사용해서 데이터 생성
  -	하지만 아래 그림과 같이 vector와 달리 list에서는 각 원소들만 추출(인덱싱)해서 산술 연산이 불가능하기 때문에 두 방식의 차이점에 주의해야함.
  ![fig2_58](https://user-images.githubusercontent.com/40076487/75106185-26230d00-565d-11ea-9c93-a36657ee6b6f.png)
  +	data frame – matrix와 달리 다양한 타입의 데이터 열로 생성된 vector들을 한번에 관리하고 저장할 수 있는 데이터 타입
+	data frame 생성 방법 1) 
  *	아래 그림과 같이 성격이 유사한 각 vector을 c ( )함수로 생성 후 이를 한번에 data.frame ( ) 이라는 함수의 인자들로 대입 후 data frame을 생성
 ![fig2_59](https://user-images.githubusercontent.com/40076487/75106187-26230d00-565d-11ea-94ff-2969e1701bf7.png)
 +	data frame 생성 방법 2) 
  *	아래 그림과 같이 vector 생성 함수 c ( )와 차원을 생성해주는 dim ( )를 동시에 사용해서 matrix를 만들고 해당 matrix를 as.data.frame ( )의 인자로 대입 후 data frame을 생성
![fig2_60](https://user-images.githubusercontent.com/40076487/75106188-26bba380-565d-11ea-9b17-038c6ccbaf43.png)
+	[주의사항] data frame 생성 방법1에서는 열(column) 마다 다른 형태의 데이터이기 때문에 c ( )함수를 여러 번 사용했지만, data frame 생성 방법2에서는 모든 행 (row)과 열 (column)의 데이터들이 같은 타입이기 때문에 c ( )함수를 1번만 사용하고 dim ( )함수에서 행, 열, 차원(dimension)을 인자로 지정해서 matrix를 생성하는 것이 주의! 
+	[참고: data frame생성시 잦은 실수들]
1)	아래 사진은 matrix를 만드는데 c ( )함수와 dim ( )함수를 사용하되 동일 데이터 타입의 vector를 생성하는데 c ( )함수를 1번 사용하는게 아니고 사람마다 정보를 담은 vector 생성을 위해 c ( )함수를 여러 번 사용해서 에러가 나는 흔한 경우를 보여줌. 주의해서 실수를 하지 말 것
2)	matrix는 생성시 c ( )함수와 dim ( )함수를 사용해야하는데 matrix라는 용어를 이용해서 문법에 맞아 에러가 나는 경우
![fig2_61](https://user-images.githubusercontent.com/40076487/75106190-27543a00-565d-11ea-9657-ede4c095ba8f.png)
-	결과, 미드 슈트에서 등장하는 등장인물을 담고 있는 * .csv파일을 입력 데이터로 RStudio에서 열고 분석 후 주인공과 엑스트라들로 구분해서 그래프로 그려주는 전체 소스는 다음과 같음.
![fig2_62](https://user-images.githubusercontent.com/40076487/75106191-27543a00-565d-11ea-9afd-3a66d3dd32e1.png)
+	소스 원본은 아래 서버 주소에서 다운받을 수 있음 
     -	[Chrome에서 열어보길 권장, 익스플로워에서는 소스가 깨질 수 있기 때문에 별도의 세팅필요]
http://popeye.snu.ac.kr/~hyoh/courses/R/suits.R
-	[소스 해석]
-	1번 째 줄부터 5번째 줄<br>
1)	문제에 대한 해석과 소스 작성 날짜 등의 부수적인 내용이 주석(Ctrl+Shift+C)으로 달려있음.
-	6번 째 줄 및 7번째 줄
1)	그래프를 그리기 위해 필요한 igraph라는 패키지를 인터넷에서 다운로드<br>
	install.packages(“igraph”)
2)	RStudio에서 사용할 수 있도록 환경 설정
   *	libray(igraph)
   *	패키지 안에는 많은 함수들과 데이터 및 기타 기능들이 많기 때문에 프로그래머가 효율적으로 프로그램을 작성할 수 있음. 
-	9번째 줄과 10번째 줄<br>
1)	데이터 로딩에 대한 주석과 미드 슈트 등장인물 데이터를 담은 * .csv파일을 read.csv( )라는 함수로 RStudio에 읽어온 것을 볼 수 있음
   *	read.csv( )함수의 첫 번째 인자는 읽고자 하는 파일이름
      -	예) *.csv, *.txt 등등
   *	read.csv( )함수의 두 번째 인자 header는 파일 안의 제일 상단에 존재하는 행(row)의 정보를 데이터 이름으로 가지고 올지 말지 선택하는 것.
     -	예) read.csv(*.csv, header=TRUE)는 데이터 이름을 가지고 오는 것
     -	예) read.csv(*.csv, header=FALSE)는 데이터 이름을 가지고 오지 않는 것
-	11번째 줄과 12번째 줄<br>
1)	등장인물 데이터들 중에서 상위 6개를 출력해보고, 데이터에 대한 모든 정보를 출력 후 확인
-	14번째 줄<br>
1)	읽어온 데이터를 담고 있는 변수 df를 as.data.frame ( )함수의 인자로 사용해서 내부데이터를 data frame구조로 변환
-	16번째 줄부터 19번째 줄<br>
1)	결과를 그래프 형태로 출력하기 위해서 data frame구조로 저장된 내부 데이터를 graph.data.frame ( )함수의 첫 번째 인자로 사용함으로써 그래프 데이터 프레임 구조로 변환.<br>
2)	단, graph.data.frame ( )함수의 두번째 인자는 directed라는 개념으로 그래프그 그릴 때 방향성있는 그래프로 나타낼지, 방향성없는 그래프로 나타낼지 선택할 수 있는데, 본 아래 예제에서는 directed = TRUE로 설정했기 때문에 방향성있는 그래프로 그릴 수 있음을 알 수 있음.
![fig2_63](https://user-images.githubusercontent.com/40076487/75106192-28856700-565d-11ea-9df5-0af311e3fa1b.png)
![fig2_64](https://user-images.githubusercontent.com/40076487/75106193-291dfd80-565d-11ea-8fb0-987c6db67630.png)
-	21번째 및 22번째 줄<br>
1)	plot( )이라는 함수로 그래프 형태로 저장된 내부 데이터를 그래프로 그려보는 것.
   *	plot ( )함수의 첫 번째 인자는 그래프 형태로 저장된 내부 데이터 df
   *	plot ( )함수의 두 번째 인자는 그래프를 그릴 때 각 원 (vertex)의 크기를 조절해주는 vertex.size라는 변수 값 설정하는 부분
   *	plot ( )함수의 세 번째 인자는 그래프의 각 원을 식별해주는 이름을 붙일 수 있는 vertex.label이라는 내부 변수 값
     -	V ( )는 그래프에서 원들 (vertex)에 대한 정보를 가져올 수 있는 함수로 $name라는 특정 변수를 추가적으로 지정해서 각 원들의 이름을 가지고 옴을 알 수 있음. 
     
     - vertex.label = V(df)$name
![fig2_65](https://user-images.githubusercontent.com/40076487/75106194-29b69400-565d-11ea-93e5-df0bb47ebbf6.png)
![fig2_66](https://user-images.githubusercontent.com/40076487/75106195-29b69400-565d-11ea-9b15-8881c497ad6f.png)<div style="text-align: center"> 
    
	위 그림에서 각 명령어 마다, 실행 후, 결과를 정확하게! 자세히 확인할 것!
<div style="text-align: left">

![fig2_67](https://user-images.githubusercontent.com/40076487/75106196-2a4f2a80-565d-11ea-944c-239ec9a74668.png)
![fig2_68](https://user-images.githubusercontent.com/40076487/75106197-2a4f2a80-565d-11ea-837f-426a54a748b8.png)<div style="text-align: center"> 
    
	directed = FALSE로 설정하면, 앞의 예제와 달리 방향성이 없는 그래프가 출력되는 것을 확인
<div style="text-align: left">
    
![fig2_69](https://user-images.githubusercontent.com/40076487/75106198-2ae7c100-565d-11ea-9ed9-6e432a025172.png)
+ 	26번째 줄에서 29번째 줄
   * 주인공과 같은 중요한 노드(원)들은 사이즈를 3배 늘려서 그래프로 출력
      -	plot ( )함수의 첫 번째 인자는 데이터
      -	plot ( ) 함수의 두 번째 인자와 세 번째 인자의 순서는 아래 그림과 같이 바뀌어도 문제 없음
        +	아래 그림의 경우,
          *	두번째 인자는 노드의 이름을 인자로 사용
          *	세번째 인자는 노드의 사이즈를 조절
          *	단, degree ( )라는 내장 함수를 이용해서 노드에 연결된 연결선(edge)의 개수를 구할 수 있기 때문에 주인공들은 다른 노드들에 비해서 3배 확장해서 그림.
          *	본 예제에서 우리가 가정했던 “주인공들은 연결 수(number of edges)가 많다. 왜냐하면, 주인공들은 다른 엑스트라나 등장인물들에 비해서 다른 사람들과 접촉이 많은 경우가 일반적이고 이는 각 연결선으로 표현할 수 있으므로, 본 데이터에서 노드와 노드를 연결해주는 연결선의 개수가 많으면 주인공이라고 가정한다.” 내용을 바탕으로 다른 노드들에 비해서 확대해서 그릴 수 있음.
            -	vertex.size = degree(df)*3
+	위 그림에서 각 명령어 마다, 실행 후, 결과를 정확하게! 자세히 확인할 것!
   *	아래 명령어를 앞에서 먼저 실행해봤던 명령어와 비교 결과, vertex.size값을 고정시키는게 아니고 집중도 높은 주인공의 원 크기는 3배해줄 수 있는 것을 보여줌.
     -	degree ( )함수는 각 노드(vertex)에서 연결선(edge)의 개수가 높은 노드의 사이즈를 제어할 수 있음.
   *	아래 2가지 버전의 명령어를 비교해보고, plot ( )함수안의 인자들의 위치는 자유롭게 사용할 수 있고, 각 인자의 기능이 다양함을 다시 한번 인지!
     -	주인공 노드의 사이즈를 3배하는 명령어
     
![fig2_70](https://user-images.githubusercontent.com/40076487/75106199-2b805780-565d-11ea-93e7-041bd059bb16.png)
	
 모든 노드의 사이즈를 동일하게 한 명령어

![fig2_71](https://user-images.githubusercontent.com/40076487/75106200-2c18ee00-565d-11ea-8341-a735574bf3b1.png)

+	31번째 및 32번째 소스
  *	같은 예제를 원형 네트워크 구조 그래프로 출력
    -	이를 위해,
    -	layout이라는 두번째 인자를 활용
    -	layout=layout.circle
  *	plot ( )함수는 소스에 여러 번 사용해도 되지만 보통 소스에서 제일 마지막 plot ( )의 그림만 RStudio오른쪽 아래 화면에 보이기 때문에 아래 소스처럼 20번째 줄부터 29번째 줄까지 주석을 하든 안하든 아래 그림과 같은 화면만 보임을 알 수 있음.
  *	만약, 소스에서 21번째 줄에 있는 첫번째 plot ( )함수의 효과만 보고 싶다면, 오히려 22번째 줄부터 마지막 소스 줄까지 주석을 하고 실행해서 그래프를 뽑아 볼 수 있음. 
+	위 그림에서 각 명령어 마다, 실행 후, 결과를 정확하게! 자세히 확인할 것!
  *	plot ( )이라는 함수에 layout이라는 인자를 추가함으로써 그래프 형태를 원형으로 변경해서 그려볼 수 있음.
    -	전형적인 그래프 이론에서 처럼 노드와 연결선이 한눈에 파악됨으로 각 노드입장에서 degree가 제일 높은 노드들을 파악하기 쉬움.
      -	만약, 방향성까지 가진 원형 그래프를 그려보면, 각 노드 입장에서 연결선이 들어오는 in-degree와 연결선이 다른 노드를 향해서 나가는 out-degree까지 각각 계산해볼 수 있음으로 동일한 연결선을 가지더라도 in-degree가 더 높은 “주인공, 인지도가 더 높은 등장인물”등을 추가로 정의해볼 수 있음.
       -	예) twitter에서는 연예인 혹은 인지도 높은 사람은 “유명한 followee”라고 칭하며 다른 사람들에 비해서 in-degree가 굉장히 높은 편임. 즉, 가만히 있어도 일반 사람들인 follower들이 일방적으로 following하기 때문.
       -	예) 반면, 악의적인 목적으로 다른 사람들에게 많은 following을 보내서 왜곡된 정보를 다 각도에서 노출시키려는 out-degree가 굉장히 높은 노드들도 존재할 수 있음. 
          

+	5. 알고리즘 설계 [그림. 53번 참고]
  -	알고리즘이란 해당 문제를 풀기 위해서 필요로 하는 첫 단계부터 마지막 단계를 의미.
  -	결과, 본 문제를 풀기 위한 알고리즘은 다음 그림과 같음.

!![fig2_72](https://user-images.githubusercontent.com/40076487/75106201-2c18ee00-565d-11ea-9af8-060ec6ef4671.png)
<div style="text-align: center"> 
    
그림. 53. 미드 슈트 등장인물 분석을 위한 알고리즘 설계 (시작부터 종료까지 매 단계를 정의하고 사용할 데이터, 변수 및 함수 등을 구체화하고 시간에 따른 절차도 설계)
<div style="text-align: left">
    
+	본 예제는 아래 그림의 왼쪽 테이블과 같은 입력 데이터를 가진 엑셀파일을 RStudio에서 불러온 뒤, df라는 변수에 저장한 뒤
  1)	내부적으로 data frame 구조를 거쳐 graph를 생성할 수 있는 데이터 타입으로 변환함
  2)	초기 엑셀 데이터 형태와 graph생성 후를 비교해보면
     *	등장인물들 중에서 Mike, Harvey, Louis 및 Hardman이 주인공으로 주변 인물들과 연결선이 최소 2개 이상으로 많은 편임을 직관적으로 확인 가능하며
     *	나머지 등장인물들은 엑스트라 수준으로 연결선이 1개만 존재함을 알 수 있음.

![fig2_73](https://user-images.githubusercontent.com/40076487/75106202-2cb18480-565d-11ea-8939-05b47c241f0c.png)

+	아래 그림은 주인공 별 색깔로 구분 후, 입력 데이터와 결과 그래프를 한눈에 비교해볼 수 있음. 결과, 아래 서버에서 해당 이미지 파일을 다운받아서 직접 비교하면서 생각해보기 바람.
  -	[Chrome에서 열어보고 컬러 사진 확인 권장]
http://popeye.snu.ac.kr/~hyoh/courses/R/suits_circle.jpg
+	또한, 초기 입력 데이터(엑셀 파일)에서 주인공으로 보였던 Mike와 Harvey가 결과 그래프에서도 연결선이 제일 높기 때문에 “아래 그림과 같이” 주인공으로 증명됨을 알 수 있음.

![fig2_74](https://user-images.githubusercontent.com/40076487/75105969-db08fa00-565c-11ea-8864-a50071107b92.png)
<div style="text-align: center"> 
<미드 슈트에서 등장인물 분석 심화>
<div style="text-align: left">


+	예제2) 엑셀 파일에 존재하는 미드 슈트 등장인물들의 관계를 분석 후 문자열로 출력
  *	앞서, 주인공과 엑스트라로 구분해서 그래프로 그린 미드 슈트 등장인물 예제를 문자열로도 출력해서 결과가 동일한지 비교해보기
  *	프로그램 개발 프로세스
    -	앞의 예제와 달리, 출력 결과에서 plot ( )은 물론 cat ( )함수를 활용해서 문자열로도 출력 후 그래프 결과와 비교해보는 것을 알 수 있음.
    -	주인공과 엑스트라를 연결선의 개수로 구분하기 위해서 “조건문”과 “반복문”이라는 R 예약어 및 문법을 정확히 파악하고 사용해 볼 수 있음.
    
![fig2_75](https://user-images.githubusercontent.com/40076487/75105970-dcd2bd80-565c-11ea-8584-e979cd4baf2b.png)

+	문제정의 단계
  *	앞선 예제에서 그래프 결과들은 이미지 파일로 저장해서 결과 데이터를 저장할 수 있음.
    -	또한, 프로그래머가 그래프를 보고 노드의 사이즈 혹은 각 노드에 연결된 연결선의 수 등을 보고 직관적으로 파악 해야함.
  *	반면, 본 예제에서는 주인공과 엑스트라의 이름과 연결선의 개수 등을 직접 출력하고 파일로 관리함으로써 결과 데이터를 확실하게 확인할 수 있음. 또한, 앞의 예제에서 나온 결과 그래프의 결과가 맞는지 출력 데이터 결과와 비교함으로써 결과 검증이 가능하기에 필요로 함.
  *	결과, 아래 그림은 본 확장 문제의 추가적인 문제정의 및 해당 예제를 통해 나올 결과 화면의 예시를 보여줌.
    -	컴퓨터 전원이나 RStudio를 끄더라도 파일로 저장해서 향후 계속 보유하려면 sink ( )함수나, write.table ( )함수 및 write.csv ( )함수등을 활용할 수 있음.
![fig2_76](https://user-images.githubusercontent.com/40076487/75105971-dcd2bd80-565c-11ea-8c7c-3c7c83e724e5.png)
![fig2_77](https://user-images.githubusercontent.com/40076487/75105973-dd6b5400-565c-11ea-88f4-4a11bc1caff0.png)+	요구사항 분석
  *	앞 예제와 대부분 동일한 요구사항 분석이 필요.
  *	다만, 다양한 그래프는 물론 데이터 형태로 출력하기 위해 추가적인 변수들 및 R 예약어 들이 필요로 함.
+	데이터 설계
  *	초기 데이터 및 출력하고자 하는 정보를 각각 저장할 수 있는 변수들 정의가 필요. 
     -	주인공의 수, 
     -	엑스트라의 수, 
     -	주인공들의 이름들, 
     -	엑스트라의 이름들
  *	또한, 출력에는 필요하지 않지만 R 예약어를 문제 없이 사용하기 위해서 추가적으로 필요로 하는 변수들 정의가 필요
     -	주인공들 순서 구분자
     -	엑스트라 순서 구분자
+	입출력 설계
  *	본 예제를 위한 입력 및 출력 함수 선택
    -	입력을 위한 함수
       -	read.csv ( ) – 엑셀파일을 인자로 사용하기 위해 선택
    -	출력을 위한 함수
        -	plot ( ) – 그래프 생성을 위해 선택
            -	그래프 출력을 위해 내부적으로 그래프 형태로 데이터 저장
                1)	as.data.frame ( )함수
                2)	graph.data.frame ( )함수
        -	cat ( ) – print ( )함수와 달리 여러 데이터를 연속적으로 출력할 수 있기에 선택
            -	예) cat (“Hayoung Oh”, 38, “Ajou”, ‘\n’, “Eunjae Baek”, 6, “PSA”)
                1)	cat ( )함수는 문자, 문자열은 물론 숫자형 데이터도 같이 출력 가능
                 2)	‘\n’는 한 칸 내리기, enter, 한 줄 내리기 등의 효과가 있는 특수문자
+	알고리즘 설계
  *	앞선 예제와 달리 미드 슈트 확장 예제에서는 그래프는 물론 문자열의 형태로 결과를 출력해야하기 때문에 아래 그림과 같이 초기데이터를 동시에 활용해서 그래프 (예: 파란색 상자들) 도 그리고 문자열로 출력 하는 것 (예: 연두색 상자들) 을 알 수 있음.
    -	이때, 연두색 상자들을 노드 별 연결선의 수로 세부적으로 구분하기 위해서 화살표가 여러 개 존재함을 알 수 있음.
      -	결과, R에서 “조건문”이라는 기능을 가진 if, else등과 같은 예약어를 활용해서 세부적으로 분리해야함을 알 수 있음.
        + if와 else
          +	흑과 백, 0 또는 1, 있다 혹은 없다 등과 같은 2분법으로만 나뉠 수 있는 경우 사용하는 예약어 (binary data)
        +	if, else if 와 else
          +	3개 이상으로 분류해야하는 경우 사용하는 예약어
          +	예약어
            *	프로그래밍 언어 개발 시 특수 기능을 가지도록 내부적으로 이미 프로그램화 되어 있는 단어들
            *	예약어는 변수 명 및 파일명 등으로 사용하면 안됨.
![fig2_78](https://user-images.githubusercontent.com/40076487/75105974-dd6b5400-565c-11ea-8008-597dde55039d.png)
-	[소스 설명]
![fig2_79](https://user-images.githubusercontent.com/40076487/75105975-de03ea80-565c-11ea-9ba2-acd144acd8de.png)
![fig2_80](https://user-images.githubusercontent.com/40076487/75105976-de9c8100-565c-11ea-8f5f-b4e2d9e280f6.png)
![fig2_81](https://user-images.githubusercontent.com/40076487/75105977-de9c8100-565c-11ea-9f18-5298702164ab.png)
<div style="text-align: center"> 

위 그림에서 각 명령어 마다, 실행 후, 결과를 정확하게! 자세히 확인할 것!
소스 원본은 아래 서버 주소에서 다운받을 수 있음 
[Chrome에서 열어보길 권장, 익스플로워에서는 소스가 깨질 수 있기 때문에 별도의 세팅필요]
http://popeye.snu.ac.kr/~hyoh/courses/R/suits_text.R
-	소스 1번째 줄부터 29번째 줄 까지
	+ 미드 슈트 그래프 그리기 예제와 동일
-	소스 31번째 줄부터 33번째 줄 까지
  + 각 노드 별 연결 수를 변수에 저장 및 출력
    * vertex.size = degree(df)
    *	print(vertex.size)
-	소스 34번째 줄
   +	등장인물의 수 및 등장인물들의 이름 출력
     * print(length(vertex.size))
     *	print(names(vertex.size)
-	소스 36번째 줄
   +	등장인물들 중에 연결 수가 제일 많은 경우와 제일 작은 경우 출력
     *	max ( )함수와 min ( )함수를 이용해서 등장인물들 중에 연결 수가 제일 많은 경우와 제일 작은 경우를 찾고
     *	cat ( )함수를 이용해서 연결해서 출력
-	소스 38번째 줄부터 42번째 줄까지
   +	결과를 저장하기 위한 변수들 초기화
     *	주인공들의 수를 저장하는 변수
	    * num_main_characters
     *	엑스트라들의 수를 저장하는 변수
       *	num_extra_characters
     *	향후, 최종결과에서 주인공들의 이름들을 효율적으로 출력하기 위해서 순서를 추적하는 변수들 
       *	num_max_visiting
       *	num_min_visisting
-	소스 44번째 줄부터 82번째 줄까지
  +	총 등장인물의 수 만큼 반복하면서 주인공으로 분리할지, 엑스트라로 분리할지 구분
    *	아래와 같이 for라는 예약어는 정확하게 반복하고자 하는 횟수가 정해져 있을 때 사용, 반면 반복은 하되 실행할 때마다 불규칙적으로 반복을 해야하는 경우는 while이라는 예약어를 사용
      *	for(i in 1:length(vertex.size)){
      }
      *	for문에서 첫번째 인자인 i는 반복할 때마다 몇 번째 반복 중인지 정보가 들어있는 변수
      * for문에서 in은 반복하고자 하는 횟수를 지정하고자 할 때 시작횟수부터 마지막 횟수까지 세미콜론(:)을 사용해서 표현
      *	for문의 조건이 만족하는 동안 실행시키고자 하는 부분을 { }사이에 언급, 한 이든 두줄 이상이든 모두 표현 가능
-	소스 45번째 줄부터 81번째 줄까지 
   + 	노드 연결 수의 개수가 6으로 최대인 경우 주인공으로 분류
	  * if (vertex.size[i] == 6){
       }
   +	노드 연결 수의 개수가 5혹은 4혹은 3혹은 2인 경우 주인공도 아니고 엑스트라도 아닌 경우로 분류, 상세 정보는 cat ( )함수를 이용해서 출력
     *	else if(vertex.size[i] == 5){
     }
     *	else if(vertex.size[i] == 4{
     } 
     *	else if(vertex.size[i] == 3{
     } 
     *	else if(vertex.size[i] == 2{
     }
   +	노드 연결 수의 개수가 1개 인 우, 엑스트라로 구분
     *	else {
   }
-	소스 84번째 줄부터 87번째 줄까지
  +	앞서 각 변수에 출력 결과를 저장하고 cat ( )함수를 이용해서 출력
    *	예) 주인공들의 수와 각 주인공들의 이름들을 출력
    *	예) 엑스트라의 수와 각 엑스트라의 이름들을 출력
-	전체 소스에서 cat ( )함수를 이용해서 출력하는 부분만 구분 후 출력 결과를 직접 확인했을 때
  +	아래 그림과 같이 8개 정도의 빨간 박스 부분의 정보를 cat ( )함수로 출력하면 그림에서 오른쪽 말풍선과 같이 출력되는 것을 확인 할 수 있음.
    *	최대 연결선의 개수와 최소 연결선의 개수를 출력
    *	9명 등장인물의 이름을 출력하면서 각각 몇 개의 연결선을 가지고 있는지 출력
      *	각각 최대 연결선을 가지고 있는지 (주인공)
      *	각각 최소 연결선을 가지고 있는지 (엑스트라)
      *	주인공도 아니고 엑스트라도 아닌 경우 연결선의 개수 출력
-	미드 슈트 확장 예제를 통해서 데이터 형태로 출력 결과와 다양한 그래프 형태로 출력 결과를 비교 후 같은 결과가 나왔는지 검증 [다양한 아래 그림들 비교 분석]

![fig2_82](https://user-images.githubusercontent.com/40076487/75105979-df351780-565c-11ea-87b3-a06ee930f6a9.png)
+ 위 그림에서 각 명령어 마다, 실행 후, 결과를 정확하게! 자세히 확인할 것!
  *	예) 36번째 소스줄에서 cat ( )함수가 사용됐기 때문에 아래 명령어는 다음과 같은 결과를 출력
![fig2_83](https://user-images.githubusercontent.com/40076487/75105980-df351780-565c-11ea-81c5-315efd0c196a.png)
![fig2_84](https://user-images.githubusercontent.com/40076487/75105981-dfcdae00-565c-11ea-97c3-58ccc8ec894e.png)+	마찬가지로, 전체 소스에서 아래의 박스들과 같이 cat ( )함수가 사용된 11군데에서 사용됐기 때문에 (예: 소스 36번째 라인, 48번째 라인, 59번째 라인, 62번째 라인, 65번째 라인, 68번째 라인, 72번째 라인, 84번째 라인, 85번째 라인, 86번째 라인 및 87번째 라인들) 최종 출력 결과가 나오는 것을 알 수 있음. 

+	예제1과 예제2의 비교
  *	예제 1 (미드 슈트에서 주인공과 엑스트라를 그래프로 그려보기)의 결과를 검증하기 위해서 예제 2(미드 슈트에서 주인공과 엑스트라를 문자열로 출력 해보기)를 추가로 수행해본 결과, 주변 인물들과 연결성이 많은 Mike와 Harvey가 공통적인 주인공으로 추출됨을 알 수 있음.
  *	다만, 예제 1번에서 도출된 아래 그래프에서는 방향성이 있는 연결선을 고려했기에 out-degree가 4이상으로 높은 노드 (예: Mike와 Harvey)들이 주인공으로 선택 됐음. 반면, 예제 2번에서는 방향성이 없는 연결선으로 가정했기 때문에 in-degree의 합과 out-degree의 합이 총 6개인 노드 (예: Mike, Harvey와 Louis)가 모두 주인공으로 선택되어 결과가 일부분 상이함.
    -	예제 1과 예제 2의 결과를 동일하게 하려면 “방향성 유무”의 가정 사항을 동일하게 가정 후 코드를 일부분 수정하고 실행하면 됨. 스스로 도전해볼 것!   
<div style="text-align: center"> 
    
	<영미 소설 데이터 크롤링>
<div style="text-align: left">

+	예제3) 영미 소설 중의 “신데렐라” 데이터를 인터넷 사이트에서 크롤링해서 분석
  *	인터넷 데이터 크롤링 환경 설정
    -	Chrome브라우저 사용
    -	Chrome Extension 중 하나인 SelectGadget 프로그램 설치

+ 웹 데이터 크롤링
1)	Chrome을 띄운다 (다른 브라우저가 아님 주의 )
2)	Chrome Extension중 하나인 “SelectorGadget”을 설치
   -	https://chrome.google.com/접속 후, SelectorGadgetr검색
   -	아래 그림에서 클릭 후 설치
![fig2_85](https://user-images.githubusercontent.com/40076487/75105982-e0664480-565c-11ea-9863-05c342cb280b.png)
+ 영문 동화 (신데렐라) 웹 크롤링 <br>
  1) Chrome에서 아래 링크 접속<br>
   -	http://www.mftd.org
   -	Multilingual Folk Tale Database (mftd)
	  * 영미 소설들이 모여있는 대표 인터넷 사이트(http://www.mftd.org)
      *	크롤링 하고자 하는 영미 소설 검색으로 주로 활용됨<br>
      
  2) Cinderella 검색
  ![fig2_86](https://user-images.githubusercontent.com/40076487/75105983-e0664480-565c-11ea-805f-1512f57a408b.png)
  3) SelectGadget프로그램을 이용해서 크롤링하고자 하는 데이터 부분 선택
  ![fig2_87](https://user-images.githubusercontent.com/40076487/75105984-e0fedb00-565c-11ea-9f10-95f73e534bbc.png)
  ![fig2_88](https://user-images.githubusercontent.com/40076487/75105985-e0fedb00-565c-11ea-945b-30fac1a9568d.png)
  
+	위 과정을 RStudio에 프로그램해서 자동으로 데이터 크롤링 되도록 함.

![fig2_89](https://user-images.githubusercontent.com/40076487/75105986-e1977180-565c-11ea-8556-9219561c69bd.png)
+	일부분의 정보만 선택해서 크롤링하고 싶다면?
1)	앞에서 선택된 연두색/노란색을 다시 한번 클릭해서 빨간색으로 선택해서 제거시킴.
2)	SelectorGadget에서 복사한 부분을 RStudio소스에 넣고 Ctrl+Shift+Enter
3)	결과, SelectorGadget에서 노란색으로 표시된 부분만 프린트 되는 것을 알 수 있음.
![fig2_90](https://user-images.githubusercontent.com/40076487/75105987-e2300800-565c-11ea-8254-43df0ef22fcc.png)

+	위 그림을 확대해서 크롤링하고 싶은 일부분 (예: 본문 타이틀인 “Cinderella”)만 RStudio에서 크롤링됐는지 확인
  1)	크롤링하고 싶은 일부분에 해당되는 html소스는 “div+h1”임을 확인하고 이부분을 RStudio명령어 (예: html_nodes( )함수 인자)로 넣어야함.

![fig2_91](https://user-images.githubusercontent.com/40076487/75105988-e2300800-565c-11ea-96ae-11c2cd26e92f.png)
+	RStudio에서 해당되는 부분만 크롤링 됐는지 출력해서 확인
![fig2_92](https://user-images.githubusercontent.com/40076487/75105989-e2c89e80-565c-11ea-80bb-4bf1e76f985c.png)
+	전체 내용을 크롤링
  1)	전체 내용에 해당되는 html소스는 “p”임을 확인하고 이부분을 RStudio명령어 (예: html_nodes( )함수 인자)로 넣어야함.
  2)	아래와 같이 명령어를 수정하고, 전체 내용이 크롤링 되는지 확인!
  
![fig2_93](https://user-images.githubusercontent.com/40076487/75105990-e2c89e80-565c-11ea-9062-fca3e483f7b7.png)
+	[추가적인 예시1] 전체 내용에서 일부분 내용은 제외시키고 나머지 내용 크롤링
  1)	아래 그림에서 흐린 회색: 크롤링하고 싶은 부분(실제 컬러색: 연두색)
  2)	아래 그림에서 짙은 회색: 크롤링에서 제외하고 싶은 부분(실제 컬러색: 빨간색)
+	아래 그림은 연두색, 빨간색등의 컬러로 구분되야 효율적이기 때문에 꼭 아래 서버에서 본 이미지를 다운로드해서 교재 내용과 같이 비교
http://popeye.snu.ac.kr/~hyoh/courses/R/SelectorGadget_ex.jpg
[주의사항] 본 교재는 인쇄가 흑백으로 되어있어서 구분이 안되기에 서버에서 이미지를 통해서 컬러 색을 꼭 비교해보기를 권장
![fig2_94](https://user-images.githubusercontent.com/40076487/75105991-e3613500-565c-11ea-90ce-7af63cc16b37.png)

+	[추가적인 예시2] 전체 내용에서 일부분 내용은 제외시키고 나머지 내용 크롤링
  1)	아래 그림에서 흐린 회색: 크롤링하고 싶은 부분(실제 컬러색: 연두색)
  2)	아래 그림에서 짙은 회색: 크롤링에서 제외하고 싶은 부분(실제 컬러색: 빨간색)
  [주의사항] 앞선 예제와 다른 일부분 크롤링을 시도하면, 당연하게도 html_nodes ( )함수안의 인자값이 다른 것을 알 수 있음.

![fig2_95](https://user-images.githubusercontent.com/40076487/75105993-e3f9cb80-565c-11ea-9503-2d7dc4abc17b.png)
![fig2_96](https://user-images.githubusercontent.com/40076487/75105994-e3f9cb80-565c-11ea-885b-c1dea32b2838.png)
![fig2_97](https://user-images.githubusercontent.com/40076487/75105995-e4926200-565c-11ea-9f31-2fd2fbb8279a.png)
+	[추가적인 예시3] 전체 내용에서 제외했던 부분을 다시 포함시키고 전체 내용 크롤링
  1)	아래 그림에서 흐린 회색: 크롤링하고 싶은 부분(실제 컬러색: 연두색)
[주의사항] 앞선 예제와 다른 일부분 크롤링을 시도하면, 당연하게도 html_nodes ( )함수안의 인자값이 다른 것을 알 수 있음.

![fig2_98](https://user-images.githubusercontent.com/40076487/75105996-e4926200-565c-11ea-95e5-018d83e359fc.png)
![fig2_99](https://user-images.githubusercontent.com/40076487/75105998-e52af880-565c-11ea-8849-956b802c5fd5.png)
![fig2_100](https://user-images.githubusercontent.com/40076487/75105999-e5c38f00-565c-11ea-83a0-57c65a30055a.png)
<div style="text-align: center"> 
    
소스 원본은 아래 서버 주소에서 다운받을 수 있음 
[Chrome에서 열어보길 권장, 익스플로워에서는 소스가 깨질 수 있기 때문에 별도의 세팅필요]
http://popeye.snu.ac.kr/~hyoh/courses/R/Cinderella.R
<div style="text-align: center"> 
    
	<영어권 신문 뉴욕 타임즈 데이터 크롤링 혹은 파일로 저장 방법 비교>
<div style="text-align: left">
    
예제4) 영어권의 대표 신문 중 하나인 뉴욕 타임즈 데이터 생성 방법 2가지
1) 앞서 언급한 동일한 방법으로 뉴욕 타임즈 사이트에 접속 후 데이터 크롤링

![fig2_101](https://user-images.githubusercontent.com/40076487/75106000-e5c38f00-565c-11ea-9b9d-e4a753e463a5.png)
![fig2_102](https://user-images.githubusercontent.com/40076487/75106001-e65c2580-565c-11ea-9c56-03211c283696.png)

+ 위 그림에서 크롤링으로 선택된 3부분만 크롤링되어 출력되는 것을 확인!

![fig2_103](https://user-images.githubusercontent.com/40076487/75106002-e65c2580-565c-11ea-8ade-fd58f7ac0050.png)
+ SelectorGadget에서 선택된 3군데에 해당되는 html코드는 아래와 같음.

![fig2_104](https://user-images.githubusercontent.com/40076487/75106003-e6f4bc00-565c-11ea-8737-97f75e959b38.png)

+ 결과, 해당부분을 RStudio명령어로 아래와 같이 코딩 후, 실행하면 아래와 같이 결과 확인 가능

![fig2_105](https://user-images.githubusercontent.com/40076487/75106004-e78d5280-565c-11ea-8a01-af2ec8581163.png)
![fig2_106](https://user-images.githubusercontent.com/40076487/75106005-e78d5280-565c-11ea-87c0-a2a139e1120a.png)
+ 소스 원본은 아래 서버 주소에서 다운받을 수 있음 
[Chrome에서 열어보길 권장, 익스플로워에서는 소스가 깨질 수 있기 때문에 별도의 세팅필요]
http://popeye.snu.ac.kr/~hyoh/courses/R/NewYorkTimes.R
2) Chrome, SelectGadget 및 RStduio를 활용하지 않고 웹 사이트에서 뉴욕타임즈 데이터를 파일로 바로 저장하는 방법
![fig2_107](https://user-images.githubusercontent.com/40076487/75106006-e825e900-565c-11ea-9e6f-6f9bd91de05e.png)
![fig2_108](https://user-images.githubusercontent.com/40076487/75106007-e825e900-565c-11ea-8d41-a7384e975a7a.png)
![fig2_109](https://user-images.githubusercontent.com/40076487/75106008-e8be7f80-565c-11ea-89d5-e54433d69539.png)
![fig2_110](https://user-images.githubusercontent.com/40076487/75106009-e9571600-565c-11ea-81c0-ee8909217271.png)
![fig2_111](https://user-images.githubusercontent.com/40076487/75106010-e9571600-565c-11ea-885c-6d8074d82251.png)
![fig2_112](https://user-images.githubusercontent.com/40076487/75106011-e9efac80-565c-11ea-970f-6dbdcd24faa7.png)

<div style="text-align: center"> 
    
	< 뉴욕타임즈 데이터 수집 후 주요 단어를 워드 클라우드로 시각화>
<div style="text-align: left"

예제5) 뉴욕타임즈에 나타나는 단어들의 빈도수 분석을 통해 뉴스에 관련된 관심사를 ‘워드 클라우드(WordCloud)’로 시각화
1)	앞서 언급한 방법들을 이용해서 뉴욕타임즈 데이터 수집
1)	뉴욕 타임즈의 글을 저장한 텍스트 파일 (nytimes.txt)
2)	텍스트 마이닝 결과로 뉴욕 타임즈 내용에서 빈도수가 높은 단어들(i.e., 관심사에 대한 워드)을 클라우드로 시작화
1)	클라우드 이미지 파일 (nytimes_interest.png)

예제5) 뉴욕타임즈에 나타나는 단어들의 빈도수 분석을 통해 뉴스에 관련된 관심사를 ‘워드 클라우드(WordCloud)’로 시각화

1)	앞서 언급한 방법들을 이용해서 뉴욕타임즈 데이터 수집
   1)	뉴욕 타임즈의 글을 저장한 텍스트 파일 (nytimes.txt)
2)	텍스트 마이닝 결과로 뉴욕 타임즈 내용에서 빈도수가 높은 단어들(i.e., 관심사에 대한 워드)을 클라우드로 시작화
   1)	클라우드 이미지 파일 (nytimes_interest.png)
![fig2_113](https://user-images.githubusercontent.com/40076487/75106012-ea884300-565c-11ea-88b1-6fd2442d1718.png)
![fig2_114](https://user-images.githubusercontent.com/40076487/75106013-ea884300-565c-11ea-8ba3-46af945db7d5.png)+ 해당 문제를 풀기 위해 필요한 전체적인 과정 (i.e., 알고리즘)

![fig2_115](https://user-images.githubusercontent.com/40076487/75106014-eb20d980-565c-11ea-9e52-cbef2a7d94cc.png)
+ RStudio가 작업 중인 디렉토리에 뉴욕 타임즈 파일을 위치시키고 RStudio에서 직접 읽은 뒤 비교
	- 메모장 파일에 있는 뉴욕 타임즈 데이터와 RStudio에서 읽은 데이터가 동일함을 확인

![fig2_116](https://user-images.githubusercontent.com/40076487/75106015-eb20d980-565c-11ea-8475-e8d46282175c.png)
![fig2_117](https://user-images.githubusercontent.com/40076487/75106016-ebb97000-565c-11ea-9e1d-e45c137116ec.png)+ 자연어 분석 패키지 안의 다양한 함수들을 활용하여 형태소 분석
  *	자연어 분석 패키지 활용
    -	KoNLP (Korean Natural Language Processing)
      -	명사를 추출하는 함수 extractNoun을 활용해서 명사 단위로 분리
        -	extractNoun(Posts)
![fig2_118](https://user-images.githubusercontent.com/40076487/75106017-ec520680-565c-11ea-92b3-4546400c51b8.png)

- 형태소 분석을 위해서 참조(reference)될 수 있는 사전
  -	useSejongDic( )
    -	KoNLP 패키지에 있는 세종 사전을 선택하는 함수
+ 	일반 내장 함수들 활용
   *	sapply(df, class)
      -	‘df'라는 데이터 프레임의 모든 변수에다가 'class()라는 동일 함수를 공통으로 적용해라(sapply)를 의미
   *	예) sapply(data, function, USE.NAMES)
     -	데이터에 지정된 함수를 일관적으로 적용하는 함수
       -	data : 적용할 데이터 (리스트, 벡터, 행렬)
       -	function : 적용 함수
       -	USE.NAMES : 데이터에 타이틀이 있는 지 여부
       -	해당 함수의 결과 : 함수가 적용된 결과 데이터 (리스트, 벡터, 행렬) 반환
      -	Posts라는 변수 안의 모든 데이터에 명사 추출을 하는 extractNoun함수를 공통적으로 적용해서 Words라는 변수에 대입
        -	Words <- sapply(Posts, extractNoun, USE.NAMES=F)

![fig2_119](https://user-images.githubusercontent.com/40076487/75106018-ec520680-565c-11ea-96cb-ef85efef4601.png)
+ sub(src, dst, data) [붙임 12 확인]
  * data리스트에 있는 데이터 중 src 에 해당하는 데이터를 dst 로 변환하는 함수
    -	src: 변경하고 싶은 원본 데이터
    -	dst: 변경할 데이터
    -	data: 리스트 데이터
    ![fig2_120](https://user-images.githubusercontent.com/40076487/75106019-ecea9d00-565c-11ea-883f-5e7a4963c6b6.png)
   * Words라는 데이터 리스트에서 특수문자, 숫자, 공백, 불필요한 단어들을 공백으로 변경하고 (즉, 제거하고) interest라는 변수에 대입
     - interest<-gsub("[[:punct:][:digit:][:space:]]", "", unlist(Words))
+	unlist(data)
  *	리스트 형식의 데이터를 벡터 형식으로 변환하는 함수
  *	data : 변환할 리스트 데이터
  *	해당 함수 결과값 : 변환된 데이터 반환
   ![fig2_121](https://user-images.githubusercontent.com/40076487/75106021-ecea9d00-565c-11ea-8464-c7f039600a6b.png)

+	Filter(f, x)
  *	f라는 함수를 적용한 결과가 TRUE인 데이터만을 필터링하는 함수
    -	f : 적용 함수
    -	x : f(x) 함수의 인자로 적용할 벡터 데이터 변수
    ![fig2_122](https://user-images.githubusercontent.com/40076487/75106022-ed833380-565c-11ea-8a91-8ae09315ae43.png)
   * 단어길이 3개 보다 큰 단어만 통과
   * interest <- Filter(function(x) {nchar(x) > 3}, interest)
![fig2_123](https://user-images.githubusercontent.com/40076487/75106023-ed833380-565c-11ea-9a31-bd5e6f731517.png)
![fig2_124](https://user-images.githubusercontent.com/40076487/75106025-ee1bca00-565c-11ea-8fdf-bc9278ecbb96.png)
+	nchar(x, …)
  *	입력된 배열이나 문자열의 길이를 반환하는 함수
  *	즉, 문자열을 구성하고 있는 문자의 개수
    -	x : 문자 벡터
    -	해당 함수의 결과 값: 문자열의 길이 반환
    ![fig2_125](https://user-images.githubusercontent.com/40076487/75106026-eeb46080-565c-11ea-8d57-524ccd9764f3.png)
+	데이터 빈도 분석
  *	각 데이터의 빈도수를 테이블 형태로 보여주고 빈도수 상위 30개만 출력
    -	word_count <- table(interest)
    -	head(sort(word_count, decreasing = T), 30)	# 빈도수 상위 30개 출력
![fig2_126](https://user-images.githubusercontent.com/40076487/75106027-eeb46080-565c-11ea-9b04-ac80cd435855.png)
![fig2_127](https://user-images.githubusercontent.com/40076487/75106028-ef4cf700-565c-11ea-9f52-9da7c4558274.png)+	분석 결과를 파일에 저장
  *	write.table ( )이라는 함수를 활용하여 빈도수 상위 30개를 내림차순으로 메모장 파일에 저장
    -	파일이름: nytimes_interest.txt
    -	RStudio에서 출력되는 결과와 해당 디렉토리에 생성된 nytimes_interest.txt파일의 내용을 비교해보면 동일한 것을 알 수 있음.

![fig2_128](https://user-images.githubusercontent.com/40076487/75106029-efe58d80-565c-11ea-9c62-57c0c504b73a.png)
+ [참고] 표준 내장 함수와 일반 함수의 공통점 및 차이점
  *	공통점
    -	일련의 작업을 하도록 미리 작성해 둔 코드 블록
    -	동일 기능의 작업을 재사용할 수 있어 유용함
    -	즉, 함수를 사용하면 똑같은 작업을 반복해서 코딩할 일이 많을 때 (함수를 재사용하면 되기 때문에) 프로그램 작성이 쉬워 짐
  *	차이점
   -	표준 내장 함수
     -	해당 프로그래밍 언어를 개발한 연구팀에서 이미 작성한 함수들
     -	일반 사용자 및 프로그래머들은 표준 내장 함수의 내부를 알 필요는 없이 단순히 해당 함수 이름들을 호출해서 사용
       -	복잡한 내부는 숨겨져 있음 (i.e., 추상화 – abstraction)
   -	일반 함수
     -	기존의 표준 내장 함수로 존재하지 않기 때문에 사용자가 함수를 직접 작성
     -	기존의 표준 내장 함수로 존재하는 함수를 좀 더 보강 및 수정해서 사용자가 재정의해서 사용하는 일반 함수
     - -> 일반 함수를 작성하는 프로그래밍 기법 문법이 있기 때문에 해당 규칙을 지켜서 작성하고 추후 호출해서 사용해야 함

<div style="text-align: center"> 
    
	<햄릿 사이트 크롤링 후 등장인물 분석>
<div style="text-align: left"

예제6) Hamlet 사이트를 크롤링해서 등장인물 관계도 파악해 보기
+	위키피디아의 Hamlet (영문 사이트) 접속 후 주인공들(Characters) 정보를 찾아 크롤링 후 전체를 메모장 파일(*.txt)에 저장하고, 주인공 이름들만 뽑아서 엑셀 파일(*.csv)에 저장 후, 등장인물들끼리 연결선 랜덤으로 연결 후 인물 관계도를 그래프로 분석
+	소스 원본은 아래 서버에서 다운로드 가능함
http://popeye.snu.ac.kr/~hyoh/courses/R/hamlet_senti.R

+	해당 문제를 풀기 위한 요구사항
  *	위키피디아 헴릿 사이트에 접속
   -	https://en.wikipedia.org/wiki/Hamlet#Characters
  *	위키피디아 크롤링 기술
    -	RStudio에서 위키피디아 사이트에 접속 후 자동으로 데이터를 크롤링해서 파일에 저장할 수 있어야함.
      -	크롤링하는데 주인공들 이름만 취사선택해서 파일에 저장할 수 있어야 함.
   -	크롤링을 위한 구체적인 순서
   -	크롬에서 위키피디아의 Hamlet 사이트에 접속
     -	https://en.wikipedia.org/wiki/Hamlet#Characters
   -	RStudio에서 위키피디아의 Hamlet 사이트 읽고 변수에 저장
     -	htmlpage <- read_html(“https://en.wikipedia.org/wiki/Hamlet#Characters”)
   -	Hamlet사이트에서 주인공들 찾아서 크롤링
     -	크롬에서 SelectGadget클릭
     -	주인공들 Characters의 테이블 클릭 후, 해당 html tag 복사
         -	.column-width
         -	해당 html tag부분만 변수에 저장?
           -	forecasthtml<-html_nodes(htmlpage, “.column-width”)
         -	해당 html tag에서 실제 주인공들만 찾아서 읽고 변수에 저장
           -	forecast<- html_text(forecasthtml)
         -	실제 주인공들을 담고 있는 변수를 연산하기 쉬운 벡터로 변환
           -	paste(forecast, collapse = " ")
         -	실제 주인공들을 담고 있는 연속적인 벡터를 줄 바꿈 기준으로 분리
     -	forecast_1<-strsplit(forecast, split="\n")

![fig2_129](https://user-images.githubusercontent.com/40076487/75106030-efe58d80-565c-11ea-8a1b-2f7843b270db.png)

                                       
+	RStudio에서 햄릿 등장인물들을 크롤링 후 해당 이름들을 data frame구조로 내부적으로 변환 후 엑셀파일(예: Hamlet.csv)로도 저장.
  *	RStudio에서 데이터가 저장된 변수를 출력하고, 엑셀파일을 열어서 확인해보면 동일한 것을 확인할 수 있음.
    -	Hamlet2변수안의 데이터
    -	Hamlet.csv파일안의 데이터
![fig2_130](https://user-images.githubusercontent.com/40076487/75106031-f07e2400-565c-11ea-9499-cf15d56e0af9.png)
+	앞서 RStudio에서 크롤링 후 특정 변수에 저장된 등장인물들의 정보와 엑셀 파일에 저장된 정보가 동일함을 확인
  *	데이터 파일은 아래 서버에서 다운로드 가능
http://popeye.snu.ac.kr/~hyoh/courses/R/Hamlet.csv
+	#임시 주인공 별 관계 생성
  *	c<-rep(c("Ophelia","Hamlet","Gertrude","Marcellus"), 4)
    -	총 16명의 임시 주인공들을 만들기 위해, 4명의 등장인물을 4번의 반복함. 
  *	c<-append(c,"Claudius",10)
    -	앞서 만든 총 16명의 임시 주인공들 데이터에서 “11번째에” 새로운 등장인물 추가
  *	c<-append(c,"Horatio",7)
    -	앞서 만든 총 17명의 임시 주인공들 데이터에서 “8번째에” 새로운 등장인물 추가

+	#데이터프레임 결합
   *	Hamlet2[,3]<-c
   *	Hamlet2<-Hamlet2[,2:3]
   *	colnames(Hamlet2)[2]<-"relation"
![fig2_131](https://user-images.githubusercontent.com/40076487/75106032-f116ba80-565c-11ea-91af-94df623cfb5a.png)
![fig2_132](https://user-images.githubusercontent.com/40076487/75106033-f116ba80-565c-11ea-80a4-1fe8b6f0e944.png)
![fig2_133](https://user-images.githubusercontent.com/40076487/75106034-f1af5100-565c-11ea-9310-62caa2a5da1a.png)+	#최종 관계도 표 확인
  *	Hamlet2

+	#igraph 시각화
  *	library(igraph)
  *	g=graph.data.frame(Hamlet2, directed=FALSE) ## 데이터 세트로부터 방향이 없는 그래프 객체 생성
  *	par(mar=c(0,0,0,0)) ## 불필요한 여백을 제거
  *	plot(g, layout=layout.circle, vertex.size=8, vertex.label=NA)

![fig2_134](https://user-images.githubusercontent.com/40076487/75106036-f1af5100-565c-11ea-9e1d-c2336e9f166b.png)
+	위 그림을 소스 및 결과 화면 별로 확대해서 정확히 확인
![fig2_135](https://user-images.githubusercontent.com/40076487/75106039-f247e780-565c-11ea-862d-d3b4b23849e9.png)
![fig2_136](https://user-images.githubusercontent.com/40076487/75106040-f2e07e00-565c-11ea-817b-a4859e25a54c.png)
+	## 주인공 일부분 취사 선택 후, 네트워크 그래프에 텍스트 라벨 넣기
  1)	등장인물은 본인만 알고 있다고 가정 후 연결선 도출 후 그래프 그린 경우
  
![fig2_137](https://user-images.githubusercontent.com/40076487/75106041-f2e07e00-565c-11ea-8e1d-febac7e6ca5f.png)
 2)	각 등장인물들이 랜덤으로 서로 알고 있다고 가정 후 연결선 도출 후 그래프 그린 경우
  
  ![fig2_138](https://user-images.githubusercontent.com/40076487/75106042-f3791480-565c-11ea-9ead-c84917c5a4d4.png)
  ![fig2_139](https://user-images.githubusercontent.com/40076487/75106043-f411ab00-565c-11ea-8dfc-739ecfb04651.png) 
  + 그래프를 그려보면 라벨(예: 등장인물의 이름)의 위치를 옮겨서 다양하게 그려볼 수 있음.
  * 하지만, 자세히 살펴보면 내부적인 의미 해석은 동일함을 알 수 있음.
 ![fig2_140](https://user-images.githubusercontent.com/40076487/75106044-f411ab00-565c-11ea-9237-17ea41c2bc36.png)
 ![fig2_141](https://user-images.githubusercontent.com/40076487/75106045-f4aa4180-565c-11ea-818f-3c91b9866986.png)
 <div style="text-align: center"> 
    
	<멕베스 사이트 크롤링 후 등장인물 분석>
<div style="text-align: left">
    
예제7) Macbeth 사이트를 크롤링해서 등장인물 관계도 파악해 보기
+	위키피디아의 멕베스에서 (영문 사이트), 주인공들(Characters) 찾아서, 전체를 txt파일에 저장하고, 주인공 이름들만 엑셀파일(*.csv)에 저장 후, 먼저 주인공 당 랜덤으로 3-4명 연결선 잊고, 그래프로 그려보기
+	앞서 언급한 문제와 유사
  *	위키피디아 멕베스 사이트에 접속
    -	https://en.wikipedia.org/wiki/Macbeth#Characters
  *	주인공 크롤링 후 특정 변수에 저장
    -	forecast_2라는 변수에 저장 후 확인 차 출력 (예: 35명의 주인공 출력)

![fig2_142](https://user-images.githubusercontent.com/40076487/75106046-f4aa4180-565c-11ea-8c75-2eaa1d916ce7.png)
+	“ – “단위로 구분 후 기존 변수 a에 다시 저장
  *	a <- strsplit(forecast_2, split = “-“)
![fig2_143](https://user-images.githubusercontent.com/40076487/75106047-f542d800-565c-11ea-80a9-8a4ec600fb04.png)
![fig2_144](https://user-images.githubusercontent.com/40076487/75106048-f5db6e80-565c-11ea-8f80-83721622c9ad.png)+	인덱싱 기능을 활용하여 특정 등장인물의 이름 출력
  *	인덱싱 (Indexing)이란?
    -	연속적인 데이터들 중에서 특정 위치의 등장인물 이름을 추출하기 위해서 사용하는 문법 명령어
    -	키보드에서 [ ]를 사용하고 [ ]안에 특정 위치를 숫자로 표현
    -	예) 아래 그림과 같이 35명의 등장인물들 중에서 35번째 등장인물만 출력 후 확인
![fig2_145](https://user-images.githubusercontent.com/40076487/75106049-f5db6e80-565c-11ea-97fd-9a117ffcf8a0.png)

+	예) 아래 그림과 같이 35명의 등장인물들 중에서 34번째 등장인물만 출력 후 확인
+	예) 아래 그림과 같이 35명의 등장인물들 중에서 35번째의 두번째 위치의 정보를 출력하고자 의도하였지만 데이터가 없기 때문에 등장인물이 출력되지 않음을 확인


![fig2_146](https://user-images.githubusercontent.com/40076487/75106051-f6740500-565c-11ea-836b-687bc5f8c099.png)
+	a 라는 변수에 저장된 35명의 등장인물들을 b라는 변수에 복사해서 해당 문제를 해결하기 위해 다양한 과정 처리


![fig2_147](https://user-images.githubusercontent.com/40076487/75106052-f6740500-565c-11ea-9be3-f2ebfc70e094.png)
![fig2_148](https://user-images.githubusercontent.com/40076487/75106053-f70c9b80-565c-11ea-95b9-247674eec34c.png)
![fig2_149](https://user-images.githubusercontent.com/40076487/75106054-f7a53200-565c-11ea-8cd6-26b25989c65a.png)

+	불필요한 단어 (NA: Not Applicable)를 삭제 후 모든 등장인물을 파일에 저장 후 확인
  *	해당 각 데이터를 콤마 단위로 분리 후 저장한 파일 (Comma Separate Value: CSV)를 RStudio와 엑셀파일에서 직접 열어보고 비교 확인
    -	확인 결과, 동일한 것을 알 수 있음!

![fig2_150](https://user-images.githubusercontent.com/40076487/75106055-f7a53200-565c-11ea-9e68-04c10b9f576f.png)
![fig2_151](https://user-images.githubusercontent.com/40076487/75106056-f83dc880-565c-11ea-88b9-86c0dd7c3395.png)+	앞서 RStudio에서 크롤링 후 특정 변수에 저장된 등장인물들의 정보와 엑셀 파일에 저장된 정보가 동일함을 확인
  *	데이터 파일은 아래 서버에서 다운로드 가능 <br>http://popeye.snu.ac.kr/~hyoh/courses/R/Macbeth.csv

    - 원칙은 각 소설의 등장인물들 중에서 서로의 관계성의 정의를 명확하게 한 뒤 코드에 이를 삽입
        -	예) 일반적으로 서로 알고 있는 등장인물들은 연결선을 설정
        -	예) 미드 슈트에서도 서로 알고 있는 등장인물들은 모두 연결선(i.e., 방향성 없는 연결선)으로 연결 후, 주변 다른 등장인물들과 많이 아는 관계일수록 (즉, 노드에 연결선의 개수가 많을수록) “주인공”이라고 정의함.
        -	본 예제에서는 등장인물들의 관계성을 랜덤으로 선택.
           -	예) 등장 인물들간의 임시 관계성 생성 

![fig2_152](https://user-images.githubusercontent.com/40076487/75106057-f83dc880-565c-11ea-9fb2-8ebcef8bc80c.png)
![fig2_153](https://user-images.githubusercontent.com/40076487/75106058-f8d65f00-565c-11ea-9f10-8fbb84f94776.png)+ 인터넷 사이트에서 크롤링한 Macbeth등장인물들의 정보를 담고 있는 Macbeth2 변수에 3번째 컬럼을 추가하여 앞서 임시 관계성 데이터를 데이터 프레임 구조로 결합

![fig2_154](https://user-images.githubusercontent.com/40076487/75106059-f96ef580-565c-11ea-99fa-9cfc73d6f8cd.png)
![fig2_155](https://user-images.githubusercontent.com/40076487/75106060-f96ef580-565c-11ea-957f-513cc82fb799.png)
+	불필요한 식별자를 삭제하고 데이터 프레임 간결화
![fig2_156](https://user-images.githubusercontent.com/40076487/75106061-fa078c00-565c-11ea-9720-3adfcc0def4a.png)
+	관계성에 관련된 변수 이름을 “relation”으로 변경
![fig2_157](https://user-images.githubusercontent.com/40076487/75106062-fa078c00-565c-11ea-8c6c-6dae4fb3865c.png)
+	데이터 세트로부터 방향이 없는 그래프 객체 생성
![fig2_158](https://user-images.githubusercontent.com/40076487/75106063-faa02280-565c-11ea-8200-e81691fc9dde.png)
![fig2_159](https://user-images.githubusercontent.com/40076487/75106064-fb38b900-565c-11ea-8fd1-8f6723a58e4b.png)
  *	위 소스를 확대해서 정확하게 확인
![fig2_160](https://user-images.githubusercontent.com/40076487/75106065-fb38b900-565c-11ea-865e-fd718ab52933.png)
+ 네트워크 그래프에 텍스트 라벨넣기
![fig2_161](https://user-images.githubusercontent.com/40076487/75106066-fbd14f80-565c-11ea-850f-9e0f6f20804d.png)
![fig2_162](https://user-images.githubusercontent.com/40076487/75106067-fc69e600-565c-11ea-90f7-2aff78cb25d5.png)<div style="text-align: center"> 
    
    <오바마, 트럼프 등과 같은 유명인사의 연설문의 긍정도 비교 분석>

<div style="text-align: left">
    
예제8) 유명인사 연설문이 저장된 입력 파일을 RStudio에서 읽고 긍정적인 정도가 얼마나 되는 파악해 보기
+	각 연설문 파일은 인터넷 사이트에서 직접 크롤링해서 생성할 수도 있고
+	공개적으로 배포된 연설문 파일을 직접 구해서 활용할 수도 있음

![fig2_163](https://user-images.githubusercontent.com/40076487/75106068-fc69e600-565c-11ea-8bf1-fa205af12a51.png)
+	아래 결과 같이 예측불허하게도 오바마 대통령 보다는 트럼프 대통령의 연설문 긍정도 분석 결과 트럼프 대통령의 긍정도가 더 높음을 알 수 있음.
    +	긍정적인 단어들을 대부분 포함한 텍스트 파일
    +	부정적인 단어들을 대부분 포함한 텍스트 파일
![fig2_164](https://user-images.githubusercontent.com/40076487/75106069-fd027c80-565c-11ea-9814-58dcb974ab02.png)
*	위와 같은 결과를 얻기 위해서는 아래와 같은 모든 파일들이 같은 디렉토리에 존재해야함.

![fig2_165](https://user-images.githubusercontent.com/40076487/75106070-fd9b1300-565c-11ea-85b8-205857cf3801.png)

+	각 소스 원본은 아래와 같은 서버주소에서 다운받을 수 있음.(대략 200줄정도의 소스)
    http://popeye.snu.ac.kr/~hyoh/courses/R/senti_score_txt.R
    *	본 소스를 실행하기 위해서는 추가적으로 아래와 같은 데이터파일들이 필요.
    *	각 파일을 다운로드 받기 위해서는 http://popeye.snu.ac.kr/~hyoh/courses/R/ * 해당 서버 경로에서 * 자리에 각각의 파일이름을 넣으면 다운로드 가능.

![fig2_166](https://user-images.githubusercontent.com/40076487/75106071-fd9b1300-565c-11ea-9425-6d9ac3f9b402.png)
![fig2_167](https://user-images.githubusercontent.com/40076487/75106072-fe33a980-565c-11ea-870a-52e4bc14b55b.png)
![fig2_168](https://user-images.githubusercontent.com/40076487/75106073-fe33a980-565c-11ea-9c84-2fca4d7960b4.png)<div style="text-align: center"> 
    
    <영어 문장 데이터에서 관사, Be동사 추출 후 감정 점수 계산하기>
    
<div style="text-align: left">


예제 9) 영어문장에서 특정 단어의 빈도수 출력 및 짧은 영어 글에서 a, the, is, am, are등과 같은 불필요한 관사와 Be동사의 개수를 출력하고/제거 후, 해당 짧은 지문이 대체적으로 긍정적인 글인지/부정적인 글인지 등을 판단해주는 예제
+	해결 알고리즘
  +	긍정과 부정으로 판단될 수 있는 단어들의 개수를 각각 계산 후 긍정과 부정 판단 단어들을 평균 계산함.
    *	긍정 단어 사전과 부정 단어 사전들 각각 저장한 파일을 RStudio작업 디렉토리에 같이 저장한 뒤 해당 소스에서 활용
+	주의사항
    +	분석하고자하는 영어 문장들이 너무 짧을 경우 문장의 긍정 도를 판단하는 일은 쉽지 않음. 
        *	결과, 영어 텍스트의 양이 어느정도 확보된 상황에서 해당 방법을 적용해야 의미 있는 분석이 될 수 있음.
    +	데이터 전처리 과정이 가장 중요. 
        *	“긍정”과 “부정”의 의미를 판단하는데 불필요한 단어들은 적합한 정규식을 통해 미리 제거할 수 있어야 함.
    +	stringr 활용 등과 같은 다양한 텍스트를 처리하는 기법들을 충분히 더 찾고 활용할 수 있어야 함. 
        *	여러가지 방법 중 적절한 방법을 선택하는 것이 중요.
+	미드 왕좌의 게임 영어 리뷰 1개를 전처리 후 감정 점수 계산하는 예제 (다양한 영어 문장 예제 적용가능)
	* 필요패키지 : KoNLP – extractNoun 함수 사용
    *	line <-"Basement for the season is constructed This story starts from where it left, Tyrion coming out of the Wooden box, Cersei and Jamie feeling differently about Tyrion and their father's death. Everything expected happens to Mance Rayder, as John plays a sitting duck in settling the truce. I don't seem to fancy Khaleesi and the charmer Daario Naharis' relationship. It only weaken's the Dragons' Mother's charismatic character."
+	형태소 분리후 결과 창

![fig2_169](https://user-images.githubusercontent.com/40076487/75106074-fecc4000-565c-11ea-9d1a-b7bfdcc1cbd6.png)

+	a, the, is, am, are 의 검출 빈도 확인 결과

![fig2_170](https://user-images.githubusercontent.com/40076487/75106076-fecc4000-565c-11ea-80de-acb85066e867.png)

+	감정점수 계산 알고리즘을 함수화 한 후, 긍정사전과 부정사전을 호출
    +	(긍정사전과 부정사전을 기반으로 문장의 긍정도 부정도를 판단함.)
![fig2_171](https://user-images.githubusercontent.com/40076487/75106077-ff64d680-565c-11ea-8e28-36de23325585.png)

+	긍정 사전과 부정 사전 파일들을 해당 디렉토리에 위치
    +	참고로, 각 사전 파일의 사이지는 50KB, 23KB정도로 부정사전안에 담긴 단어들이 훨씬 많음을 알 수 있음.

![fig2_172](https://user-images.githubusercontent.com/40076487/75106078-fffd6d00-565c-11ea-95ac-8a39db501898.png)

+	앞서 언급했지만, 각 파일을 다운로드 받기 위해서는 http://popeye.snu.ac.kr/~hyoh/courses/R/ *
해당 서버 경로에서 * 자리에 각각의 파일이름을 넣으면 다운로드 가능.
+	긍정 사전 파일 : positive-words.txt

+	부정 사전 파일 : negative-words.txt

+	데이터 전처리
    +	[2글자 이상의 단어만 추출, a, the, is, am, are 제거]


![fig2_173](https://user-images.githubusercontent.com/40076487/75106079-fffd6d00-565c-11ea-9dce-f660a96e30b2.png)
+	텍스트 전처리 후 긍정도를 판단하기 위한 단어만 추출
![fig2_174](https://user-images.githubusercontent.com/40076487/75106080-012e9a00-565d-11ea-85bc-384f4872c686.png)
+	감정점수 계산 알고리즘 수행 후 결과 표시

![fig2_175](https://user-images.githubusercontent.com/40076487/75106081-012e9a00-565d-11ea-993e-272d7252ec8e.png)
![fig2_176](https://user-images.githubusercontent.com/40076487/75106082-01c73080-565d-11ea-8d6c-96b1f7d157ce.png)
+ 긍정과 부정으로 판단될 수 있는 단어들을 판독한 후 긍정과 부정판단 단어들을 평균계산함. 첫 문장의 감정점수는 -0.01694 정도로 부정적인 뉘앙스가 살짝 더 강한 편이라고 할 수 있음.
+	본 예제를 수행하기 위한 전체적인 과정 
    +	(블록킹으로 해당 라인들만 선택후, “Run”을 클릭해서 수행한 경우)
![fig2_177](https://user-images.githubusercontent.com/40076487/75106083-025fc700-565d-11ea-8d93-e5e9f10e6c21.png)
+	감정지수를 계산하기 위해서 새로 작성한 일반 함수
    +	score.sentiment = function(sentences, pos.words, neg.words, .progress='none')
    {
       감정지수를 계산하기 위해 필요한 내용의 명령어들
    }
![fig2_178](https://user-images.githubusercontent.com/40076487/75106084-025fc700-565d-11ea-997c-59aa49f73f43.png)

+	긍정과 부정단어들이 포함되어 있는 각각의 파일들을 scan( )함수를 이용해서 읽어 옴

![fig2_179](https://user-images.githubusercontent.com/40076487/75106085-02f85d80-565d-11ea-809c-6050948c6970.png)
![fig2_180](https://user-images.githubusercontent.com/40076487/75106086-0390f400-565d-11ea-86c4-3896df262411.png)+	미드 왕좌의 텍스트 데이터가 포함된 king.txt파일을 RStudio에서 불러왔을 때 아래 화면과 같은 경고(warning)가 나는 경우 해결책
    +	경고는 에러는 아니기 때문에 큰 문제는 없지만, 일단 빨간색 경고 창 이고 보기 않 좋기 때문에 역시 해결해서 없애는 것이 좋음
        * 경고 및 에러가 발생하는 경우 이를 스스로 읽고 직접 해결 하려고 하는 부지런한 자세가 바람직함.
            -	Waring message:
                In readLines(conn) : incomplete final line found on ‘king.txt’
                -> “king.txt파일 끝이 완성되지 않고, 추가적인 데이터를 있을 것 처럼 불안정해 보인다”라는 경고 메시지임. 따라서, king.txt파일을 열어보면 커서 (cursor)의 위치가 맨 마지막 줄에서 엔터(enter)를 눌러서 맨 마지막 줄 처음으로 이동시키지 않았음을 알 수 있음.
[king.txt파일은 아래 서버 주소에서 다운받을 수 있음]
http://popeye.snu.ac.kr/~hyoh/courses/R/king.txt

![fig2_181](https://user-images.githubusercontent.com/40076487/75106088-04298a80-565d-11ea-96a9-8c38644ac62b.png)
![fig2_182](https://user-images.githubusercontent.com/40076487/75106089-04298a80-565d-11ea-896a-2a53f5f55d6e.png)
![fig2_183](https://user-images.githubusercontent.com/40076487/75106090-04c22100-565d-11ea-9435-93064c90264c.png)
+	해결책
    +	아래 그림과 같이 king.txt파일을 열고, 맨 마지막 줄에서 엔터(enter)를 눌러서 커서를 맨 마지막 줄 처음으로 이동시키자 해당 경고가 없어짐.

![fig2_184](https://user-images.githubusercontent.com/40076487/75106092-055ab780-565d-11ea-99c2-f2d18f191628.png)
+	sapply( )함수 및 extractNoun( )함수를 이용해서 명사 단위로 분리
![fig2_185](https://user-images.githubusercontent.com/40076487/75106093-055ab780-565d-11ea-9f1f-73f2d2114cbd.png)
![fig2_186](https://user-images.githubusercontent.com/40076487/75106094-05f34e00-565d-11ea-9fe2-53c37a366ff9.png)
+	만약, 아래와 같이 extractNoun( )이라는 함수가 RStudio에서 인식되지 않고 찾을 수 없다고 에러가 난다면?
   + error in match.fun(fun) : object 'extractnoun' not found
     *	rJava가 제대로 설치 되지 않아서 KoNLP라는 패키지가 제대로 설치되지 않은 경우
         - rJava를 설치
 
          - 다음과 같이 rJava실행 후 RStudio를 재부팅
            > library(rJava)
![fig2_187](https://user-images.githubusercontent.com/40076487/75106095-068be480-565d-11ea-922f-43d0f04e33fc.png)
+	명사 단위로 분리한 데이터를 테이블 형태 기반 데이터 프레임 구조로 변환
    +	데이터 프레임은 각 열의 데이터가 다양한 데이터 타입 (예: 1번째 열은 문자열, 2번째 열은 숫자 등)을 허용하는 데이터 구조
        *	as.data.frame ( )이라는 함수를 이용해서 변환 후, 해당 변수 X3을 출력해보면 앞서 언급한데로 데이터가 저장되어 있음을 확인

![fig2_188](https://user-images.githubusercontent.com/40076487/75106097-07247b00-565d-11ea-8f6d-3a62bbc04236.png)
![fig2_189](https://user-images.githubusercontent.com/40076487/75106098-07247b00-565d-11ea-806b-f6a6d8722bf3.png)+	원하는 관사와 비동사 빈도 확인
    + a, is, the의 각각 빈도 수 확인가능
![fig2_190](https://user-images.githubusercontent.com/40076487/75106099-07bd1180-565d-11ea-8dfe-f005414a5e75.png)
![fig2_191](https://user-images.githubusercontent.com/40076487/75106100-07bd1180-565d-11ea-81da-6b344c825181.png)
+	불필요한 단어를 공백처리하고 txt로 저장 후 불러들이면 공백이 없어진 채로 들어오게 됨.
![fig2_192](https://user-images.githubusercontent.com/40076487/75106101-0855a800-565d-11ea-96f4-34cb36162739.png)
![fig2_193](https://user-images.githubusercontent.com/40076487/75106102-08ee3e80-565d-11ea-8371-eb6cdba7c7a2.png)
+	감정점수 계산
![fig2_194](https://user-images.githubusercontent.com/40076487/75106103-08ee3e80-565d-11ea-8a89-3d6cf8deeb03.png)
+	감정점수를 평균 계산 후 정확한 수치로 확인
![fig2_195](https://user-images.githubusercontent.com/40076487/75106104-0986d500-565d-11ea-9e97-83a29e6fe1d7.png)
+ 위와 같은 그래프 결과를 얻기 위해 코드 명령어를 확대해서 확인하면 다음과 같음.
![fig2_196](https://user-images.githubusercontent.com/40076487/75106105-0986d500-565d-11ea-9411-917b172b95fa.png)
<div style="text-align: center"> 
    <비전공자 학생들의 강의평가 데이터를 불러와 막대그래프 생성하기>
    
<div style="text-align: left">
    
예제 10) 비전공자 학생들의 강의 평가 데이터를 남학생 및 여학생으로 구분 후 강의 이해도 수준을 분석
+	RStudio에서 막대 그래프를 생성
    + barplot 함수를 사용해서 막대 그래프 생성
 
![fig2_197](https://user-images.githubusercontent.com/40076487/75106106-0a1f6b80-565d-11ea-8e53-5f48b2fa02e3.png) 

+	(비)전공자 학생들에게 컴퓨터 공학(예: 프로그래밍, 컴퓨터와 인간 등) 과목을 강의하고 얼마나 이해했는지, 성별 이해도는 어떻게 될지 등에 대해서 파악할 수 있는 막대 그래프 생성
    +	아래와 같이 종이 설문지 혹은 구글 설문지를 활용하여 엑셀파일에 정리
        *	예) 아래 엑셀파일은 2017년 1학기, 아주대학교 비전공자 학생들에게 실제로 데이터 분석을 강의하고 설문 조사를 기반으로 정리된 데이터들의 일부분
            -	남학생과 여학생 별 강의 이해도
            -	강의 이해도는 5구간으로 분리

![fig2_198](https://user-images.githubusercontent.com/40076487/75106107-0ab80200-565d-11ea-8e37-7fb3db685bdf.png)

+	read.csv 함수를 활용해서 lecture_result.csv라는 파일을 테이블 형태로 읽어 옴.
    *	읽어온 데이터를 lecture_result라는 변수에 저장
    *	lecture_result라는 변수 안의 데이터를 출력해서 데이터가 잘 들어갔는지 확인
+	barplot 함수를 이용해서 막대 그래프를 생성
    *	강의 이해도 수준 별 응답한 남학생의 수를 막대 그래프로 그려 봄.

![fig2_199](https://user-images.githubusercontent.com/40076487/75106108-0b509880-565d-11ea-9d6a-dab3a2698540.png)
![fig2_200](https://user-images.githubusercontent.com/40076487/75106109-0b509880-565d-11ea-98a4-58830d5cf777.png)
+	강의 이해도 수준 별 응답한 여학생의 수를 막대 그래프로 그려 봄
![fig2_201](https://user-images.githubusercontent.com/40076487/75106110-0be92f00-565d-11ea-9b1e-701e9c0a37b6.png)
![fig2_202](https://user-images.githubusercontent.com/40076487/75106111-0c81c580-565d-11ea-9f16-34f4e2454e60.png)
![fig2_203](https://user-images.githubusercontent.com/40076487/75106112-0d1a5c00-565d-11ea-8602-a2db352aee14.png)
<div style="text-align: center"> 
    < 마틴루터킹의 연설문에 나타나는 단어들의 빈도수 분석을 통해 관련된 단어들을 ‘워드 클라우드(WordCloud)’로 시각화>
    
<div style="text-align: left">
    

예제 11) 마틴루터킹등과 같은 유명 인사 연설문 분석 후 워드 클라우드 시각화
+ 데이터 분석 목적
    +	텍스트 마이닝 기법을 활용하여 마틴루터킹의 연설문에서 사용된 주요 단어들 분석
+	출력 설계
    +	다양한 방식으로 수집된 마틴루터킹의 연설문을  저장한 텍스트 파일 (MLK.txt)
        *	크롤링 혹은 기존의 수집되고 검증된 파일 활용
        *	소스 원본은 아래 서버 주소에서 다운받을 수 있음 

+ [Chrome에서 열어보길 권장, 익스플로워에서는 소스가 깨질 수 있기 때문에 별도의 세팅필요] <br>
    + 연설문데이터파일: http://popeye.snu.ac.kr/~hyoh/courses/R/MLK.txt <br>
    + 소스원본: http://popeye.snu.ac.kr/~hyoh/courses/R/MLK.R <br>


    +	텍스트 마이닝 결과로 마틴루터킹의 연설문에 대해 다음과 같은 워드클라우드 이미지 파일 저장 (MLK_interest.png)

![fig2_204](https://user-images.githubusercontent.com/40076487/75106113-0d1a5c00-565d-11ea-95ca-f8f7d0927451.png)


+	텍스트마이닝을 이용한 데이터 정제 및 분석
    +	output<-"MLK.txt"	# 뉴욕타임즈 글을 저장한 결과파일 이름
+	에러가 발생하는 경우
    +	에러를 읽고 해당 함수가 포함된 모듈을 다시 설치
    +	예) extractNoun( )함수를 찾을 수 없는 경우 KoNLP모듈을 다시 설치
![fig2_205](https://user-images.githubusercontent.com/40076487/75106114-0db2f280-565d-11ea-82bd-bdc553bf33b6.png)

+	extractNoun이란?
    +	아래와 같이 Console화면에 궁금한 명령어를 입력하기 시작하면, 해당되는 상세한 설명이 나옴. 항상 부지런하게 활용할 것!
![fig2_206](https://user-images.githubusercontent.com/40076487/75106115-0e4b8900-565d-11ea-8eec-9a71ab449104.png)

+	“extractNoun을 찾을 수 없음” 에러 해결방안
    +	해당 라이브러리만 다시 설치
        *	블록 후, Ctrl+Shift+S 혹은 Ctrl+Shift+Enter
        *	커서를 해당 명령어에 놓고 Ctrl+S
!![fig2_207](https://user-images.githubusercontent.com/40076487/75106116-0e4b8900-565d-11ea-9adc-5c40fa5d73bd.png)

+ 소스를 두번째 수행부터, 이미 설치된 패키지를 다시 설치한것인지 물어보는 팝업창이 뜨는데 매번 “Yes”를 누르거나, 두번째 수행부터는 패키지 설치 명령어들을 주석처리해서 반복적인 작업을 줄임.

![fig2_208](https://user-images.githubusercontent.com/40076487/75106117-0ee41f80-565d-11ea-8c96-3f43bc88bd14.png)
+	명사 추출
![fig2_209](https://user-images.githubusercontent.com/40076487/75106119-0ee41f80-565d-11ea-933e-b59ee5fb2b07.png)
+	빈도수 상위 5개 출력
![fig2_210](https://user-images.githubusercontent.com/40076487/75106120-0f7cb600-565d-11ea-928c-0ec2739842ee.png)
+	결과 파일 확인
![fig2_211](https://user-images.githubusercontent.com/40076487/75106121-10154c80-565d-11ea-9fb4-302866136768.png)

+	소스 원본은 아래 서버 주소에서 다운받을 수 있음 
[Chrome에서 열어보길 권장, 익스플로워에서는 소스가 깨질 수 있기 때문에 별도의 세팅필요]
http://popeye.snu.ac.kr/~hyoh/courses/R/MLK_interest.txt

+ 에러가 발생하는 경우
   + 클라우드를 찾을 수 없는 에러 발생시 해당 모듈을 다시 설치시도

+	최소 빈도수 5 이상인 단어를 워드클라우드로 시각화
    + min.freq = 5

+	최소 빈도수 20 이상인 단어를 워드클라우드로 시각화
    +	min.freq = 20






 
