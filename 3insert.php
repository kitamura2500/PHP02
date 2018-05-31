<?php

//ちゃんと送られてきていない場合は処理をしないという命令文
if (
    !isset($_POST["name"]) || $_POST["name"]=="" ||
    !isset($_POST["url"]) || $_POST["url"]=="" ||
    !isset($_POST["comment"]) || $_POST["comment"]=="" 
){
    exit('ParamError');
}

//1. POSTデータ取得
//$name = filter_input( INPUT_GET, ","name" ); //こういうのもあるよ
//$email = filter_input( INPUT_POST, "email" ); //こういうのもあるよ
$name = $_POST["name"];
$url = $_POST["url"];
$comment = $_POST["comment"];



//2. DB接続します
try {
  $pdo = new PDO('mysql:dbname=gs_db;charset=utf8;host=localhost','root', ''); // 最後の''の中にrootを書く場合もあり
} catch (PDOException $e) {
  exit('DbConnectError:'.$e->getMessage());//どこでエラーがあったのかを書く　例えば'データベースエラー'など
}


//３．データ登録SQL作成
$sql ="INSERT INTO gs_bm_table(id, book_name, book_url, book_comment, indate)
VALUES(NULL, :a1, :a2, :a3, sysdate())";
//↓の内容を↑の変数にしてしまうと楽
//$stmt = $pdo->prepare("******* ***** ********( ************* )VALUES( ************");
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':a1', $name, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a2', $url, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a3', $comment, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$status = $stmt->execute();

//４．データ登録処理後
if($status==false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit("登録できませんでした:".$error[2]);//エラーメッセージを書く　2.と文面を変えることでどこでうまく行かなかったのかを区別できる
}else{
  //５．index.phpへリダイレクト insert.phpからindex.phpにデータを送る
    header("Location: index.php");
}
?>
