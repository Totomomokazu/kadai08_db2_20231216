<?php
// 0.関数の用意
require_once("funcs.php");


// 1.DB接続
try {
    //ID:'root', Password: xamppは 空白 ''
    $pdo = new PDO('mysql:dbname=gs_db;charset=utf8;host=localhost','root','');
  } catch (PDOException $e) {
    exit('DBConnectError:'.$e->getMessage());
  }

// 2.データ取得のSQLを作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table");
$status = $stmt->execute();

// 3.データ表示
$view="";
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    $view .= "<p>";
    $view .= h($result["name"]) . h($result["url"]) . h($result["comments"]). h($result["date"]);
    $view .= "</p>";
  }
}
?>




<!-- HTMLコードの記述 -->
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>アンケート結果の表示</title>
</head>
<body>
    <!-- データ表示エリア -->
    <div>
        <div class="container jumbotron"><?= $view ?></div>
    </div>

</body>
</html>