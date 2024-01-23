import 'package:flutter/material.dart';

void main() {
  //runApp인자로는 메인페이지 클래스를 넣으면 됨.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    /*  지난강의 주석

    /* 1강 */

    //Main page 디자인 부분.
    //Flutter는 위젯을 사용하여 디자인 (대부분 대문자로 시작 소괄호 있음.)


    //Text(), Icon(Icons.###)
    //Image.asset(경로)     이미지는 프로젝트 폴더내 파일로 존재하고 등록하여 사용하여야 함.
    //웹에서 미리보기시 경로를 생략해도 잘 작동한다는데 assets/ 로 시작하도록 경로를 설정하면 왜인지 작동을 안함.

    //등록 파일 pubspec.yaml 앱 개발에 필요한 자료들을 정리한 파일.

    //박스생성 Container() or SizedBox()
    //Container(width: 50, height: 50, color: Colors.blue,) flutter에서는 LP 단위를 사용

    //웹에서 사용한 DOMTree 구조와 비슷한 양상으로 위젯을 정렬할 수 있음.
    //home: Center(
    //           child: Container(width: 50, height: 50, color: Colors.blue,)
    //         )

    /* 2강 */
    //MaterialApp() 도 위젯이다.

    // MaterialApp()위젯을 구글에서 제공하는 기본 위젯 스타일 적용 뿐 아니라 커스텀 가능
    // 코드 간편화를 위해 materialapp()으로 개발한뒤 구글 스타일 디자인을 제거해주는 형식으로 커스텀
    // Ios 위젯을 사용하고 싶다면 Cupertino() 이용.

    //어플리케이션의 섹션 구분
    //Scaffold(
    //           appBar: AppBar(), //상단
    //           body: Container(), //몸통
    //           bottomNavigationBar: BottomAppBar(child: Text("bottomappbar"),), //하단
    //         )
    //


    //여러개의 자식 요소들을 나열할때 Container()말고 Row 활용 //Colum도 있음.
    //home: Scaffold(

    //mainAxisAlignment: MainAxisAlignment.### 정렬 옵션.   //가로-> Row 위젯이기 때문에 mainAxis가 가로임
    //                                                      Colum 위젯의 경우 mainAxis가 세로가 된다.
    //

    //           body: Row(
    //             children: [
    //               Icon(Icons.star),
    //               Icon(Icons.shop),
    //             ]
    //           )
    //         )
    //     );


    /* **** ctrl + space **** 자동 완성 단축키 */


    /* 3강 */

    //witdh, heigth, child용도로 사용하는 건 Sizedbox가 성능상 이점을 가져갈 수 있다고 함.

    /*return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("상단바"), backgroundColor: Colors.cyan,),
          body: const Text("바디"),
          bottomNavigationBar: const BottomAppBar(

          // 강의에서는 SizedBox, Container 로 Row를 감싸 height를 조정하는데 본 버전에서는 적용이 안됨.
          // BottomAppBar 위젯에서 height를 조정할 수 있는데 아이콘이 잘려서 나오는 결과가 나옴.
            height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.phone),
                    Icon(Icons.message),
                    Icon(Icons.contact_page),
                  ],
                ),
              ),
          ),
    );
  }*/

    // margin과 padding은 EdgeInsets를 사용하여 디자인함.
    // margin: const EdgeInsets.fromLTRB(20, 20, 0,0),
    //           padding: const EdgeInsets.all(30),

    // Container의 스타일 관련 속성들은 decoration: 에서 지정할 수 있음.

    /*return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: const Text("앱2"), backgroundColor: Colors.red),
            body: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                height: 150,
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber),
                ),
                child: const Text("Padding"),
              ),
            )
        )
    );*/

    /*4강*/

    /*당근마켓 layout 만들기*/

    /*4강 숙제에서 나오는 좌측 상단 appbar에 있는 dropdownButton을 사용하려 하는데 문법오류가 발생하여 책을 찾아본 부분*/
    /*강의에서는 statelessWiget을 다룬다. 즉 layout과 관련한 디자인 측면만 학습하는것 이기 때문에 dropdownButton에 사용되는
    * 화면이 변하는 동적인 부분은 나중에 다루기로 하였다. flutter를 활용한 프로젝트 구조를 이해하지 못한것 같아 도서관에서 관련 서적을 찾아
    * 구조적인 측면을 학습하였다.*/

    /*dropdownMenuItem을 사용하려면 value와 onChanged 속성이 지정되어야 한다.
    관련 서적을 찾아본 결과 statelessWiget을 상속받고 MaterialApp에서 home 속성에서 직접 화면을 구성하고 있기때문에 상태가 변환되는 dropdown위젯을 사용할 수 없다.
     dropdownbutton을 사용하기 위해서는 value에 변수가 지정되어야 하는데 변수는 StatefulWiget을 상속받은 클래스에서 사용할 수 있으므로 강의에서 진행
      하는 구조로는 원하는 레이아웃 구성이 어렵다.*/

    /*dropdownButton으로 화면이 변하는 동적인것을 구현하기 위해서는 StatefulWiget을 상속한
    * 클래스를 생성하여 MaterialApp()의 home 프로퍼티에 넘겨주어야 함.*/

    //Text() 위젯에 style: 속성 Textstyle()을 통해 글자 스타일을 지정할 수 있음.
    //TextButton(), IconButtion(),ElevatedButton(), child: -> 버튼 내부에 들어갈 속성, onPressed(){} 클릭시 수행할 함수.
    //버튼 디자인은 style: ButtonStyle()

    //appBar 디자인
    //title: <왼쪽 제목  leading: <- 왼쪽 상단 영역  actions: [] <- 오른쪽 상단 영역, 리스트 형태라 여러 아이콘 사용가능하다.



     */
    /*5강*/

    //Flexable(), Expaned()
    //부모 속성에서 자식의 영역을 유동적으로 배수 단위로 정렬하는 방식
    //Expaned()는 Flexable을 1단위 가짐
    //커스텀 위젯을 생성하고 싶으면 별도의 stful, stless 클래스를 상속받아 class생성.
    //ListView()의 경우 Colum()위젯과 다르게 스크롤바를 자동으로 생성, 스크롤 추적 가능,
    //메모리 절약 기능 또한 포함되어 있음.
    //만약 스크롤 바를 별도로 통제하고 싶으면 ListView() 에 매개변수로 scrollController 넘겨야함.

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
                leadingWidth: 100,
                centerTitle: true,
                title: const Text('Test flexalbe'),
                elevation: 10,
                shadowColor: Colors.black,
                actions: const [
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
                leading: DropdownButton(
                  items: const [
                    DropdownMenuItem<String>(child: Text('DropdownItem', overflow: TextOverflow.ellipsis,),),
                  ],
                  iconSize: 30,
                  onChanged: null,
                  isExpanded: true,
                ),
                backgroundColor: Colors.white,
            ),
            body: ListView(
              children: const [
                mylayout(),
                mylayout(),
                mylayout(),
                mylayout(),
                mylayout(),
                mylayout(),
              ],
            ),
        )
    );
  }
  }
class mylayout extends StatelessWidget {
  const mylayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Flexible(flex: 3,child: Image.asset('house3.jpg',),),
          Flexible(flex: 7,child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('대전광역시 유성구 대학로99'),
                Text('300/80'),
                Text('풀옵션'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite),
                    Text('4'),
                  ],
                )
              ],
            ),
          ),),
        ],
      ),
    );
  }
}

