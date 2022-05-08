<?php
require($_SERVER['DOCUMENT_ROOT'] . '/config.php');

use modules\auth\Admin as Auth;
use Craft\Cruds\Admin as Cruds;

$auth = new Auth($db);
// $cruds = new Cruds($db);

// if (!empty($_POST)) {
//   $login = $db->prepare('SELECT * FROM users WHERE email=? AND password=?');
//   $login->execute(array(
//     $_POST['email'],
//     sha1($_POST['password'])
//   ));
//   $user = $login->fetch();

//   if ($user) {
//     $_SESSION = array();
//     $_SESSION['user_id'] = $user['id'];
//     $_SESSION['time'] = time();
//     header('Location: http://' . $_SERVER['HTTP_HOST'] . '/admin/index.php');
//     exit();
//   } else {
//     $error = 'fail';
//   }
// }

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  if ($_POST['email'] !== '' && $_POST['password'] !== '') {
    $administrator = $auth->login($_POST['email'], $_POST['password']);
    if ($administrator) {
      $_SESSION['administrator']['id'] = $administrator['id'];
      $_SESSION['administrator']['time'] = time();
    }
    if (isset($_SESSION['administrator']['id'])) {
      if ($_POST['save'] === 'on') {
        setcookie('email', $_POST['email'], time() + 60 * 60 * 24 * 14);
      }

      header('Location: index.php');
      exit();
    } else {
      $error['login'] = 'failed';
    }
  } else {
    $error['login'] = 'blank';
  }
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>管理者ログイン</title>
</head>

<body>
  <div>
    <h1>管理者ログイン</h1>
    <form action="/admin/login.php" method="POST">
      <input type="email" name="email" required>
      <input type="password" required name="password">
      <input type="submit" value="ログイン">
    </form>
    <a href="/index.php">イベント一覧</a>
  </div>
</body>

</html>