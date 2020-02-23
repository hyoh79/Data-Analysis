<center>
    
# [컴퓨터, 컴퓨팅 사고 및 R 기초 문법 편][13]

## [R 기초 문법 편]
<나, All about me>
<div style="text-align: left">

+	예제1) 나의 영문 명함 만들기 (내장함수 vs. 사용자 정의함수)
  *	내장함수 사용와 사용자 정의함수 비교

![fig2_1](https://user-images.githubusercontent.com/40076487/75106123-10154c80-565d-11ea-8d35-4c2779494db9.png)
![fig2_2](https://user-images.githubusercontent.com/40076487/75106124-10ade300-565d-11ea-9c06-2ff8a3dfc95f.png)
![fig2_3](https://user-images.githubusercontent.com/40076487/75106125-10ade300-565d-11ea-9c8e-18375cfce947.png)

+ 출력 함수(모니터, 파일)를 활용한 “나의 영문 명함 만들기”
  * print ( ): “모니터에” 나의 영문 명함을 일시적으로 출력하기 [그림. 40참고]
![fig2_4](https://user-images.githubusercontent.com/40076487/75106126-11467980-565d-11ea-823f-6962863554fd.png)
![fig2_5](https://user-images.githubusercontent.com/40076487/75106127-11df1000-565d-11ea-84d1-63f51ed5dadd.png)
![fig2_6](https://user-images.githubusercontent.com/40076487/75106128-11df1000-565d-11ea-912d-fd7cf893fd14.png)
![fig2_7](https://user-images.githubusercontent.com/40076487/75106129-1277a680-565d-11ea-941d-d4f0fa9893a9.png)
그림. 40. 나의 영문 명함 만들기 버전1 (print함수를 이용해서 모니터에 일시적으로 출력하기)
+	message ( ): 또 다른 “모니터 출력 함수” 사용해보기 [그림. 41참고]
	* message( )함수는 print( )함수와 달리 현재 진행 중인 프로그램 번호 [1]이 출력되지 않음을 알 수 있음.

![fig2_8](https://user-images.githubusercontent.com/40076487/75106130-1277a680-565d-11ea-8eaa-f31d87e2d2ff.png)
그림. 41. 나의 영문 명함 만들기 버전2 (message함수를 이용해서 모니터에 일시적으로 출력하기)
+ print( )함수와 cat( )함수를 활용해서 명함 만들기 비교
  *	print( )함수는 단일 데이터만 출력하기 때문에 print( )함수를 3번 호출해서 사용해야하고,
  *	cat( )함수는 여러 데이터를 연속적으로 출력할 수 있기 때문에 1번 호출하되 각 데이터를 콤마(,)로 연결해서 함수 파라미터(인자)로 모두 표현해야되는 것을 알 수 있음.
    -	또한, cat( )에서 여러 데이터를 출력 시 내용이 너무 많고 길어서 다음 줄로 내려서 (한 칸 내려서) 출력하고 싶으면 ‘\n’을 사용.
![fig2_9](https://user-images.githubusercontent.com/40076487/75106133-13a8d380-565d-11ea-8627-4a9215e8f5ee.png)
+ print( ), cat( )랑 message( )를 비교해서 더욱 다양하게 출력 해보기
  *	print( ): 모니터 화면에 “단일 데이터” 출력
  *	cat( ): 모니터 화면에 “여러 데이터들”을 연결하여 출력
  *	message( ): 모니터 화면에 결과만 깨끗하게 출력
    -	아래 실습을 통해 모든 출력 함수를 비교해보자!
![fig2_10](https://user-images.githubusercontent.com/40076487/75106134-13a8d380-565d-11ea-849a-b4211b38b415.png)
  +	출력함수의 다양성 및 에러 해결 방안
 
![fig2_11](https://user-images.githubusercontent.com/40076487/75106135-14416a00-565d-11ea-865f-51d3ce346f32.png)
![fig2_12](https://user-images.githubusercontent.com/40076487/75106136-14416a00-565d-11ea-841f-0a982a26dea7.png)
![fig2_13](https://user-images.githubusercontent.com/40076487/75106137-14da0080-565d-11ea-918c-62cfb7ee6f30.png)+ [참고] 확장자란 무엇인가? 컴퓨터는 확장자를 사용해서 각 파일을 구분합니다. 예를 들어서, 아래 그림과 같이 워드 프로그램에서 작성된 파일은 확장자가 * .doc이고, 한글 프로그램에서 작성된 확장자는 * .hwp이며 사진파일은 확장자가 * .jpg입니다. 파일의 이름은 자유이지만 (예: 레포트.doc이든  프로젝트.doc이든) 워드 프로그램에서 작업 후 파일을 저장하면 자동으로 확장자가 * .doc가 붙습니다. 결과, 나중에 워드 프로그램에서 파일을 열 때도 * .doc파일을 선택해서 열어볼 수 있습니다. 이처럼, RStudio를 사용해서 R프로그래밍 기반 파일을 작성하면 확장자가 * .R인 파일이 생성됩니다. R은 대소문자를 구분하기 때문에 * .r 확장자는 오타이고 * .R로 확장자를 작성해야함을 꼭 주의하세요  
+	아래 그림과 같이 (* .확장자)가 없어도 각 프로그램 이미지만으로도 어떤 프로그램으로 파일을 작성했는지 알 수 있는 있습니다. 하지만, 윈도우 환경에서 명확하게 확장자 보이기를 설정함으로써 확장자 오타 및 기타 관련 에러들을 미리 방지할 수 있습니다.
 ![fig2_14](https://user-images.githubusercontent.com/40076487/75106138-15729700-565d-11ea-845c-89b40bbc74a8.png)
+ 윈도우 환경에서는 기본으로 (default) “알려진 파일은 확장자 숨기기” 기능이 설정되어 있습니다. 따라서 윈도우 환경에서 “알려진 파일은 확장자 숨기기”에서 체크를 없애서 각 파일의 확장자를 보이게 하는 과정이 필요합니다. 예를 들어, 아래 그림과 같은 윈도우 7환경에서 “알려진 파일은 확장자 숨기기”에서 체크를 없애서 각 파일의 확장자를 보이게 했기 때문에 R_source.R이라는 파일 확인 시 확장자 (* .R)이 명확하게 표현된 것을 알 수 있습니다.
![fig2_15](https://user-images.githubusercontent.com/40076487/75106139-15729700-565d-11ea-99c5-9fbb0ef0b561.png)
+	윈도우 운영체제는 다양한 원인들로 주기적으로 버전 업데이트가 되고 새로운 버전이 출시되고 있습니다. 결과, 윈도우 버전 별로 “알려진 파일은 확장자 숨기기” 설정 해제 방법을 알아야합니다. 윈도우 환경은 버전이 변경되도 대체적으로 유사한 성격과 메뉴 등을 가지고 있기 때문에 쉽게 익숙해질 수 있습니다. 하지만 해당 기능은 꼭 알아둬야 하는 부분이기 때문에 본 교재에서는 대표적인 윈도우 별 “알려진 파일은 확장자 숨기기” 기능이 설정 해제 방법을 제시합니다. 예를 들어, 아래 그림은 윈도우 10환경에서 “알려진 파일은 확장자 숨기기” 기능이 설정 해제를 보여줍니다. 위에서 제시한 윈도우 7에서의 설정 해제 화면이 다름을 알 수 있습니다. 기타, 윈도우 운영체제에서 다양한 환경 설정 방법은 [별첨 11]을 참고하세요.
![fig2_16](https://user-images.githubusercontent.com/40076487/75106140-160b2d80-565d-11ea-94d5-803879b1b016.png)
+	print( )랑 message( )를 비교해서 출력 해보기 [그림. 42참고]
![fig2_17](https://user-images.githubusercontent.com/40076487/75106141-16a3c400-565d-11ea-82bd-97cbc8e74214.png)
![fig2_18](https://user-images.githubusercontent.com/40076487/75106142-173c5a80-565d-11ea-9288-6048017bfe05.png)
그림. 42. print와 message함수를 비교&활용해서 모니터에 일시적으로 출력하기 버전
 +	********** 라는 특수기호를 추가로 활용해서 “모니터에” 나의 영문 명함을 일시적으로 출력하기 [그림. 43참고]
+ 앞서 작성한 소스들을 참고하고 혼합해서 “본인 정보로” 아래 미션 1을 직접 수행해보자!
![fig2_19](https://user-images.githubusercontent.com/40076487/75106143-173c5a80-565d-11ea-8961-e38a17a1b4b9.png)
그림. 43. 나의 영문 명함 만들기 버전3 (* 라는 특수기호도 활용해서 좀 더 화려만 개인 명함을 만들어보자!)
![fig2_20](https://user-images.githubusercontent.com/40076487/75106144-17d4f100-565d-11ea-8bd8-4efa1558cfc0.png)
+	sink ( )와 print( )를 활용: “파일에” 나의 영문 명함을 출력해서 장기적으로 소유하기. 
  *	파일이름: MyID.txt
  *	해당 폴더에 가서 확인 결과 아래 그림과 같이 MyID.txt가 존재하고 클릭해서 열어보면 명함이 프린트 된 것을 볼 수 있음.
![fig2_21](https://user-images.githubusercontent.com/40076487/75106145-17d4f100-565d-11ea-99a2-0ed669097779.png)
+	sink ( )와 message ( )를 활용해도 “파일에” 나의 영문 명함을 출력해서 장기적으로 소유할 수 있을까? 
  *	파일이름: MyID_message.txt
  *	해당 폴더에 가서 확인 결과 아래 그림과 같이 MyID_message.txt가 존재하지만 클릭해서 열어보면 명함이 프린트 되지는 않은 것을 볼 수 있음.
    -	결과, sink ( )와 print( )를 활용 후, “파일에” 나의 영문 명함을 출력해야 해당 파일을 장기적으로 소유할 수 있음을 알 수 있음.

![fig2_22](https://user-images.githubusercontent.com/40076487/75106146-186d8780-565d-11ea-955c-7f5830517cd3.png)
+	write ( ): “파일에” 나의 영문 명함을 출력해서 장기적으로 소유하기. 
  *	파일이름: MyID_write_fuc.txt
  *	해당 폴더에 가서 확인 결과 아래 그림과 같이 MyID_write_fuc.txt가 존재하고 클릭해서 열어보면 명함이 프린트 되는 것을 볼 수 있음.
  *	write( )함수는 문법이 아래와 같이 첫번째 인자는 데이터를 담고 있는 매트릭스(matrix), 두번째 인자는 데이터를 출력하고자 하는 파일 이름(예: MyID_write_fun.txt)임.
    -	write(matrix형태의 데이터를 저장한 변수 이름, 데이터 출력을 저장하고자하는 파일이름)
      +	matrix형태의 데이터는 어떻게 만들 수 있는가?
        *	c( )함수는 벡터를 생성하는 함수로 c( )함수 안의 각 인자들로 구성된 벡터를 생성할 수 있기에 이를 활용하고, dim( )함수를 결합해서 행과 열을 지정 후 매트릭스(matrix)로 변환
          -	파일 확장자 및 파일 이름은 자유롭게 만들면 되는가?
      +	파일 확장자는 *.txt 혹은 *.csv로 만들고 각각의 해당 프로그램에서 열거나 파일에서 두 번 클릭해서 확인
        *	예) *.txt로 만들고 해당 폴더에서 클릭 후 메모장에서 열리는 것 확인. 
          -	예) *.csv로 만들고 해당 폴더에서 클릭 후 Excel에서 열리는 것 확인. 
          -	파일 이름은 자유
        *	* .txt와 * csv에서 * 에 해당하는 파일이름은 자유로움. 
    -	결과, c ( ), dim( ) 및 write( )들을 활용 후, “다양한 파일에” 나의 영문 명함을 출력해야 해당 파일을 장기적으로 소유할 수 있음을 알 수 있음.
![fig2_23](https://user-images.githubusercontent.com/40076487/75106147-19061e00-565d-11ea-8b36-6e2c9e41f594.png)
![fig2_24](https://user-images.githubusercontent.com/40076487/75106148-19061e00-565d-11ea-8518-c2fee4a4d95f.png)
![fig2_25](https://user-images.githubusercontent.com/40076487/75106149-199eb480-565d-11ea-9ddb-a1691f4257f0.png)+	write.csv ( ): “파일에” 나의 영문 명함을 출력해서 장기적으로 소유하기. 
  *	파일이름: MyID_write_fuc_dataFrame2.csv 혹은 *.txt
  *	해당 폴더에 가서 확인 결과 아래 그림과 같이 MyID_write_fuc_dataFrame2.csv가 존재하고 클릭해서 열어보면 명함이 프린트 되는 것을 볼 수 있음.
  *	write.csv( )함수는 문법이 아래와 같이 첫번째 인자는 데이터를 담고 있는 데이터프레임(data frame)임. write ( )에서 첫번째 인자 데이터가 매트릭스(matrix)였던 것과 다름에 주의, 두번째 인자는 데이터를 출력하고자 하는 파일 이름(예: MyID_write_fuc_dataFrame2.csv)임.
    -	write.csv(data frame형태의 데이터를 저장한 변수 이름, 데이터 출력을 저장하고자하는 파일이름)
      +	data frame형태의 데이터는 무엇이며 어떻게 만들 수 있는가?
        *	data frame형태의 데이터는 정수와 문자 등의 다양한 타입의 데이터들을 matrix의 각 열의 형태로 가지고 있는 것. (matrix는 동일한 타입의 데이터들로만 모든 열이 구성되는 것에 비해 data frame은 각 열을 각 데이터 타입으로 구성 시킬 수 있기 때문에 좀 더 현실적이고 많이 사용되는 경향이 있음.)
        *	data frame은 앞서 만든 matrix에 data.frame ( )이라는 함수를 적용하면 만들어짐. 다만, 앞서 언급했듯이 c( )함수로 각 열의 데이터를 생성 후 모든 벡터들을 data.frame ( )함수에 입력값으로 넣어서 data frame을 생성할 수도 있음.
      +	결과, data frame ( ) 및 write.csv( )들을 활용 후, “다양한 파일에” 나의 영문 명함을 출력해야 해당 파일을 장기적으로 소유할 수 있음을 알 수 있음.
      +	참고로, write ( )함수는 첫번째 인지가 matrix 형태의 데이터를 요구하기 data frame형태의 데이터로 테스트 시 에러가 남을 추가적으로 알 수 있음. 
![fig2_26](https://user-images.githubusercontent.com/40076487/75106150-1a374b00-565d-11ea-82a6-553e3a067bef.png)
![fig2_27](https://user-images.githubusercontent.com/40076487/75106151-1a374b00-565d-11ea-96ee-5112a5a470ba.png)
![fig2_28](https://user-images.githubusercontent.com/40076487/75106152-1acfe180-565d-11ea-9f9c-6f621b3d8a74.png)+ write.table ( ): “파일에” 나의 영문 명함을 출력해서 장기적으로 소유하기. 
  *	파일이름: MyID_write_fuc_dataFrame3.csv 혹은 *.txt
  *	해당 폴더에 가서 확인 결과 아래 그림과 같이 MyID_write_fuc_dataFrame3.csv가 존재하고 클릭해서 열어보면 명함이 프린트 되는 것을 볼 수 있음.
  *	write.table( )함수의 문법도 아래와 같이 첫번째 인자는 데이터를 담고 있는 데이터프레임(data frame)임. write ( )에서 첫번째 인자 데이터가 매트릭스(matrix)였던 것과 다름에 여전히 주의, 두번째 인자는 데이터를 출력하고자 하는 파일 이름(예: MyID_write_fuc_dataFrame3.csv)임.
    -	write.csv(data frame형태의 데이터를 저장한 변수 이름, 데이터 출력을 저장하고자하는 파일이름)
    -	write.csv ( )함수와 write.table ( )함수의 차이점은 무엇인가?
      +	각 함수의 첫번째 인자는 모두 data frame이 필요로 하고, 두번째 인자는 파일의 이름으로 동일하지만, 출력 결과를 자세히 살펴보면 write.csv ( )함수는 콤마별로 데이터 분리되서 (csv  comma separated value) 더 정교하게 분리되서 파일에 저장된 결과를 가지고 있고, write.table ( )함수는 데이터가 단순히 테이블 형태로 분리되어 저장되어 있는 것을 볼 수 있음.
![fig2_29](https://user-images.githubusercontent.com/40076487/75106153-1b687800-565d-11ea-9570-1c4bd0c2c0d7.png)
+	결과, RStudio에서 활용할 수 있는 다양한 출력 함수(예: print ( ), message ( ), cat ( ), write ( ), write.csv ( ), write.table ( ))이 존재함을 알 수 있음. 
+	특히, write ( )함수와 write.csv ( )함수 및 write.table ( )함수는 각각 입력 값을 matrix 형태의 데이터와 data frame 형태의 데이터를 필요로 하기 때문에 어떻게 각가의 데이터를 먼저 생성할 수 있는지 아래 그림을 참고해서 확실하게 이해하는 것이 매우 중요 
![fig2_30](https://user-images.githubusercontent.com/40076487/75106154-1b687800-565d-11ea-90fe-8660b921adb3.png)
+ 기타, 다양한 입출력 각 함수의 특징과 비교는 아래 정리 테이블 및 그림을 참고
![fig2_31](https://user-images.githubusercontent.com/40076487/75106155-1c010e80-565d-11ea-8e8b-483e34934e8d.png)
그림. 44. 데이터 입력 및 출력 함수들 (테이블 형태: 입력 함수 5개와 출력 함수 5개)
![fig2_32](https://user-images.githubusercontent.com/40076487/75106156-1c010e80-565d-11ea-8cec-2e5c94490652.png)
그림. 45. 데이터 입력 및 출력 함수들 (컴퓨터 형태: 입력 함수 5개와 출력 함수 5개)

+ 예제2) 나의 개인 정보를 컴퓨터 그릇에 담고 확인
   *	다양한 데이터 타입으로 개인 정보(영어이름, 나이, 키, 소속, 이메일 주소 등)를 변수에 저장하고 출력하는 예제
     -	변수: 데이터를 담을 수 있는 컴퓨터 그릇(컴퓨터 메모리)
       +	실제 물리적인 메모리는 16진수등과 같은 기계어 저장 단위로 구분되지만 프로그래머는 단순히 변수 명을 작성하고 이를 활용해서 메모리 공간(변수)안의 데이터를 입출력 할 수 있음.
        +	예) num<-10 이라는 명령어의 해석은 메모리안에 num라는 변수공간을 만들고 그 안에 10이라는 데이터를 입력함.
        +	다만, 변수이름은 해당 데이터의 성격을 반영해서 짓는 것이 중요
        +	좋은 변수 이름의 예) 숫자 10저장하고 있는 변수 명은 숫자의 성격을 반영해서 num이라고 짓는 것이 좋음. 
        +	나쁜 변수 이름의 예) 물론, x<-10도 실행 시 문제가 없지만 x라는 변수 명을 프프로그래머 해석할 때 x안의 데이터가 숫자인지 문자인지 또 어떤 성격의 데이터인지 추측하기 힘들기 때문에 좋은 경우가 아님.
          *	즉, 가독성(readability)이 매우 떨어지는 변수 명은 향후 다양한 프로그래머들과 팀을 이뤄서 소스를 공유하고 작업 시 비효율적 임.
          *	심지어, 본인이 작성한 소스도 오랜 시간 뒤에 또는 많은 변수가 존재하는 프로그램내에서는 변수 명을 보면서 해당 데이터의 성격을 추측하면서 프로그래밍을 해야하는데 가독성이 떨어지는 변수 명을 사용하게 되면 해석에 방해가 되고 작업 시 에러가 많이 날 수 있기에 매우 비효율적 임.
     -	변수 명: 첫 글자는 알파벳으로만 시작해야하고, 중간 글자는 _ 혹은 . 및 숫자 사용 가능.
       +	예) temp_data는 올바른 변수명(0)
       +	예) _temp_data는 올바르지 않은 변수명(x)
       +	예) 2temp_data는 올바르지 않은 변수명(x)
       +	예) 2_temp_data는 올바르지 않은 변수명(x)
     -	데이터 타입: 숫자(정수,실수), 문자(문자,문자열), 논리값(참,거짓), NA, NULL
       +	데이터 타입 확인: class (데이터의 변수이름), 예) class(name)
       +	NA: Not Applicable 혹은 Not Available을 의미하는 예약어
       +	NULL: 없는 단어를 의미하는 예약어
     -	변수에 데이터를 저장 문법: 변수명 <- 데이터 (예: name <- “Hayoung Oh”)
       +	모든 변수 확인: object( )
       +	특정 변수 삭제: rm (변수이름), 예) rm(name) 혹은 rm(num)
         *	결과, 메모리의 해당 부분에서 각각의 데이터가 삭제되는 것을 알 수 있음.
           -	예) rm(name)실행 시 메모리에서 name부분은 삭제됨.
             +	확인방법: rm(name)실행 후, object( )실행 후 name이 삭제된 것을 확인.
           -	예) rm(num)실행 시 메모리에서 num부분은 삭제됨.
             +	확인방법: rm(num)실행 후, object( )실행 후 num이 삭제된 것을 확인.
       + 모든 변수 삭제: rm (list=ls( ))
         *	확인방법: rm(list=ls( ))실행 후, object( )실행 후 모든 변수들이 삭제된 것을 확인.
     -	개인정보 확인: print( )/cat( ) 및 write( )/write.csv( )/write.table( )등의 다양한 출력함수들을 이용해서 확인
       +	차이점
         *	print( )/cat( )함수는 콘솔 창에 결과가 보이고 RStudio를 끄면 결과가 사라짐.  
         *	write( )/write.csv( )/write.table( )함수는 파일로 결과를 저장할 수 있기 때문에 RStudio를 꺼도 결과가 사라지지 않음.
+	예제3) 나의 개인 정보를 “실시간으로” 컴퓨터 그릇에 담고 확인
  *	예제2번과 같은 결과를 출력하되 “실시간으로” 작동
    -	키보드로부터 혹은 파일로부터 “한 단어씩”, “실시간” 읽기: scan( ) [그림. 46참고]
![fig2_33](https://user-images.githubusercontent.com/40076487/75106157-1c99a500-565d-11ea-8781-f5517363ec51.png)
그림. 46. 키보드 혹은 파일에서 각각의 데이터 실시간으로 읽기 (scan( ) 혹은 scan(“파일명”)

         - 키보드로부터만 “한 줄씩”, “실시간” 읽기: readline( ) [그림. 47참고] [주의사항] scan( )함수와 readline( )함수의 기능 차이점 주의!!
         
![fig2_34](https://user-images.githubusercontent.com/40076487/75106158-1d323b80-565d-11ea-9c02-ecf7c5931cf0.png)
<div style="text-align: center"> 
    
그림. 47. 키보드로부터 “한 줄씩”, “실시간”으로 데이터 읽기 (readline( ))
<div style="text-align: left">
-	예제4) “많은” 정보를 컴퓨터 그릇에 담고 확인
  +	2개 이상의 많은 정보를 담고 있는 파일 생성: *.txt, *.csv, *.prn
    *	“모든” 파일로부터 여러 데이터를 “여러 줄 단위로” 읽기: readLines( )
    * [주의사항] readline( )함수와 readLines( ) 함수의 알파벳/대소문자 차이점 주의! [그림. 48 참고]

![fig2_35](https://user-images.githubusercontent.com/40076487/75106159-1d323b80-565d-11ea-871f-0659300f0117.png)
<div style="text-align: center"> 
    
그림. 48. 키보드로부터 “한 줄씩”, “실시간”으로 데이터 읽기 vs. 파일에서 “여러 줄” 읽어오기 비교 (readline( ) vs. readLines( ))
<div style="text-align: left">
    
② “모든” 파일로부터 여러 데이터를 “테이블 형태로” 읽기: read.table( ) [그림. 49 및 50 참고]
[주의사항] readLines( ) 함수와 read.table( )함수의 기능 차이점 주의!!


![fig2_36](https://user-images.githubusercontent.com/40076487/75106160-1dcad200-565d-11ea-8cad-43cd4e60b3f8.png)
그림. 49. 파일에서 “여러 줄” 읽어오기 vs. “모든” 타입/확장자의 파일들로부터 여러 데이터를 “테이블 형태로” 읽기 (readLines( ) vs. read.table( ))


+ read.table ( )함수에서 첫번째, 두번째, 세번째 인자를 정확하게 알고 다양하게 활용해보기.
  * read.table ( )함수에서 첫번째 인자
    -	컴퓨터 RStudio에서 읽고자 하는 파일이름
      +	파일 안에는 2개 이상의 작은 데이터 셋부터 넓게는 빅 데이터까지 존재 가능.
+	read.table ( )함수에서 두번째 인자
  *	컴퓨터 RStudio에서 읽은 파일을 따로 마우스 두 번 클릭 후 확인해보면 
    -	해당 데이터 셋이 실제 데이터들로만 구성되어 있는 경우가 있고<br> ![fig2_37](https://user-images.githubusercontent.com/40076487/75106161-1dcad200-565d-11ea-9716-db2fbaba341b.png)    -	실제 데이터들뿐만 아니라 데이터를 열(colum)별로 구분해주는 변수가 따로 지정되어 있는 경우가 있음<br> ![fig2_38](https://user-images.githubusercontent.com/40076487/75106162-1e636880-565d-11ea-8946-54056b90df39.png)
  * read.table ( )함수에서 세번째 인자
    -	앞서 언급된 파일 안의 각 데이터들이 
      +	tab으로 구분되어 있는지: “\t”
      +	comma로 구분되어 있는지: “,”
      +	enter로 구분되어 있는지: “\n”
        *	예) sep = “\t” 로 명시해줌. [그림. xx 참고] 
![fig2_39](https://user-images.githubusercontent.com/40076487/75106163-1efbff00-565d-11ea-80a7-4f8f69f61c08.png)
![fig2_40](https://user-images.githubusercontent.com/40076487/75106164-1efbff00-565d-11ea-84c3-5946d9dfdf1b.png)
![fig2_41](https://user-images.githubusercontent.com/40076487/75106165-1f949580-565d-11ea-8345-f6ecd7c0f978.png)그림. 50. “모든” 타입/확장자의 파일들로부터 여러 데이터를 “테이블 형태로” 읽기 (read.table( ))
  -	데이터 셋(객체)의 타입: class ( ), 예) class(데이터 프레임의 변수이름)
  - 데이터 셋(객체)의 차원: dim( ), 예) dim(데이터 프레임의 변수이름)
  -	데이터 셋(객체)의 변수들 개수 확인: length( ), 예) length(데이터 프레임                    의 변수이름)
  -	데이터 셋(객체)의 변수 이름들 확인: names( ), 예) names(데이터 프레임의                    변수이름)
  -	데이터 셋(객체)의 정보: str( ), 예) str(데이터 프레임의 변수이름)
         [참고] 같은 데이터를 다양한 확장자를 가진 파일들로 만들 수 있을까? 그리고 RStudio에서 이런 파일들을 입력데이터로 사용하려면 어떻게 해야할까? [그림. 51과 52 참고] 
![fig2_42](https://user-images.githubusercontent.com/40076487/75106167-202d2c00-565d-11ea-8696-11cc84e0ba53.png)
<div style="text-align: center"> 
    
그림. 51. 다양한 타입/확장자를 가진 파일들 만들기
<div style="text-align: left">

![fig2_43](https://user-images.githubusercontent.com/40076487/75106168-202d2c00-565d-11ea-84de-a656ccb52c07.png)
<div style="text-align: center"> 
    
그림. 51. 다양한 타입/확장자를 가진 파일들을 만들고 RStudio에서 각각 열어보기
<div style="text-align: left">

+ [참고] read.table( )함수는 파일에 저장된 입력 데이터를 보기 좋게 정리된 테이블 형태로 보여준다. 다른 함수들과 마찬가지로 read.table( )함수도 다양한 인자(arguments)들을 사용하는 방법에 따라서 굉장히 다양하게 사용할 수 있다. 앞서 언급했지만 프로그래밍 코딩은 변수 와 함수들로 구성된다. 함수는 중고등학교 배웠던 개념(독립변수 x 입력 값에 따른 종속변수 결과 값 y)으로 생각하면 되고 프로그래밍 코딩에는 무한개의 함수가 존재한다. read.table( )은 그 중 한 예인 함수로 다양한 입력 값(즉, 함수 인자)들을 가질 수 있으며 결과 값으로 보기 좋게 정리된 테이블 형태가 출력된다. read.table( )함수를 다양한 경우로 분리해서 사용할 수 있는 예제를 참고  해보자. [그림. 53]
![fig2_44](https://user-images.githubusercontent.com/40076487/75106169-20c5c280-565d-11ea-99e9-51c72f889973.png)
<div style="text-align: center"> 
    
그림. 53. RStudio에서 read.table( ) 함수를 이용해서 확장자가 csv (comma separate value) 인datafilecomman.csv 엑셀 파일 열어보기
<div style="text-align: left">
![fig2_45](https://user-images.githubusercontent.com/40076487/75106170-20c5c280-565d-11ea-843f-77746346514e.png)
<div style="text-align: center"> 
    
그림. 54. RStudio에서 read.csv( ) 함수를 이용해서 확장자가 csv (comma separate value) 인datafilecomman.csv 엑셀 파일 열어보기
<div style="text-align: left">
![fig2_46](https://user-images.githubusercontent.com/40076487/75106171-215e5900-565d-11ea-9879-008c16aa84af.png)
<div style="text-align: center"> 
    
그림. 55. RStudio에서 read.csv( ) 함수의 row.names 인자를 활용해서 datafilecomman_row.csv 엑셀 파일의 첫번째 컬럼도 열어보기
<div style="text-align: left">
④ read.table( )함수 적용 결과, 컴퓨터 내부에 저장된 데이터 형태는 구체적으로 어떤 구조일까? -> 데이터 프레임 (Data Frame) [그림. 56]

![fig2_47](https://user-images.githubusercontent.com/40076487/75106172-21f6ef80-565d-11ea-8534-b8e5a3d6979e.png)
<div style="text-align: center"> 
    
그림. 56. RStudio에서 read.table( ) 함수를 이용해서 불러온 입력 파일이 컴퓨터 내부(메모리)에 어떤 구조로 저장되어 있는 지 class( )라는 함수를 활용해서 확인
<div style="text-align: left">
    
⑤ 벡터 생성 함수를 활용해서 다양한 데이터 타입을 저장하는 데이터 프레임을 직접 생성해보거나 다른 데이터 타입을 데이터 프레임 형태로 변환 해보기. [그림. 57]

![fig2_48](https://user-images.githubusercontent.com/40076487/75106174-21f6ef80-565d-11ea-8f66-200ab64d2fbc.png)
<div style="text-align: center"> 
    
그림. 57. RStudio에서 c( )라는 함수를 활용해서 다양한 벡터를 만들고 다양한 벡터들로 구성된data frame을 data.frame( )이라는 함수를 이용해서 만들어보기
<div style="text-align: left">


