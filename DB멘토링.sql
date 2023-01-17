* DB멘토링 : 김광진

> 모델링 주소 
URL : https://aquerytool.com/aquerymain/index/?rurl=e84fb4b9-42b9-43eb-9d1e-1d4bad53fd25&
Password : y351e1


 팀명 : 범블비  
 팀원 : 위종일 장제원 반재영 박지후 양도근 차동훈 전병섭
 주제 : 스마트 양봉장
 일시 : 2023.01.17
 팀장 이메일 : whddlf0822@naver.com

● 객체지향프로그래밍(OOP, Object-Oriented Programming) : JAVA

 객체란?
. 세상에 존재하는 것(유무형) 
. 사람/동물/사물/장소/노래/공연/예약/주문/배송/느낌/감정 등 지극히 개념적인 것.

(1) 고유한 속성이 있는 것 
(2) 타인도 알 수 있는 것 
(3) 사전에 등록된 단어

A : "우리 오늘 점심 때 라면 먹을래?"
B : "응, 그래 좋아~!"

         라면 --> 객체(o)
"오뚜기진라면" --> 객체가 구현된 실체(instance)       
---------------------------------------------------------------------

* 고유한 속성을 자바언어에서 어떻게 표현하지?

> Primitive Type

정수형(4)
. byte     ... 8 bit(작은수), 2^8=256 (-128~-1, 0~127)
. short    ...16 bit(큰수)
. int      ...32 bit(더큰수)
. long     ...64 bit(엄청큰수)
실수형(2)
. float    ...32 bit
. double   ...64 bit
문자형(1)
. char     ...16 bit 유니코드
불린형(1)
. boolean  ... 1 bit(True/False)ㄹㄹdddddlddsd

*비트(bit, binary digit) : 컴퓨터에서 정보를 표시하기 위한 최소 단위(0,1)

---------------------------------------------------------------------
* 속성 + 기능까지 포함된 객체는 어떻게 다루지?  클래스

(1) 사용자 정의 클래스(user-defined class) : Student 
(2) 내장 클래스(built-in class) : ArrayList / String / Integer / Double / Random / Date / Calendar etc


학생 : 이름/나이/학과  +  출석하다()/공부하다()/시험보다()
      --------------     ------------------------------
          (속성)                   (기능)

public class Student {                           // 클래스 이름

   private String name;                          // 속성:멤버필드:Property
   private int age;

   
   public Student()                              // 생성자 1
   {
   
   }
   
   public Student(String name, int age)          // 생성자 2
   {
      this.name = name;
      this.age  = age;
   }

   public void setName(String name) {            // 기능:메소드:멤버함수:Operation  
         this.name = name;
   }
      
   public String getName() {
         return this.name;
   }  

   public void setAge(int age) {
         this.age = age;
   }
      
   public int getAge() {
         return this.age;
   }
      
}          


(0) 객체──┐
(1) 고유 속성 --> Primitive Type (기초타입 8가지)
(2) 속성+기능 --> Reference Type (클래스/추상클래스/인터페이스)

---------------------------------------------------------------------
> 추상 클래스(abstract class) :

   (type)     (subtype)
. 구기종목 : 축구/야구/농구/배구/탁구
. 가전제품 : TV/냉장고/세탁기/전자렌지
. 모양     : 세모/네모/동그라미/마름모/별모양
. 색깔     : 빨강/노랑/파랑/초록/보라
. 병       : 술병/물병/약병/꽃병

class C extends A    (o)
class C extends A, B (o) // 중복상속 금지
---------------------------------------------------------------------
> 인터페이스(interface) : 객체들 간에 자주 발생하는 동작이나 상태를 미리 정의해 놓은 것.

   face <--> face
        .talk()
        .fight()

public interface Human {

   public void talk();
   public void fight();

}  

public class Boy implements Human {

   @Override // 재정의
   public void talk()
   {
      System.out.println("Boy is talking...");
   }
   @Override
   public void fight()
   {
      System.out.println("Boy is fighting..");
   }
}


public void talk()  // 선언부(head)
{
   ....             // 구현부(body)
}

public interface ITV {

   public void on();
   public void off();
   public void switchChannel(int channel);

}


Tom Crusso : "There is no new thing under the sun." (1923)


int a = 10;
Student s1 = new Student();

Student.java --> Student.class --> JVM(Java Virtual Machine)-->Java Runtime Data Area 


     [Stack Area].......................[Heap Area]
        a=10                            new Student() : 0x3098523045923409dafe 
        s1= 0x3098523045923409dafe

-------------------------------------------------------------------------------
Student s1 = new Student();  (o)
Human   h1 = new Human();    (x)
Boy     h1 = new Boy();      (o)
Human   h1 = new Boy();      (o)

ex) List list = new ArrayList();


Student s1 = new Student("Tomson", 28);
Student s2 = new Student("Jack",   25);
Student s3 = new Student("Bill",   24);
Student s4 = new Student("John",   26);
Student s5 = new Student("Steve",  28);


ArrayList<Student> list = new ArrayList<Student>();

list.add(s1);
list.add(s2);
list.add(s3);
list.add(s4);
list.add(s5);

list = {s1, s2, s3, s4, s5}


for (int i = 0; i < list.size(); i++) {
   Student s = list.get(i);
   System.out.println(s.getName());
}

for (Student s : list)
{
   System.out.println(s.getName());
}

* ArrayList 사용 시 주의할 점 3가지 

(i) ArrayList<T> list = new ArrayList<T>();   // 타입<T>을 지정하지 않으면, Object가 기본 타입으로 세팅됨.

ArrayList list = new ArrayList();
list.add("a");                                // "a"가 문자열로 들어가는 게 아니라, Object로 들어감.
String s = (String) list.get(0);              // 형변환이 필요함.

ArrayList<String> list = new ArrayList<String>();
list.add("b");
String s = list.get(0);                       // 형변환이 필요 없음.

(ii) ArrayList<String> list = new ArrayList<>();  // 인정됨? 네.왜죠? 타입추론 

(iii) ArrayList<int> list = new ArrayList<int>(); // int 같은 Primitive Type은 타입으로 쓸 수 없음.

ArrayList<int> list = new ArrayList<int>();          (x)
ArrayList<Integer> list = new ArrayList<Integer>();  (o) 
list.add(new Integer(10));                        // boxing
list.add(10);                                     // autoboxing

int .... Integer 

int a = 10;
Integer num1 = new Integer(a);                // boxing 
int     num2 = num1.intValue();               // unboxing 
Integer num3 = a;                             // autoboxing 
int     num4 = num3;                          // autounboxing 

[Wrapper Class] : Primitive Type --> Reference Type으로 바꿔주는 클래스
----------------------------------------------------------------------
         기초타입(8) ... 참조형 클래스
            byte    ...  Byte
            short   ...  Short
            int     ...  Integer *
            long    ...  Long
            float   ...  Float
            double  ...  Double
            char    ...  Character
            boolean ...  Boolean 
-----------------------------------------------------------------------
* 근데, 인스턴스 개수가 엄청나게 많아지면 어떡할래? 데이터베이스!

회원관리={회원1, 회원2, 회원3, 회원4, 회원5, ... } <--- 인스턴스 집합: 엔터티(entity)

회원관리       MEMBER_INFO/ MEMBERS / T_MEMBER / TB_MEMBER / TBL_MEMBER
---------------------------------------------------------------------
회원 아이디    MB_ID VARCHAR2(20) NOT NULL
회원 비밀번호  MB_PW VARCHAR2(20) NOT NULL
회원 이름      MB_NAME VARCHAR2(40) NOT NULL 
회원 이메일    MB_EMAIL VARCHAR(50) NOT NULL
---------------------------------------------------------------------
CREATE TABLE T_MEMBER (
   MB_ID VARCHAR2(20) NOT NULL,
   MB_PW VARCHAR2(20) NOT NULL,
   MB_NAME VARCHAR2(40) NOT NULL,
   MB_EMAIL VARCHAR(50) NOT NULL,
   CONSTRAINT PK_MEMBER PRIMARY KEY(MB_ID)
);

CREATE TABLE T2(
   ....
   ....
   ....
);

쌤! 제가 타이핑을 해서 테이블을 하나씩 만들고 있습니다.
손가락이 욜라 아픕니다.
좀 더 편한 방법이 업떠요? 이떠요! 그게 모죠? DB설계툴!:?!

(1) https://www.erwin.com      (전세계 1위) <--'네카라쿠배당토직야'

(2) https://www.erdcloud.com 

(3) https://www.aquerytool.com (국산허접, but...)

----------------------------------------------
> 오라클에서 숫자는 number 타입으로 해결이 가능함.

. 정수 : 999,999,999   ... number(9,0)
. 실수 : 99,999,999.1  ... number(9,1)
. 위도경도:            ... number(17,14)

위도(latitude) :   36.23405 23945 6829
경도(longitude) : 127.23546 09242 8952

> 회원 유형 : 일반회원('M'), 관리자('A')


1:0
1:1
1:N(여러개,numerous)
---------------------------------------------------
(핵심프로젝트 최종 SQL문)

-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- tb_member Table Create SQL
-- 테이블 생성 SQL - tb_member
CREATE TABLE tb_member
(
    mb_id          VARCHAR2(20)     NOT NULL, 
    mb_pw          VARCHAR2(20)     NOT NULL, 
    mb_name        VARCHAR2(20)     NOT NULL, 
    mb_age         NUMBER(12, 0)    NOT NULL, 
    mb_job         VARCHAR2(30)     NOT NULL, 
    mb_region      VARCHAR2(30)     NOT NULL, 
    mb_tel         VARCHAR2(20)     NOT NULL, 
    mb_joindate    DATE             NOT NULL, 
    mb_type        CHAR(1)          DEFAULT 'M' NOT NULL, 
     PRIMARY KEY (mb_id)
);

-- 테이블 Comment 설정 SQL - tb_member
COMMENT ON TABLE tb_member IS '회원정보';

-- 컬럼 Comment 설정 SQL - tb_member.mb_id
COMMENT ON COLUMN tb_member.mb_id IS '회원 아이디';

-- 컬럼 Comment 설정 SQL - tb_member.mb_pw
COMMENT ON COLUMN tb_member.mb_pw IS '회원 패스워드';

-- 컬럼 Comment 설정 SQL - tb_member.mb_name
COMMENT ON COLUMN tb_member.mb_name IS '회원 이름';

-- 컬럼 Comment 설정 SQL - tb_member.mb_age
COMMENT ON COLUMN tb_member.mb_age IS '회원 나이';

-- 컬럼 Comment 설정 SQL - tb_member.mb_job
COMMENT ON COLUMN tb_member.mb_job IS '회원 직업';

-- 컬럼 Comment 설정 SQL - tb_member.mb_region
COMMENT ON COLUMN tb_member.mb_region IS '회원 지역';

-- 컬럼 Comment 설정 SQL - tb_member.mb_tel
COMMENT ON COLUMN tb_member.mb_tel IS '회원 전화번호';

-- 컬럼 Comment 설정 SQL - tb_member.mb_joindate
COMMENT ON COLUMN tb_member.mb_joindate IS '회원 가입일자';

-- 컬럼 Comment 설정 SQL - tb_member.mb_type
COMMENT ON COLUMN tb_member.mb_type IS '회원 유형';


-- tb_board Table Create SQL
-- 테이블 생성 SQL - tb_board
CREATE TABLE tb_board
(
    board_seq        NUMBER(12, 0)     NOT NULL, 
    board_title      VARCHAR2(500)     NOT NULL, 
    board_content    VARCHAR2(4000)    NOT NULL, 
    board_file       VARCHAR2(500)     NOT NULL, 
    board_dt         DATE              NOT NULL, 
    mb_id            VARCHAR2(20)      NOT NULL, 
    board_views      NUMBER(12, 0)     NOT NULL, 
    board_likes      NUMBER(12, 0)     NOT NULL, 
     PRIMARY KEY (board_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - tb_board.board_seq
CREATE SEQUENCE tb_board_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - tb_board.board_seq
CREATE OR REPLACE TRIGGER tb_board_AI_TRG
BEFORE INSERT ON tb_board 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_board_SEQ.NEXTVAL
    INTO :NEW.board_seq
    FROM DUAL;
END;

-- DROP TRIGGER tb_board_AI_TRG; 

-- DROP SEQUENCE tb_board_SEQ; 

-- 테이블 Comment 설정 SQL - tb_board
COMMENT ON TABLE tb_board IS '게시판';

-- 컬럼 Comment 설정 SQL - tb_board.board_seq
COMMENT ON COLUMN tb_board.board_seq IS '글 순번';

-- 컬럼 Comment 설정 SQL - tb_board.board_title
COMMENT ON COLUMN tb_board.board_title IS '글 제목';

-- 컬럼 Comment 설정 SQL - tb_board.board_content
COMMENT ON COLUMN tb_board.board_content IS '글 내용';

-- 컬럼 Comment 설정 SQL - tb_board.board_file
COMMENT ON COLUMN tb_board.board_file IS '글 첨부파일';

-- 컬럼 Comment 설정 SQL - tb_board.board_dt
COMMENT ON COLUMN tb_board.board_dt IS '글 작성일자';

-- 컬럼 Comment 설정 SQL - tb_board.mb_id
COMMENT ON COLUMN tb_board.mb_id IS '글 작성자';

-- 컬럼 Comment 설정 SQL - tb_board.board_views
COMMENT ON COLUMN tb_board.board_views IS '글 조회수';

-- 컬럼 Comment 설정 SQL - tb_board.board_likes
COMMENT ON COLUMN tb_board.board_likes IS '글 좋아요수';

-- Foreign Key 설정 SQL - tb_board(mb_id) -> tb_member(mb_id)
ALTER TABLE tb_board
    ADD CONSTRAINT FK_tb_board_mb_id_tb_member_mb FOREIGN KEY (mb_id)
        REFERENCES tb_member (mb_id);

-- Foreign Key 삭제 SQL - tb_board(mb_id)
-- ALTER TABLE tb_board
-- DROP CONSTRAINT FK_tb_board_mb_id_tb_member_mb;


-- tb_beehive Table Create SQL
-- 테이블 생성 SQL - tb_beehive
CREATE TABLE tb_beehive
(
    bh_seq            NUMBER(12, 0)    NOT NULL, 
    owner_id          VARCHAR2(20)     NOT NULL, 
    bh_weight         NUMBER(12, 3)    NOT NULL, 
    catcher_weight    NUMBER(12, 3)    NOT NULL, 
    bh_temp           NUMBER(12, 1)    NOT NULL, 
    bh_humid          NUMBER(12, 1)    NOT NULL, 
    bh_time           DATE             NOT NULL, 
     PRIMARY KEY (bh_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - tb_beehive.bh_seq
CREATE SEQUENCE tb_beehive_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - tb_beehive.bh_seq
CREATE OR REPLACE TRIGGER tb_beehive_AI_TRG
BEFORE INSERT ON tb_beehive 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_beehive_SEQ.NEXTVAL
    INTO :NEW.bh_seq
    FROM DUAL;
END;

-- DROP TRIGGER tb_beehive_AI_TRG; 

-- DROP SEQUENCE tb_beehive_SEQ; 

-- 테이블 Comment 설정 SQL - tb_beehive
COMMENT ON TABLE tb_beehive IS '벌통 정보';

-- 컬럼 Comment 설정 SQL - tb_beehive.bh_seq
COMMENT ON COLUMN tb_beehive.bh_seq IS '벌통 순번';

-- 컬럼 Comment 설정 SQL - tb_beehive.owner_id
COMMENT ON COLUMN tb_beehive.owner_id IS '소유자 아이디';

-- 컬럼 Comment 설정 SQL - tb_beehive.bh_weight
COMMENT ON COLUMN tb_beehive.bh_weight IS '벌통 무게';

-- 컬럼 Comment 설정 SQL - tb_beehive.catcher_weight
COMMENT ON COLUMN tb_beehive.catcher_weight IS '포획기 무게';

-- 컬럼 Comment 설정 SQL - tb_beehive.bh_temp
COMMENT ON COLUMN tb_beehive.bh_temp IS '벌통 온도';

-- 컬럼 Comment 설정 SQL - tb_beehive.bh_humid
COMMENT ON COLUMN tb_beehive.bh_humid IS '벌통 습도';

-- 컬럼 Comment 설정 SQL - tb_beehive.bh_time
COMMENT ON COLUMN tb_beehive.bh_time IS '측정 시간';

-- Foreign Key 설정 SQL - tb_beehive(owner_id) -> tb_member(mb_id)
ALTER TABLE tb_beehive
    ADD CONSTRAINT FK_tb_beehive_owner_id_tb_memb FOREIGN KEY (owner_id)
        REFERENCES tb_member (mb_id);

-- Foreign Key 삭제 SQL - tb_beehive(owner_id)
-- ALTER TABLE tb_beehive
-- DROP CONSTRAINT FK_tb_beehive_owner_id_tb_memb;


-- tb_comment Table Create SQL
-- 테이블 생성 SQL - tb_comment
CREATE TABLE tb_comment
(
    cmt_seq        NUMBER(12, 0)     NOT NULL, 
    board_seq      NUMBER(12, 0)     NOT NULL, 
    cmt_content    VARCHAR2(4000)    NOT NULL, 
    cmt_dt         DATE              NOT NULL, 
    mb_id          VARCHAR2(20)      NOT NULL, 
    cmt_shares     NUMBER(12, 0)     NOT NULL, 
     PRIMARY KEY (cmt_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - tb_comment.cmt_seq
CREATE SEQUENCE tb_comment_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - tb_comment.cmt_seq
CREATE OR REPLACE TRIGGER tb_comment_AI_TRG
BEFORE INSERT ON tb_comment 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_comment_SEQ.NEXTVAL
    INTO :NEW.cmt_seq
    FROM DUAL;
END;

-- DROP TRIGGER tb_comment_AI_TRG; 

-- DROP SEQUENCE tb_comment_SEQ; 

-- 테이블 Comment 설정 SQL - tb_comment
COMMENT ON TABLE tb_comment IS '댓글';

-- 컬럼 Comment 설정 SQL - tb_comment.cmt_seq
COMMENT ON COLUMN tb_comment.cmt_seq IS '댓글 순번';

-- 컬럼 Comment 설정 SQL - tb_comment.board_seq
COMMENT ON COLUMN tb_comment.board_seq IS '원글 순번';

-- 컬럼 Comment 설정 SQL - tb_comment.cmt_content
COMMENT ON COLUMN tb_comment.cmt_content IS '댓글 내용';

-- 컬럼 Comment 설정 SQL - tb_comment.cmt_dt
COMMENT ON COLUMN tb_comment.cmt_dt IS '댓글 작성일자';

-- 컬럼 Comment 설정 SQL - tb_comment.mb_id
COMMENT ON COLUMN tb_comment.mb_id IS '댓글 작성자';

-- 컬럼 Comment 설정 SQL - tb_comment.cmt_shares
COMMENT ON COLUMN tb_comment.cmt_shares IS '댓글 공감수';

-- Foreign Key 설정 SQL - tb_comment(board_seq) -> tb_board(board_seq)
ALTER TABLE tb_comment
    ADD CONSTRAINT FK_tb_comment_board_seq_tb_boa FOREIGN KEY (board_seq)
        REFERENCES tb_board (board_seq) ;

-- Foreign Key 삭제 SQL - tb_comment(board_seq)
-- ALTER TABLE tb_comment
-- DROP CONSTRAINT FK_tb_comment_board_seq_tb_boa;

-- Foreign Key 설정 SQL - tb_comment(mb_id) -> tb_member(mb_id)
ALTER TABLE tb_comment
    ADD CONSTRAINT FK_tb_comment_mb_id_tb_member_ FOREIGN KEY (mb_id)
        REFERENCES tb_member (mb_id) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - tb_comment(mb_id)
-- ALTER TABLE tb_comment
-- DROP CONSTRAINT FK_tb_comment_mb_id_tb_member_;
-----------------------------------------------------------

---------------------------------------------------------------------------------------
(트리거를 이용한 게시판 자동 백업)

-- 테이블 생성 SQL - tb_board
CREATE TABLE tb_board
(
    board_seq        NUMBER(12, 0)     NOT NULL, 
    board_title      VARCHAR2(500)     NOT NULL, 
    board_content    VARCHAR2(4000)    NOT NULL, 
    board_file       VARCHAR2(500)     NOT NULL, 
    board_dt         DATE              NOT NULL, 
    mb_id            VARCHAR2(20)      NOT NULL, 
    board_views      NUMBER(12, 0)     NOT NULL, 
    board_likes      NUMBER(12, 0)     NOT NULL, 
     PRIMARY KEY (board_seq)
);

--주가의추이, 아파트시세, 전력사용량, 악보, 글번호
CREATE SEQUENCE tb_board_SEQ
START WITH 1
INCREMENT BY 1;

(현재값) 0 : tb_board_SEQ.CURRVAL
(다음값) 1 : tb_board_SEQ.NEXTVAL

-- Auto Increment를 위한 Trigger 추가 SQL - tb_board.board_seq
CREATE OR REPLACE TRIGGER tb_board_AI_TRG
BEFORE INSERT ON tb_board -- 트리거는 DML(INSERT/UPDATE/DELETE)에만 쓸 수 있음. * SELECT 문에는 사용 못함.
REFERENCING NEW AS N3 FOR EACH ROW 
BEGIN 
    SELECT tb_board_SEQ.NEXTVAL
    INTO :N3.board_seq
    FROM DUAL;
END;


-- 테이블 생성 SQL - tb_board_delete
CREATE TABLE tb_board_delete
(
    delete_seq       NUMBER(12, 0)     NOT NULL, 
    board_seq        NUMBER(12, 0)     NOT NULL, 
    board_title      VARCHAR2(500)     NOT NULL, 
    board_content    VARCHAR2(4000)    NOT NULL, 
    board_file       VARCHAR2(500)     NOT NULL, 
    board_dt         DATE              NOT NULL, 
    mb_id            VARCHAR2(20)      NOT NULL, 
    board_views      NUMBER(12, 0)     NOT NULL, 
    board_likes      NUMBER(12, 0)     NOT NULL, 
    delete_time      DATE              DEFAULT SYSDATE NULL, 
     PRIMARY KEY (delete_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - tb_board_delete.delete_seq
CREATE SEQUENCE tb_board_delete_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - tb_board_delete.delete_seq
CREATE OR REPLACE TRIGGER tb_board_delete_AI_TRG
BEFORE INSERT ON tb_board_delete 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_board_delete_SEQ.NEXTVAL
    INTO :NEW.delete_seq
    FROM DUAL;
END;

-- DROP TRIGGER tb_board_delete_AI_TRG; 

-- DROP SEQUENCE tb_board_delete_SEQ; 

-- 테이블 Comment 설정 SQL - tb_board_delete
COMMENT ON TABLE tb_board_delete IS '게시판 삭제 내용';

-- 컬럼 Comment 설정 SQL - tb_board_delete.delete_seq
COMMENT ON COLUMN tb_board_delete.delete_seq IS '삭제 순번';

-- 컬럼 Comment 설정 SQL - tb_board_delete.board_seq
COMMENT ON COLUMN tb_board_delete.board_seq IS '글 순번';

-- 컬럼 Comment 설정 SQL - tb_board_delete.board_title
COMMENT ON COLUMN tb_board_delete.board_title IS '글 제목';

-- 컬럼 Comment 설정 SQL - tb_board_delete.board_content
COMMENT ON COLUMN tb_board_delete.board_content IS '글 내용';

-- 컬럼 Comment 설정 SQL - tb_board_delete.board_file
COMMENT ON COLUMN tb_board_delete.board_file IS '글 첨부파일';

-- 컬럼 Comment 설정 SQL - tb_board_delete.board_dt
COMMENT ON COLUMN tb_board_delete.board_dt IS '글 작성일자';

-- 컬럼 Comment 설정 SQL - tb_board_delete.mb_id
COMMENT ON COLUMN tb_board_delete.mb_id IS '글 작성자';

-- 컬럼 Comment 설정 SQL - tb_board_delete.board_views
COMMENT ON COLUMN tb_board_delete.board_views IS '글 조회수';

-- 컬럼 Comment 설정 SQL - tb_board_delete.board_likes
COMMENT ON COLUMN tb_board_delete.board_likes IS '글 좋아요수';

-- 컬럼 Comment 설정 SQL - tb_board_delete.delete_time
COMMENT ON COLUMN tb_board_delete.delete_time IS '삭제 시간';



CREATE OR REPLACE TRIGGER TRG_BOARD_DELETE 
BEFORE DELETE ON TB_BOARD
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN
    INSERT INTO tb_board_delete (board_seq, board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes, delete_time) 
    VALUES (:OLD.board_seq, :OLD.board_title, :OLD.board_content, :OLD.board_file, :OLD.board_dt, :OLD.mb_id, :OLD.board_views, :OLD.board_likes, SYSDATE);
END;

SELECT 3 + 2 FROM DUAL;
SELECT SYSDATE FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') FROM DUAL;
SELECT TO_CHAR(SYSDATE + 1, 'YYYY-MM-DD HH24:MI:SS') FROM DUAL;
SELECT TO_CHAR(SYSDATE - 1, 'YYYY-MM-DD HH24:MI:SS') FROM DUAL;




INSERT INTO tb_board (board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes) VALUES ('board_title 1', 'board_content 1', 'board_file 1', sysdate, 'mb_id 0001', 1, 1);
INSERT INTO tb_board (board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes) VALUES ('board_title 2', 'board_content 2', 'board_file 2', sysdate, 'mb_id 0002', 2, 2);
INSERT INTO tb_board (board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes) VALUES ('야 이 개쉐이야 ㅆㅂㄴㅇ~~', 'board_content 3', 'board_file 3', sysdate, 'mb_id 0003', 3, 3);
INSERT INTO tb_board (board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes) VALUES ('board_title 4', 'board_content 4', 'board_file 4', sysdate, 'mb_id 0004', 4, 4);
INSERT INTO tb_board (board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes) VALUES ('board_title 5', 'board_content 5', 'board_file 5', sysdate, 'mb_id 0005', 5, 5);

INSERT INTO tb_board (board_seq, board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes) 
VALUES (1, 'board_title 1', 'board_content 1', 'board_file 1', sysdate, 'mb_id 1', 1, 1);

NEW.board_seq = 1
NEW.board_title = 'board_title 1'

INSERT INTO tb_board (board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes) VALUES ('board_title 1', 'board_content 1', 'board_file 1', sysdate, 'mb_id 1', 1, 1);
INSERT INTO tb_board (board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes) VALUES ('board_title 2', 'board_content 2', 'board_file 2', sysdate, 'mb_id 2', 2, 2);
INSERT INTO tb_board (board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes) VALUES ('board_title 3', 'board_content 3', 'board_file 3', sysdate, 'mb_id 3', 3, 3);
INSERT INTO tb_board (board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes) VALUES ('board_title 4', 'board_content 4', 'board_file 4', sysdate, 'mb_id 4', 4, 4);
INSERT INTO tb_board (board_title, board_content, board_file, board_dt, mb_id, board_views, board_likes) VALUES ('board_title 5', 'board_content 5', 'board_file 5', sysdate, 'mb_id 5', 5, 5);


DELETE FROM TB_BOARD WHERE BOARD_SEQ=5;

COMMENT ON TABLE tb_board IS '게시판';

-- 컬럼 Comment 설정 SQL - tb_board.board_seq
COMMENT ON COLUMN tb_board.board_seq IS '글 순번';

-- 컬럼 Comment 설정 SQL - tb_board.board_title
COMMENT ON COLUMN tb_board.board_title IS '글 제목';

-- 컬럼 Comment 설정 SQL - tb_board.board_content
COMMENT ON COLUMN tb_board.board_content IS '글 내용';

-- 컬럼 Comment 설정 SQL - tb_board.board_file
COMMENT ON COLUMN tb_board.board_file IS '글 첨부파일';

-- 컬럼 Comment 설정 SQL - tb_board.board_dt
COMMENT ON COLUMN tb_board.board_dt IS '글 작성일자';

-- 컬럼 Comment 설정 SQL - tb_board.mb_id
COMMENT ON COLUMN tb_board.mb_id IS '글 작성자';

-- 컬럼 Comment 설정 SQL - tb_board.board_views
COMMENT ON COLUMN tb_board.board_views IS '글 조회수';

-- 컬럼 Comment 설정 SQL - tb_board.board_likes
COMMENT ON COLUMN tb_board.board_likes IS '글 좋아요수';

-- Foreign Key 설정 SQL - tb_board(mb_id) -> tb_member(mb_id)
ALTER TABLE tb_board
    ADD CONSTRAINT FK_tb_board_mb_id_tb_member_mb FOREIGN KEY (mb_id)
        REFERENCES tb_member (mb_id) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - tb_board(mb_id)
-- ALTER TABLE tb_board
-- DROP CONSTRAINT FK_tb_board_mb_id_tb_member_mb;

=====================================================
필수 암기!

-- 테이블 생성 SQL - tb_member
CREATE TABLE tb_member
(
    mb_id          VARCHAR2(20)     NOT NULL, 
    mb_pw          VARCHAR2(20)     NOT NULL, 
    mb_name        VARCHAR2(20)     NOT NULL, 
    mb_age         NUMBER(12, 0)    NOT NULL, 
    mb_job         VARCHAR2(30)     NOT NULL, 
    mb_region      VARCHAR2(30)     NOT NULL, 
    mb_tel         VARCHAR2(20)     NOT NULL, 
    mb_joindate    DATE             NOT NULL, 
    mb_type        CHAR(1)          DEFAULT 'M' NOT NULL, 
     PRIMARY KEY (mb_id)
);

-- 테이블 Comment 설정 SQL - tb_member
COMMENT ON TABLE tb_member IS '회원정보';

-- 컬럼 Comment 설정 SQL - tb_member.mb_id
COMMENT ON COLUMN tb_member.mb_id IS '회원 아이디';

-- 컬럼 Comment 설정 SQL - tb_member.mb_pw
COMMENT ON COLUMN tb_member.mb_pw IS '회원 패스워드';

-- 컬럼 Comment 설정 SQL - tb_member.mb_name
COMMENT ON COLUMN tb_member.mb_name IS '회원 이름';

-- 컬럼 Comment 설정 SQL - tb_member.mb_age
COMMENT ON COLUMN tb_member.mb_age IS '회원 나이453145123451';

-- 컬럼 Comment 설정 SQL - tb_member.mb_job
COMMENT ON COLUMN tb_member.mb_job IS '회원 직업';

-- 컬럼 Comment 설정 SQL - tb_member.mb_region
COMMENT ON COLUMN tb_member.mb_region IS '회원 지역';

-- 컬럼 Comment 설정 SQL - tb_member.mb_tel
COMMENT ON COLUMN tb_member.mb_tel IS '회원 전화번호';

-- 컬럼 Comment 설정 SQL - tb_member.mb_joindate
COMMENT ON COLUMN tb_member.mb_joindate IS '회원 가입일자';

-- 컬럼 Comment 설정 SQL - tb_member.mb_type
COMMENT ON COLUMN tb_member.mb_type IS '회원 유형';



-- 테이블 생성 SQL - tb_board
CREATE TABLE tb_board
(
    board_seq        NUMBER(12, 0)     NOT NULL, 
    board_title      VARCHAR2(500)     NOT NULL, 
    board_content    VARCHAR2(4000)    NOT NULL, 
    board_file       VARCHAR2(500)     NOT NULL, 
    board_dt         DATE              NOT NULL, 
    mb_id            VARCHAR2(20)      NOT NULL, 
    board_views      NUMBER(12, 0)     NOT NULL, 
    board_likes      NUMBER(12, 0)     NOT NULL, 
     PRIMARY KEY (board_seq)
);

-- Auto Increment를 위한 Sequence 추가 SQL - tb_board.board_seq
CREATE SEQUENCE tb_board_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - tb_board.board_seq
CREATE OR REPLACE TRIGGER tb_board_AI_TRG
BEFORE INSERT ON tb_board 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_board_SEQ.NEXTVAL
    INTO :NEW.board_seq
    FROM DUAL;
END;

-- DROP TRIGGER tb_board_AI_TRG; 

-- DROP SEQUENCE tb_board_SEQ; 

-- 테이블 Comment 설정 SQL - tb_board
COMMENT ON TABLE tb_board IS '게시판';

-- 컬럼 Comment 설정 SQL - tb_board.board_seq
COMMENT ON COLUMN tb_board.board_seq IS '글 순번';

-- 컬럼 Comment 설정 SQL - tb_board.board_title
COMMENT ON COLUMN tb_board.board_title IS '글 제목';

-- 컬럼 Comment 설정 SQL - tb_board.board_content
COMMENT ON COLUMN tb_board.board_content IS '글 내용';

-- 컬럼 Comment 설정 SQL - tb_board.board_file
COMMENT ON COLUMN tb_board.board_file IS '글 첨부파일';

-- 컬럼 Comment 설정 SQL - tb_board.board_dt
COMMENT ON COLUMN tb_board.board_dt IS '글 작성일자';

-- 컬럼 Comment 설정 SQL - tb_board.mb_id
COMMENT ON COLUMN tb_board.mb_id IS '글 작성자';

-- 컬럼 Comment 설정 SQL - tb_board.board_views
COMMENT ON COLUMN tb_board.board_views IS '글 조회수';

-- 컬럼 Comment 설정 SQL - tb_board.board_likes
COMMENT ON COLUMN tb_board.board_likes IS '글 좋아요수';

-- Foreign Key 설정 SQL - tb_board(mb_id) -> tb_member(mb_id)
ALTER TABLE tb_board
    ADD CONSTRAINT FK_tb_board_mb_id_tb_member_mb FOREIGN KEY (mb_id)
        REFERENCES tb_member (mb_id) ON DELETE RESTRICT ;

-- Foreign Key 삭제 SQL - tb_board(mb_id)
-- ALTER TABLE tb_board
-- DROP CONSTRAINT FK_tb_board_mb_id_tb_member_mb;




(1)
ERD 
ER-Diagram 
Entity Relationship Diagram

(2)
VO(Value Object)=DTO(Data Transfer Object)=Java Model=Java Bean=POJO(Plain Old Java Object)

(3)
DDL : Data Definition Language     : 정의 명령어 create/alter/drop table
DML : Data Manipulation Language   : 조작 명령어 insert/update/delete 
DCL : Data Control Language        : 제어 명령어 grant/revoke/commit/rollback
DQL : Data Query Language          : 질의 명령어 select 문

(4) 데이터베이스 설계 순서 
요구사항 분석 > 개념설계 > 논리설계 > 물리설계 > 데이터베이스 구현
                 (개.눈.물)






(문제) 다음 중 데이터베이스 설계 순서로 올바른 것은?
. 개념설계 : 저장할 대상을 지정함.
. 논리설계 : 속성을 지정함
. 물리설계 : 컬럼명/데이터 타입/길이/제약조건 지정 