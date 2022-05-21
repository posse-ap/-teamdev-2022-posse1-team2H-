<?php

require_once $_SERVER['DOCUMENT_ROOT'] . '/config.php';
use cruds\User;

$id = $_GET['id'];

if (empty($id)) {
    header('Location: index.php');
    exit;
}

$cruds = new User($db);

$agency = $cruds->getAgency($id);
$agency = json_decode($agency);

include dirname(__FILE__) . '/header.php';
?>
<main>

<div class="content_detail">
            <div class="content_detail_inner">
                <!-- キャッチコピーと写真 -->
                <div class="content_detail_catchCopy_imgBig">
                    <div class="content_detail_catchCopy">
                        <h1 class="content_detail_catchCopy_title">とにかく文系に強い！！</h1>
                    </div>
                    <div class="content_detail_agency_imgBig">
                        <a href="https://posse-ap.com/" class="content_detail_agency_imgBig_">
                            <img src="https://reashu.com/wp-content/uploads/2022/01/1b6d9abbd870d9cc7205edfd07ed96ba.png" alt="" class="content_detail_agency_imgBig">
                        </a>
                    </div>

                </div>
                <!-- ここからはそれ以外のもの -->
                <div class="content_detail_subcontent">
                    <!-- 左側のどんな企業かどんな学生におすすめかと後でみるに追加と請求 -->
                    <div class="content_detail_subcontent_left">
                        <!-- <div class="content_detail_left_subcontent"> -->
                        <div class="content_detail_subcontent_left_agentStudent">
                            <div class="content_detail_subcontent_left_agentStudent_agent">
                                <h1 class="content_detail_subcontent_left_agentRequest_agent_title">どんなエージェント企業か</h1>
                                <p class="content_detail_subcontent_left_agentRequest_agent_text">
                                    アリスは川辺でおねえさんのよこにすわって、なんにもすることがないのでとても退屈（たいくつ）しはじめていました。 一、二回はおねえさんの読んでいる本をのぞいてみたけれど、そこには絵も会話もないのです。 「絵や会話のない本なんて、なんの役にもたたないじゃないの」とアリスは思いました。 そこでアリスは、頭のなかで、ひなぎくのくさりをつくったら楽しいだろうけれど、 起きあがってひなぎくをつむのもめんどくさいし、どうしようかと考えていました （といっても、昼間で暑いし、とってもねむくて頭もまわらなかったので、
                                    これもたいへんだったのですが）。 そこへいきなり、ピンクの目をした白うさぎが近くを走ってきたのです。 それだけなら、そんなにめずらしいことでもありませんでした。 さらにアリスとしては、そのうさぎが 「どうしよう！ どうしよう！ ちこくしちゃうぞ！」 とつぶやくのを聞いたときも、 それがそんなにへんてこだとは思いませんでした （あとから考えてみたら、これも不思議に思うべきだったのですけれど、 でもこのときには、それがごく自然なことに思えたのです）。
                                </p>
                            </div>
                            <div class="content_detail_subcontent_left_agentStudent_Student">
                                <h1 class="content_detail_subcontent_left_agentStudent_Student_title">どんな学生にオススメか</h1>
                                <p class="content_detail_subcontent_left_agentStudent_Student_text">
                                    アリスは川辺でおねえさんのよこにすわって、なんにもすることがないのでとても退屈（たいくつ）しはじめていました。 一、二回はおねえさんの読んでいる本をのぞいてみたけれど、そこには絵も会話もないのです。 「絵や会話のない本なんて、なんの役にもたたないじゃないの」とアリスは思いました。 そこでアリスは、頭のなかで、ひなぎくのくさりをつくったら楽しいだろうけれど、 起きあがってひなぎくをつむのもめんどくさいし、どうしようかと考えていました （といっても、昼間で暑いし、とってもねむくて頭もまわらなかったので、
                                    これもたいへんだったのですが）。 そこへいきなり、ピンクの目をした白うさぎが近くを走ってきたのです。 それだけなら、そんなにめずらしいことでもありませんでした。 さらにアリスとしては、そのうさぎが 「どうしよう！どうしよう！ ちこくしちゃうぞ！」 とつぶやくのを聞いたときも、 それがそんなにへんてこだとは思いませんでした （あとから考えてみたら、これも不思議に思うべきだったのですけれど、 でもこのときには、それがごく自然なことに思えたのです）。</p>
                            </div>
                        </div>

                        <div class="content_detail_recommendedAgent">
                            <h2 class="content_detail_recommendedAgent_title">あなたにオススメのエージェンシー
                            </h2>
                            <div class="content_detail_recommendedAgent_bigBox">
                                <article class="content_detail_recommendedAgent_box1">
                                    <div class="content_detail_recommendedAgent_box1_img"></div>
                                    <a href="https://posse-ap.com/">
                                        <img src="https://reashu.com/wp-content/uploads/2022/01/1b6d9abbd870d9cc7205edfd07ed96ba.png" alt="" class="content_detail_recommendedAgent_box1_img"></a>

                                </article>
                                <article class="content_detail_recommendedAgent_box2">
                                    <div class="content_detail_recommendedAgent_box2_img"></div>
                                    <a href="https://posse-ap.com/">
                                        <img src="https://reashu.com/wp-content/uploads/2022/01/1b6d9abbd870d9cc7205edfd07ed96ba.png" alt="" class="content_detail_recommendedAgent_box2_img"></a>
                                </article>
                                <article class="content_detail_recommendedAgent_box3">
                                    <div class="content_detail_recommendedAgent_box3_img"></div>
                                    <a href="https://posse-ap.com/">
                                        <img src="https://reashu.com/wp-content/uploads/2022/01/1b6d9abbd870d9cc7205edfd07ed96ba.png" alt="" class="content_detail_recommendedAgent_box3_img"></a>
                                </article>

                            </div>
                        </div>
                    </div>
                    <!-- </div> -->
                    <!-- ここからお問い合わとかの右側にある情報 -->
                    <div class="content_detail_subcontent_right">
                        <div class="content_detail_subcontent_right_serch">
                            <div class="content_detail_subcontent_right_serch_inquiryBox">
                                <h3 class="content_detail_subcontent_right_serch_inquiryText">お問合せ</h3>
                            </div>
                            <div class="content_detail_subcontent_right_serch_seelaterField">
                                <div class="content_detail_subcontent_right_serch_seelaterField_add">

                                    <div class="content_detail_subcontent_right_serch_seelaterField_add_box">
                                        <h3 class="content_detail_subcontent_right_serch_seelaterField_add_box_text">後でみるリストの追加</h3>
                                    </div>
                                </div>
                                <div class="content_detail_subcontent_right_serch_seelaterField_seelaterBox">
                                    <h3 class="content_detail_subcontent_right_serch_seelaterField_seelaterBox_text">後で見る
                                    </h3>

                                </div>
                            </div>
                            <div class="content_detail_subcontent_right_serch_information">
                                <div class="content_detail_subcontent_right_serch_information_box" id="content_detail_subcontent_right_serch_information_box">
                                    <h3 class="content_detail_subcontent_right_serch_information_title">会社情報
                                    </h3>
                                </div>

                                <div class="content_detail_subcontent_right_serch_information_details" id="content_detail_subcontent_right_serch_information_details">
                                    <p>株式会社武田鉄</p>
                                   <a href="https://google.com">https://google.com</a>
                                    <p>2020年に創業</p>
                                    <p>15000のメンバー</p>
                                    <p>東京都港区表参道Harbors</p>
                                </div>
                                <!-- <div class="content_detail_subcontent_right_iserch_nformation_map">
                                    まっぷ
                                </div> -->
                            </div>

                        </div>
                    </div>
                </div>
                <!-- 一番下に固定しておく後で見るに追加とお問合せ -->

                <div class="content_detail_underRequest">
                    <div class="content_detail_action_bar">

                        <div class="content_detail_underRequest_seelaterBox">

                            <h4 class="content_detail_underRequest_seelaterText">後で見るリストに追加
                            </h4>
                        </div>
                        <div class="content_detail_underRequest_inquiryBox">

                            <h4 class="content_detail_underRequest_inquiryText">お問合せ
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</main>
<?php include dirname(__FILE__) . '/footer.php' ?>
