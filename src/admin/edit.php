<?php
require_once $_SERVER['DOCUMENT_ROOT'] . '/config.php';

include dirname(__FILE__) . '/header.php';
?>

<body>
    <header>
        <div class="header_inner">
            <div class="page_name">管理画面</div>
            <a href="./editableAndUneditableInfo.php">基本情報・掲載情報</a>
            <div class="title_name">編集・掲載</div>
        </div>
    </header>
    <main>
        <div id="displayed_content" class="displayed_content">○○○○株式会社の基本情報と掲載情報</div>
        <div class="agency_info_wrapper">
            <ul class="agency_info_inner">
                <li id="title">タイトル：<input type="text" placeholder="タイトルを入力してください" name="" id=""></li>
                <li id="sentenses">文章：<input type="text" placeholder="文章を入力してください" name="" id=""></li>
                <li id="eyecatch">画像：<input type="text" placeholder="画像のurlを入力してください" name="" id=""></li>
            </ul>
        </div>
        <button class="post_btn" onclick="post()">掲載</button>
    </main>

    <?php include dirname(__FILE__) . '/footer.php' ?>