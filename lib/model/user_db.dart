// ユーザー情報(DBから取得後のモデルモック)
class Users {
  // プロパティ（フィールド）
  late String name; //名前   String
  late int age; //年齢  int500
  late int gender; //性別 list(男性,女性,その他)
  late int pics; //写真　MAX　5枚()
  late int introduce; //自己紹介　String　MAX　500
  late int likes; //好きなこと　String　MAX　500
  late int service; //できること　String　MAX　500
  // コンストラクタ
  Users(this.name, this.age, this.gender, this.pics, this.introduce, this.likes,
      this.service);
// メソッド
// void sayHello() {
// print('Hello, my name is $name. I am $age years old.');
// }
}
