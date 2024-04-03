// ユーザー情報(DBから取得後のモデルモック)
import 'dart:ui';

class Users {
  // プロパティ（フィールド）
  String name = "marie"; //名前   String
  int age = 19; //年齢  int500
  int gender = 0; //性別 list(男性,女性,その他)
  int pics = 0; //写真　MAX　5枚()
  //自己紹介
  String introduce =
      "はじめまして！人形劇師のまりえと申します,幼い頃から人形劇に魅了され、大学で人形劇を専攻しました。卒業後は劇団員として活動し、数多くの人形劇公演に携わってきました。現在はフリーランスの人形劇師として、幼稚園や学校、イベントなどで人形劇の公演やワークショップを行っています。"; //自己紹介　String　MAX　500

  //好きなこと　String　MAX　500
  List<String> likes = <String>[
    "子供向けの人形劇を作りたい",
    "イベントで人形劇を演じたい",
    "人形劇のワークショップを開催したい"
  ];

  //できること　String　MAX　500
  List<String> service = <String>["オリジナル脚本の制作", "人形制作", "声当て", "演出"];

  // コンストラクタ
  Users(this.name, this.age, this.gender, this.pics, this.introduce, this.likes,
      this.service);
// メソッド
// void sayHello() {
// print('Hello, my name is $name. I am $age years old.');
// }
}
