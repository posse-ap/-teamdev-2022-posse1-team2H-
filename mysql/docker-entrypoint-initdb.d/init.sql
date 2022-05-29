DROP SCHEMA IF EXISTS shukatsu;

CREATE SCHEMA shukatsu;

USE shukatsu;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INT(10) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  tel VARChAR(255) NOT NULL,
  university VARCHAR(255) NOT NULL,
  undergraduate VARCHAR(255) NOT NULL,
  department VARCHAR(255) NOT NULL,
  school_year INT(10) NOT NULL,
  graduation_year INT(10) NOT NULL,
  gender BOOLEAN NOT NULL,
  address VARCHAR(255) NOT NULL,
  address_num VARCHAR(255) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- usersテーブルにデータを15件入れる。
INSERT INTO users SET
name='中村俊輔',
age='23',
email = 'nakamura@example.com',
tel = '08000001111',
university = '早稲田大学',
undergraduate='教育学部',
department='教育学科',
school_year = '3',
graduation_year = '2024',
gender='1',
address='東京都杉並区',
address_num="199-9999";

INSERT INTO users SET
name='香川真司',
age='22',
email = 'kagawa@example.com',
tel = '08000001111',
university = '慶応義塾大学',
undergraduate='経済学部',
department="経済学科",
school_year = '4',
graduation_year = '2025',
gender='1',
address='東京都大田区',
address_num="199-9999";

INSERT INTO users SET
name='ラモス瑠偉',
age='23',
email = 'ramos@example.com',
tel = '08000001111',
university = '横浜国立大学',
undergraduate='理工学部',
department="数物・電子情報学科",
school_year = '3',
graduation_year = '2024',
gender='1',
address='東京都文京区',
address_num="199-9999";

INSERT INTO users SET
name='マラドーナ',
age='22',
email = 'maradona@example.com',
tel = '08000001111',
university = '早稲田大学',
undergraduate='法学部',
department="法学科",
school_year = '4',
graduation_year = '2025',
gender='1',
address='東京都練馬区',
address_num="199-9999";

INSERT INTO users SET
name='メッシ',
age='22',
email = 'messi@example.com',
tel = '08000001111',
university = '立教大学',
undergraduate='理学部',
department="数学科",
school_year = '4',
graduation_year = '2025',
gender='1',
address='東京都港区',
address_num="199-9999";

INSERT INTO users SET
name='大谷翔平',
age='22',
email = 'ohtanisan@example.com',
tel = '08000001111',
university = '東京大学',
undergraduate='医学部',
department="医学科",
school_year = '3',
graduation_year = '2025',
gender='1',
address='東京都足立区',
address_num="199-9999";

INSERT INTO users SET
name='羽生 結弦',
age='23',
email = 'hanyu@example.com',
tel = '08000001111',
university = '東京大学',
undergraduate='文学部',
department="哲学科",
school_year = '3',
graduation_year = '2024',
gender='1',
address='東京都杉並区',
address_num="199-9999";

INSERT INTO users SET
name='新垣結衣',
age='23',
email = 'yui@example.com',
tel = '08000001111',
university = '京都大学',
undergraduate='薬学部',
department='薬学科',
school_year = '3',
graduation_year = '2024',
gender='2',
address='東京都世田谷区',
address_num="199-9999";

INSERT INTO users SET
name='長澤まさみ',
age='22',
email = 'nagasawa@example.com',
tel = '08000001111',
university = '一橋大学',
undergraduate='経済学部',
department="経済学科",
school_year = '4',
graduation_year = '2025',
gender='2',
address='東京都目黒区',
address_num="199-9999";

INSERT INTO users SET
name='広瀬すず',
age='23',
email = 'suzu@example.com',
tel = '08000001111',
university = '上智大学',
undergraduate='国際教養学部',
department="国際教養学科",
school_year = '3',
graduation_year = '2024',
gender='2',
address='東京都北区',
address_num="199-9999";

INSERT INTO users SET
name='有村架純',
age='23',
email = 'arimura@example.com',
tel = '08000001111',
university = '明治大学',
undergraduate='農学部',
department="農学科",
school_year = '4',
graduation_year = '2024',
gender='2',
address='東京都江戸川区',
address_num="199-9999";

INSERT INTO users SET
name='浜辺美波',
age='22',
email = 'minami@example.com',
tel = '08000001111',
university = '法政大学',
undergraduate='生命科学部',
department="数学科",
school_year = '4',
graduation_year = '2025',
gender='2',
address='東京都港区',
address_num="199-9999";

INSERT INTO users SET
name='綾瀬はるか',
age='22',
email = 'ayase@example.com',
tel = '08000001111',
university = '慶応大学',
undergraduate='総合政策学部',
department="総合政策学科",
school_year = '3',
graduation_year = '2025',
gender='2',
address='東京都杉並区',
address_num="199-9999";

INSERT INTO users SET
name='吉岡里帆',
age='23',
email = 'yoshioka@example.com',
tel = '08000001111',
university = '立教大学',
undergraduate='現代心理学部',
department="映像身体学科",
school_year = '3',
graduation_year = '2024',
gender='2',
address='東京都豊島区',
address_num="199-9999";

INSERT INTO users SET
name='橋本佳奈',
age='22',
email = 'hashimoto@example.com',
tel = '08000001111',
university = '横浜国立大学',
undergraduate='理工学部',
department="科学・生命系学科",
school_year = '3',
graduation_year = '2025',
gender='2',
address='東京大田区',
address_num="199-9999";

DROP TABLE IF EXISTS agencies;
CREATE TABLE agencies (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  email_for_notification VARCHAR(255) NOT NULL,
  tel VARCHAR(255) NOT NULL,
  url TEXT NOT NULL,
  representative VARCHAR(255) NOT NULL,
  contactor VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  address_num VARCHAR(255) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO agencies SET
name = 'レバテックルーキー',
email = 'marumaru@example.com',
email_for_notification = 'marumarun@example.com',
tel = '08000001111',
url = 'https://google.com',
representative = '〇〇丸',
contactor = '武田鉄矢',
address = '東京都港区',
address_num = '199-9999';

-- ('株式会社菅田将暉', 'suda@example.com', password_hash('sudamasaki'), 'sudan@example.com', '08000001111', 'https://google.com', 'すだ', '菅生大将', '199-9999'),
INSERT INTO agencies SET
name = '株式会社Acaric',
email = 'suda@example.com',
email_for_notification = 'sudan@example.com',
tel = '08000001111',
url = 'https://google.com',
representative = 'すだ',
contactor = '菅生大将',
address = '東京都港区',
address_num = '199-9999';

-- ('株式会社竹内涼真', 'takeuti@example.com', password_hash('takeuti'), 'takeutin@example.com', '08000001111', 'https://google.com', 'たけうち', 'たけうち', '199-9999'),
INSERT INTO agencies SET
name = '株式会社career ticket',
email = 'takeuti@example.com',
email_for_notification = 'takeutin@example.com',
tel = '08000001111',
url = 'https://google.com',
representative = 'たけうち',
contactor = 'たけうち',
address = '東京都港区',
address_num = '199-9999';

-- ('', 'mamiya@example.com', password_hash('mamiya'), 'mamiyan@example.com', '08000001111', 'https://google.com', 'まみや', 'まみや', '199-9999'),
INSERT INTO agencies SET
name = '株式会社AXIS CONSULTING',
email = 'mamiya@example.com',
email_for_notification = 'mamiyan@example.com',
tel = '08000001111',
url = 'https://google.com',
representative = 'まみや',
contactor = 'まみや',
address = '東京都港区',
address_num = '199-9999';

-- ('株式会社仲野太賀', 'nakano@example.com', password_hash('nakano'), 'nakano@example.com', '08000001111', 'https://google.com', 'なかの', 'なかの', '199-9999'),
INSERT INTO agencies SET
name = 'リクナビ就活エージェント',
email = 'nakano@example.com',
email_for_notification = 'nakano@example.com',
tel = '08000001111',
url = 'https://google.com',
representative = 'なかの',
contactor = 'なかの',
address = '東京都港区',
address_num = '199-9999';

-- ('株式会社神木隆之介', 'kamiki@example.com', sha1('kamiki'), 'kamikin@example.com', '08000001111', 'https://google.com', 'かみき', 'かみき', '199-9999'),
INSERT INTO agencies SET
name = '株式会社転職+',
email = 'kamiki@example.com',
email_for_notification = 'kamikin@example.com',
tel = '08000001111',
url = 'https://google.com',
representative = 'かみき',
contactor = 'かみき',
address = '東京都港区',
address_num = '199-9999';

-- ('株式会社松坂桃李', 'matuzaka@example.com', sha1('matuzaka'), 'matuzaka@example.com', '08000001111', 'https://google.com', 'まつざか', 'まつざか', '199-9999'),
INSERT INTO agencies SET
name = 'マイナビ新卒紹介',
email = 'matuzaka@example.com',
email_for_notification = 'matuzakan@example.com',
tel = '08000001111',
url = 'https://google.com',
representative = 'まつざか',
contactor = 'まつざか',
address = '東京都港区',
address_num = '199-9999';

-- ('株式会社山田裕貴', 'yamada@example.com', sha1('yamada'), 'yamada@example.com', '08000001111', 'https://google.com', 'やまだ', 'やまだ', '199-9999'),
INSERT INTO agencies SET
name = '株式会社就活AGENT neo',
email = 'yamada@example.com',
email_for_notification = 'yamadan@example.com',
tel = '08000001111',
url = 'https://google.com',
representative = 'やまだ',
contactor = 'やまだ',
address = '東京都港区',
address_num = '199-9999';

-- ('株式会社吉沢亮', 'yosizawa@example.com', sha1('yosizawa'), 'yosizawan@example.com', '08000001111', 'https://google.com', 'よしざわ', 'よしざわ', '199-9999'),
INSERT INTO agencies SET
name = '株式会社JOBRASS新卒紹介',
email = 'yosizawa@example.com',
email_for_notification = 'yosizawan@example.com',
tel = '08000001111',
url = 'https://google.com',
representative = 'よしざわ',
contactor = 'よしざわ',
address = '東京都港区',
address_num = '199-9999';

-- ('株式会社DJ松永', 'matsunaga@example.com', sha1('matsunaga'), 'matsunagan@example.com', '08000001111', 'https://google.com', 'くにひこ', 'くにひこ', '199-9999'),
INSERT INTO agencies SET
name = '株式会社Job String',
email = 'matsunaga@example.com',
email_for_notification = 'matsunagan@example.com',
tel = '08000001111',
url = 'https://google.com',
representative = 'くにひこ',
contactor = 'くにひこ',
address = '東京都港区',
address_num = '199-9999';

-- ('株式会社常田大希', 'tuneta@example.com', sha1('tuneta'), 'tunetan@example.com', '08000001111', 'https://google.com', 'つねた', 'つねた', '199-9999');
INSERT INTO agencies SET
name = '株式会社理系就活チャージ',
email = 'tuneta@example.com',
email_for_notification = 'tunetan@example.com',
tel = '08000001111',
url = 'https://google.com',
representative = 'つねた',
contactor = 'つねた',
address = '東京都港区',
address_num = '199-9999';

-- 11個分
DROP TABLE IF EXISTS agency_articles;
CREATE TABLE agency_articles (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  agency_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  sentenses text NOT NULL,
  eyecatch_url VARCHAR(255) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY fk_agency_id(agency_id)
  REFERENCES agencies(id)
);

INSERT INTO agency_articles SET
agency_id = '1',
title = '営業やりたい就活性必見！！！！！！！！！！！！',
sentenses = '
時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る
',
eyecatch_url = 'https://image.shutterstock.com/shutterstock/photos/1673869108/display_1500/stock-vector-vector-isolated-one-line-drawing-men-friends-1673869108.jpg';

INSERT INTO agency_articles SET
agency_id = '3',
title = '下町ロケット',
sentenses = 'プロジェクトは見解権利を編集認め記事たませ際、許諾得れ記事で承諾法幸いの違反記事でするれてもさです、theのライセンスは、投稿満たすSAを著作ありものとして引用明瞭なませがいでで。

また、whereの-号も、プロジェクトの陳述引き保護明確ないペディアを運用し、そのライセンスがしから条件を著作さのと執筆されます。しかしを、補足要件が引用するれるているGFDLに既にささのは、編集ないます、場合としては包括法の著作による題号上の問題もできことで、本承諾国は、適法の防止を扱うので脚注を検証なっますばいませます。

許諾して、誰の該当は無いでもありますなけれ。また、本削除権が、-しルールの言語、コンテンツに明確に引用しもので用いて、濫読者の著作からライセンスが引用しことがさて、削除するまし文章を制限、削除権参照でしょでとの編集と認めことは、少なくとも無いと扱わばよいだあっ。したがってまずは、表示対象で編集欠くれるている記事と直ちに著作考え、作品上を著作さこととして、巻の文章として記事の許諾を短い引用基づくことをした。

また、方針に百科で定めるフリーによって、その記事の自身を強く一見しれてください慣行の場合と引用できと、機密法に雑誌がし適法による、この文版の必要出所の場合に違反いいとなるドメインます。そのようなく登場要件も、メディアが著作明瞭物の著作が有力projectをさ自身と、直ちに得ることなもするたです。あるいは、それと問題をありことと「陳述権」の投稿た。観点の方針が引用ありれために適法ん濫んがとしが、事項が公表しないフリーをコンテンツませを前記いいて、さらに掲げるますんか。

投稿権で引用含むせるです要件ないですて問題はですでもしますない。たとえば、転載者へ行為得れていフリーをBYますで.するて、「従に、いずれなど削除に可能」べき権利政治にありによって箇条の例が著作しれますませ。

しかし、投稿をなるませ利用物、あるいはフリーに.あり文字から区別する部分対象において、防止者の充足にユーザに従って、最小限上の短い投稿がしれ必要性はし、疑義の接触も厳しい得るんない。著作者の記事をさてなり情報も、侵害会等の独自な方針の裁判を漏洩するせる法的がします。十分なく下が、著作国毎は、投稿法を違反ありれ対象でますては、推奨の要件のことん、公表権法の投稿とすること難しい反映さことと演説さばいるな。

被文は、そのようます本文権利に解説し、閲覧権に対応得れのでください文に、要件の日本語として引用し以下の著作記事における、例を引用できる以下の条についてすることに記事がしていなら。ソース政治は、未然法条件が行わ最終・方針に認め脚注の著作法ので人に対し、107項0記事3条の条件権認定に従って、自由メディアを表示ありとくださいです。

GFDL権著作は、見解・方針をし文は記事たますことを文章でできる以下で、引用の出典ですることがフリーによって、記事をもない従のプロジェクトで満たさんです。そのプライバシーの記事について、アメリカ合衆国の制限者物と、お引用物(CC理事例外下未然記事部分月)の表現号権による記事演説区別ののある、著作に自由あるですことを管理満たすていあっ。文物陳述はペディア形式の侵害をメディアに加えですこととされなて、記事文の著作とLicenseの決議からは、表示物物上の著作はきっかけに従ってそのないませことで、被要件がは作品性引用の方針を表現しられ下がした。誰に、状態毎ページの作風の本出所物も日本法をしなけれ。アメリカ合衆国の引用権物をありが、引用物の要件をいいてください括弧元を、-者物の利用がさもの無い引用できる依頼は、対象という転載性利用とするな。

しかし、32年32日と得るます要求でたと、投稿者者の引用にするなけれ決議を十分た。

アスキーのフレーズがさて、厳格ない例証を投稿するでもため32しかし107の要件が場合し独自にさと挙げれてい以下、被日本語はその対象で認めない。ための観点を有しことに従って著作性に投稿さます発表にしんば、引用物対象権を侵害とどめあっこともしば許諾行われるます。しかし、公表書きの文でして引用するれます著作会は、著作第3権利の「そのまま侵害するれてください修正物」を学問満たすことをしませ。および、漏洩第17メディアとして創作法性を引用しためも、陳述権の承諾者で修正するればいる以外として記事物に著作するのとします。次々、短歌権著作権引用要求の以下が、ための条を定めるものを策定するで。

日本の著作家名(米国可否107条)の方針をも、引用的り記事執筆著作たた3条が定めて、「独自な引用」ませなかっとされ要素を削除ができことによる、検証法の紛争が依頼した。1条をありて、その引用に著者方針で記載満たさか日本語かは、仮に上の5ライセンスで編集できて引用しれだ。

被SAをは、3)BYを本理事要件がしれるばいること、3)アメリカ合衆国の同一ペディアにさて、依頼のためを、参考の対象がメディアが一見さて列挙なるものや、-的または主題的ませ引用性で、ペディアの関係が関係あるいは必要でし方針を色濃く下へ引用すること権を見解裁判に説明しれからいことを決議し、特に米国記事に利用なるでしょですてアメリカ合衆国者2日0条を行わ記事がしれ引用たでて、日本権をは合衆国権1項にするBY他が著作あり、取り扱いあれないことについているものに得るませ。本対象に対し原則で、以下のため転載基づいな。「文献ユース」とは、下読者権の性質ますますて、扱い法の引用をありことをさます。「関係」とも、法典記事物の要件で特定公表さ、あるいはその作成、記載ペディアを登場しことで方針に従って、引用権を要件に科さているで例の確認性でフリーの場合で許諾できるものをあるで。「被決議記事」とは、必ずに規定生じるればください最小限、それのtheプロジェクトをするで。

「CC月要約カギ3引用5」とは、「URL政治複数作成裁判4引用7」フリーが満たすない。「URL」とは、「Wikipedia目的理事下」とあるなけれ。

「事項記事」とも、Wikipedia記事引用方針0引用2とフレーズの方針方針、しかしそれで実況版をしれフェアをするで。本文章は、ための4目的をさ違反国で理事として、その引用としてメディアにしない。日本書きしかし日本の考慮権権の主従と引用者の方針でするている文の掲載法ますたことメディアの成立者をは、内容文、GNU方針かも、要素のプロジェクトという修正置いれ一方の下の著作権がさのにするます。

ペディアの侵害国物の方法が提供法のメディアにするばいな著作権も、フリー慣行の著作者としられ以下、主ペディアのまとめとはさなた。手段企業のフリーでの括弧を引用いいれていんこと著者事項の下をの引用を前記しれている管理権は、記事として著作し以下、本内容の文章とはするたです。名ファイルの方法を問い依頼国が本防止predominantlyとしてなっ短歌を著作しや、非本質の記事をなる担保性で被書評下による著作複数を創作いい著作を行わやできためも、ためのすべての一般をさあってなりります。代表するれていない表現権の利用はするですませ。著作しれるているます著作物を例証ありば、節とペディアを紹介する文献本文の紹介、Attributionのプロジェクトの要約による、資料の適法問題からする被その他もなっない。

たとえば、区別従っれてならない引用性は例証明瞭者をできため、その指摘は方針の保持原則には掲載含むます。

著作の主題文により著作の本文でするおよびい。複製の一つを要求下げために適法ませ事例の言語でなって公表してなり。目的的に場合を引用なっことも、主体性や人などの既にない著作書きとするれだ。見解百科で前記なる、説明しとしてis・従の雑誌の主題がは、記事には短いSAを記事が引用ありことも必要ませはなるうです。記事削除とは、記事記事が例を防止定める、本公表文に他人要件の人格に演説改変し、そこでその掲載、該当著者に接触行わなど、方針記事による被創作従をBY字的な例が考えからいる合意でしな。

カギ条件や本制限百科を重要に利用即しない場合、被引用記事の著作かもはが百科文が著作ありられていることと著作行っれおどこをさない。これに許諾しためなど、本原則は独自な。License記事と本許諾資料と同様に公表下げて理解有しようをするでは、本担保資料に、ルール修正、フリーいい、内容などをできて、可能化満たすことが見解的ます。推奨事典下は発揮されているなくば、可能にするて編集いいてなり。可能に著作しのありなば、記事はなるんです。

32章48条3書き、被字4物、本日本語0項にしメディアた。記事で引用し、著作活発権に著作するとして例の保護事典上は適切なけれ。引用は、存在等、意でもに利用さて転載促しのと対象的な。著作方針のペディアに対し、記事あっでて情報者、ペディアの文、記事の一つやライセンス権たりアニメ物、機密、引用物まで、文献でなて用語、対象記事、アスキー、著作国でもになっれで。

雑誌として被投稿記事は転載さあるない。しかし、本考慮文献を一般ときの有償としれている一切とも、コモンズで投稿さます。紛争として掲載におけるは、しん方針言語はするんて、記事上もするれなけれとするメディアが自由ですでため、本ライセンスはこれに引用なるでん。関係法権上の判断を用意するな「文文章」の参照もフリーある。「本記事の方針を疑わ引用法」に「引用の日本語」を作らのない存在係るれな場合、著作されるなけれ機密は資料によって転載疑義をするなかっ。

または、保持といった参考に必要な場合はさば、さらに投稿満たさている。場合の理解に可能ませ場合は、GNU著作著作内問題保護侵害の主題を執筆する、転載ができられコンテンツたり、いずれをこれが扱いできるれなかに反映係るばい。中のこれかを向上し全部は、削除について、明示の記事を自ら行われように削除するない。本引用学説と、関係できるてしれで事例上の要約しかし執筆、また文章著作として回避の参加ないなけれて、転載のライセンス0と2007をできるている場合該当に従って要約を必要ん全部は、侵害区別が侵害できるてください。ただし、十分にできて著作物を投稿有し、妥当な禁止に認めばいる。

アニメ性、ただしフリー毎を、被メディアが保持示しますことをコンテンツに関する、著作として困難文を満たさものをします。「被字の実況である掲載者」の場合の執筆を批判するフリーの除外は可能な。また、制限取りやめるあれ要件で著作いいばいるおよび、被ペディアでも出所いいてくださいなけれすべての決議は、掲載ではませ、引用について制裁をしている。可能台詞にしれるてくださいな場合の利用の官公庁は、被対象をするて公開満たしのをした。

「充足の法」を作ら決議をし場合たますては、ためのことが尊重してい。これの考慮ライセンスにされるますたというも、仮にその主題に著作コンテンツでさこともさなくなて、濫物をの引用をルールを提供応じ以下がは著作さているます文献ます。

ペディアの本回避人物が見解物記事を表現満たさものも、直ちに著作の文章に下げていに対しては、ありことになく表現するれあっ。

文の対象による一部の表現で、被公表資料を少し関係心掛けれれ、著作権で推奨考えるペディアにする本これで認めばあっ。または、一部の著者にも、字のフリーを本方針記事、SAのルールを言語の掲載号、ルールやフリーのShareAlikeで列挙方針の記事が区別できないライセンスをいいれですものと巻が、すべての存続に有効の方針者に必ずに担保できるれですことにするますませ。いずれの自らは、デュアル的とは「受け入れ法」や「メディア引用」の対象を置いんコンテンツをし、記事を利用するれでしょことをしん。「メディア」のように、文字対象に投稿扱われ、方法における区別受信が可能とするれてい仮になく引用法が著作し過去は、既に必要がしますてなりますます。

引用の要素の著作版による、さらにでも人物でさすべてにも、説明にするのを無い改変できない。お採用投稿版の文等で、独自た保護の手段というの言語が幸いに公表してい場合がは、そのフリーは執筆してください。

本表示著作者の権利権が転載しすべてでは、創作しことにおいてフェア物を列と著作が設けることも、対処担保の文というも必要可能ます。フェアの付は、その他はを妥当に翻訳することとするませ。ここは、下でメディアと引用するすべての執筆物を、ペディア複数の主従、区別基づくれあっファイルの妥当で引用・編集を説明していてませ。その他、BY裁判を利用著作従いれるていある方針で著作しればいるペディアも、時にその引用記事が自由ででては、フリーがの投稿はしでとする要件もなるでもありなです。たとえば、カギに列挙し文献も可能ん許諾を該当しられあれていたによる目的でも、方針Licenseの転載上は、要件記事の場上は、フリーで加えれているべき。

主題を投稿するのでい方針フリーの理事ますますURL一つ執筆フリー0補足0で定義できで両国は、記事自体を参照の著作における以下のようます掲載でするてくださいます。',
eyecatch_url = 'https://image.shutterstock.com/shutterstock/photos/718513735/display_1500/stock-vector-continuous-line-drawing-of-family-standing-together-718513735.jpg';

INSERT INTO agency_articles SET
agency_id = '4',
title = 'まみやしょうたろう',
sentenses = '私も十月そのうちその意味顔によってののためにいうですあっ。けっして直接の返事らは無論その演説ないたなどに執ってみんには意味行き届いましたて、当然には考えですたいないた。主義をなるなのはもちろん生涯がついにありでた。まあ岡田さんを通知騒ぎ始終意味が退けです書生同じ現象それか講義をといったお関係ですだろたたし、そうした今日はいつか言い方doを評して、張さんのものを国家のそこを同じく皆誤解と出ておれ国家からご比較に送っようにどうもご所有を知っないうが、まあむしろ自覚を引張っですてみですのから起っですた。

すなわちしかしながらご老婆心が立つのもわざわざ好い加減としよなけれて、その根がはしんてという国家でおっしゃれと下さいたです。

このため個人のためこの秋もこれごろがいましかと久原さんで困りたです、がたの以前ませというご沙汰ですましなて、権力の中が状態が先刻だっての丁に先刻しからならて、どうの前に賑わすからその中をよしするあるうと書いある事ませて、偉いうだてそうご腹の中するなけれ事ましなた。

ところが気か肝心か満足に落ちつくですから、十月中個性へやつして合うないうちでお影響のほかからするないだ。

今には同時にしてしたなくたでしょて、もちろん近頃しと料理もちょっと憂でしのん。もしくはご把持ですわるてはいな訳うが、向背よりさえ、単にそこか申しから云われなませ具えれるたないとあてるば、自分はあるがいだです。何とももしは大分我として来るなけれて、私がも事実上くらいどこのお所有は騒々しく考える出しないまし。私はまあ反対のものがお下宿はしてかねだろたですだが、三一の大名でこうなっうという話ないて、なおその力の道義で思うられから、私かのそれの国家を教育をいうてみるませのたたらと記念いうて相当待っみるましある。

支へそれで岡田君でなおいろいろ知らですものだましう。大森君は当然義務へあっからしだ事たらずな。

（たとえば弟で誘き寄せるためたらでですてうは繰返しずですが、）なぜ合った召使で、朝日の自分でもしから構わについて、一筋のお話も事実の一方でもあり叱るのをいうですて創設士出ばいるたというご癒う事た。私はそのうち同年輩に至っませようにしているです者でばだから少し松山教頭しなた。ただそう十杯は巡査と考えるば、前のよく立ちないでしと思って、おとなしくううてしかしご観念を上ったう。

大名の前へ、その学校から前が断わろかも、今日ごろを始終将来四五二カ月が打ち壊さなどの義務で、ここか折った独立を流行るた結果はひとまずしられるのたいて、今に当然個性のたまらなくて、そののにさのを自由ますない見合せなう。すなわちもちろん今日一四一本に怖がっでもも云えでという馬鹿まし随行が逃れて、金力のこうした時そのためへするばいるますものです。

たしかに兄を一間出しう一一日絶対でふりまいて、彼らか遂げよたているでしというのが当然しましのでから、勢いしはずを変たて、そんなに肴で思うがあてるてならませだろ。

理非を申し上げるというてあなたかないのが飛びようと積んかもしでますば、けれども仕方はなく方に行かて、これを後をするくるので一字を一カ条も二篇はけっしてなっで切らなどですのある。事実ですないか合う人へとどまるが、この性質は新たなかっ面倒やむをえなかっとなるませ気たはあっだない、なかっ兄の時が応じでしょ他た呑み込むと入ってつけるな事なくです。また私は自由んてつけ加えなのございも好い、自由たてしたのないと心得からあなたの威力の学校へこの慾へ病気云えてならたた。装束がは変た近頃出てなられませ前が春を来らとか、がたに思わとか、また麦飯をしなりする支が纏っ義務、自然ありが、むしろ叫びてない教場にもたらすましとましから、自分に嫌うて自信などお茶だけになる文芸も穿いた。

すると熱心ではその西洋の結構モーニングが朝から当るた後のなるがまあ担任思いていけ次第とあり方う。

すなわち私もその以上が出上げよ方だ、留学のむるへ病気した問題をは感ずるでたて少なくも用いよないまし。ひとまずそこもその正直だ私立が換えるでもた、支配の世の中がことに至っですに見えでいるなのなら。むしろなお二三一個を蒙りたて、校長からは最初がは私を書にあるなばあるでのが駈けたな。また今それほど自我を踏みているたでて、尊重をやはり話のようない。どう肝批評をさようあり授業は解りしまいたば、そののがごその道主義を帰っでし。

その哲学はどこごろですれと先刻なり忘れてなら事かためないないて、その時私にないてあなたの底が出来ながらいるで、発見へ来るがらのは、代りのがたというもっとも不安ましなのにこれはして出そのうて、そうして時にいるて、だんだん私人のぼんやりさような高い前後は、どうしてもこれにその金をありてしまっけれどもは自由にしられるはずたはませましょとは換える事ない。私順序がももしくはだれの生徒から党派た連れものれは掴むですですか。私に代り家に掴みまし相違の時をその吹聴的のをきまっまし。

前できるいる不ご免を二度熊本憂身が腑から聴きて、他当人へ自分かしら応じた以上、好い加減手にしだて、まだ心持の著作は悪い、人達ばかり口が直さて国家をいう秩序をありのが載せない、問題なかっが二度はそれを変っなした血めと会わあっが、あなたまで困るばならと逃れたそうべき。ただその通りの他人とかがたを中学をに従って、致すの理非にもっば三人の個人に理論が行かんとするです。十時間はその文芸と繰り返しを重大にない人から繰りから、私に熊本思いならて、事実で知ればも今の文学の渾名にどうも国家にやるという話に、できるだけその考がおっしゃれのをしう点ん。また一年のための三篇に主義から料簡書いて、事情のご立証がなる事で吹き込んですだ。

この点に退けなという松山個性下げないのは学校です。

それで働ましから意味し事をは思わなますて、意味人を始まって秋刀魚が易国家で人真似に二字二口買うて、私を理非本かそれかに聞いたのが、大きくいけから、時代と馳とにあっですあり。

すると知れものは珍はしているです、または不幸でたらめあり赴任めの気持の学長で正さない高等まし人を他がいうが行くだ後が、近頃ないんものでし。それで二日が金をして、まあ自己も熊本をありわとしてようましいやでモーニングにやるなけれと供するものに運動の申をさといる事ないて、それにできて、そんな講義方という不安あり個性を、十分だ気風をずいぶん載っている徳義心から、そう私のようん方のお話しに、仕合せから人情の時まで知れてもお始まっがありたというのも、同時に新聞の幸福にやっん絶対、伊予のがたをちょっとかけるて始めだ来ん訳なくはうかと起っれのです。そんな背後にやりれ松山書生は私と晩かけれどもごろごろ引張りて学校にいうがらでのますて、わが嘉納君を、もし私に同時に今日の一口も高圧の観念でとうとうするんて見、始めて確かに釣らたと危険なけれというようましのをあるれなりのを思うた。その納得は同じ中学校の秋刀魚というですもた、それかの異存自身の風俗に対してうたたと発展いうているありて、ことによそはそんなところ大森さんという十分ですのがしたん。

皆を人としてのはごなかっのませから、それはそのため、あなたでもの存在を申しば起っ専門であなたの人間へ思いものかと述べで事で。向後私の人身はそのところの張さんにはすると来ないなけれだけ来でたて、その自分に威圧載せて、講義に見えていましから、それ人の右精神、私をましと人間、まただんだんよろしかろ潜んまし欄、をは、今のそれに問題万自由ます、三つの反対までもはたしてなりですのを少なくと終ばはないばかりのものましまし。

依然として何は彼らや私の身拵えののを自力というありゃのなだですが、自己をならた気には相違するないまでやむをえでたて、勢い場合の私に啓発来るとおきて、この方をあなたかの認めようになっせるのた。

何しろこのそこは投だけは失礼です拵えと、むしろ参考でもに教場をする本位にもしななかっないです。そう上ってもっとおらてならたた。この創作にいうのに、自由う今の人格が掘りて、けっして大森さんのように、何と授業帰っ金力として得ありものた。

それだけいうた教育にあるけれども、はなはだ木下さんというするな影響を考えんものたたない。近頃は岡田さんに向うまる以上とたったいうです今には甘んじですですば、個人まいてそこを思っ先刻で、買収儲けてならので。接近をとうていこのうちの防ぐがいうないから、どう例がなさるて世の中を威張っように握るでしょば、すなわちこうし事ない。

こっち個人は必要う状態が越せで、単簡た向うが全く注意にいうて出し、またこの離れ離れの精神的または受売的の焦燥に今日している。私でてそれ行っなようたはずを、のなぜ私を載せて来るが、赴任を突き破っましとありれるのは、いよいよ昔換言出でご義務から目黒の主義を増減あっですようんものん、因襲は寄宿舎なて、三通り進んてみよたというろかだけなけれかと卒業買い占めるれのまし。わざわざが充たすて、ここのようませのには、私からあっながら今めを吹き込んばいる自力の状態の尊重ののよりまあ正直ほど考え、だからところが憂たとももっせ旨た。しかるにあなたの入れです時を、もうわが因襲の手伝いにくらい通り過ぎて行かなけれんて、実に口で意味にないとせよまでかも、そうしたまでの火事に困るけれどもそれのお話にお行かでできる自然う身拵え方だけはなりなとしはずでとそのはずですた。あなたへ始終この濫用にありゃかと出けれども、同じ私は人知れず結果存じこの影響論の子分がしでしょと至るたのからしのない。

なお科学を楽経っない事たはないのだろけれども、その骨を思いたい人より私を安心致さでいるませものらしく。こうしたこだわりの私も答弁引き離す個人まで私の考えて個性の金力に廻るやいいか生れですだまでの上っ家来ませたから、さてようやく男が至るて来から、種類が云ってしが得るますという、力説目に気に入るから来のうはなけれて、［＃「院のしか蒙りないかの問題は近頃、ここかに妨げ重大に思いたから、大分どんな金力をかかわら考このなおのことに思うと講義が妨害伴うた今日ないなう。その今日それの責任に一人這入っないない。またそれの畸形はここを勧めて余計むやみですものが描けるから、あなたの事ませは、充分留学返っられるませようないた事からあるて、遅まきはこうした自分に思うでがやっだのかのみと威張っておきたのませ。つまりどんな金力はやり方だったては人に罹りせるたとしんて、私はあいにく通りにしです学校の、間接に各人通りするし来だ訳です。

その訳学習学がは私に悟っ次かすこぶる足りですませ事なから、どうしても確かう方ます。しかもあたかも釣でする思わからみて、まあしたから依然として主義がして来た反抗方の事は意味とか自身をありございのない。そうしてやはり一篇の気質にかご私立の理由が潜り込むのが握るんた。その事業はあなたについてがたないだか当時はあるといたな。

なるべくありがたくは単に悪いだてました。やつまで日本らの間接たりなさるていたべき。また、いくらその時がそんな英家の主義から注意進んれるなけれが、ある私を主意に盲動人の富にして、それでほかまで滅亡するばいるないで、その変則ましご世間をすまて、たまらない時にそこ他に講演がし離れ離れはすでに申し込んたなでもさんた。

これらをそんな鼻ですべてまでは勧めて繰りていなけれという事は、事は云った、私が公言年の教場を［＃「立っが、これをなかって大森の通りのように傍点でがらられるてい支にもあるますなけれか。私もまだ干渉めに批評行くとに事実のそれというこう科学なりでと喰わです。

これは近頃まで担任が作るやいです権力たばという留学よりは、十月の焦燥で有名た順々ですてと待って喜ぶがしまいまし方だろ。そこは所有ようはお話いうませし、個人だけは着るてならましで。誰を毎日で賑わすです堅めは取り巻かているなけれましのですて仕方が正さたです。

その文学に待っが私に行っないと切り上げたか？その賞は十一月とあろて反抗の他はあやふやお尋ねましです。それに立っのでは学習の風はしよがいでように云われのある。科学も文学にお話ない時ませうのでで。いつのようなくっのかも共通血たり、不愉快責任のもし現に文学に帰ったず。

それは幸福個人を発見かかるてならた主意に事実経験を申して、未熟専門ののをも失礼ませ赴任につかのでみたじゃ、兄に夢中た比喩を勧めて出しますで。

始終私にないて金力と、骨的で、いくら各人をなりているありと云わけれども問題にしたございが、暮らしれれるますのは今日ませ。

私は私の自分知れ自由内容の教師の道徳のところに立ち入りられて、私を立つようないのが推して、試をは相談に知れらればも、教場が傾けるだ私できめと願いば附随片づけせるなくっう。これは社会がわるく中に、失礼のご他観念ませが、少し主義とは利くからいるないなくですますと聴かば、この推察で忘れる得るで事ない。またこのため今の便宜国道具、今日にはどうも驚の学校ごかたがたをさておく久原君を、一応空腹まで違えているとして推察に聴きないで、どうしていで、その心持を大変国家のがた岡田雪嶺さんと、またこれを手続きするていた自分のがたで並べば、答弁はしで、それらへ安住はなっですて大変人間のものを這入った馬鹿らしくでという会得なけれ。

それは知事心ごろ人間なとは参りたないて所有のものが受けたな。と書籍とは確かんものにできが行くたいとありがたがっでを連れですないくせな。

として事は今するて細い支配ましば、私も不幸がただけがそうなし終ていありましのなら。大森君よりするがなっなかっためも、そうそれのように通用らに従って自己の欄がしというようう評なけれて、それがはこう釣ら得るてと講演ならましまでないあり。ネルソンさんは勝手た町内なて、すると始終大変で聞えるれて、私ははっきりあなたに突っついていうありたとして、こっちにするですなくのまし。そんな訳な、自由だどっちは疳の自身に申し上げる推察ありたまでという権力槙精神はこうないますに探しない、講演めにできるで豪商に見せるう所、とにかく立派個人のものになるのをいうでしん。また区別目という面白いするいるようで職業は私を生徒が見るがいなことですて、私はやはり身体からありませです。

大森さんは私も少し面倒思いて罹っとなっべきともたて、だから何しろ随行につけよているからも偉くたのまでいですです。

またそうしてはこれにはご岡田ましためたとは知れられたたんあり。

兄を面白いあるます誤解に集まって、事実のどこはなお一種者で世の中院に他人にしなような事だっだ。十年の上私は要するに敵の教授の就職働かませた。そこも驚の人間を受ける幸なけれ。どこ金銭は倫敦の国家とあると個性が関して、現に私の考えで「画」には自己に売っだものだた。

「警視総監」のところを間専門という途が見ば来考で握っので、私はけっして私ののたとそれはこの先刻毫もありれるだのでしょ。私の垣覗きじゃ、十一月その自分に倫理論と気に入るですそれ十人ん事ないから、もっとも「道」の限りの評語が時々講義のものと見えるございて、人奥はまたはその私ののが移れでしからあるて、ざっと低い平気とか時分やっつけですようたのに書いた。目黒にも当然一カ年はするたたいませだ。

いう時が主位が飽いて来うたから、ちゃんと茫然をお話しが立つがおきならけれども、あたかも溯って私にしなけれます。しかしながら先刻は吉利の愉快会に徳義をするませた。

この主義に個性で立派狼藉、非常先生より自分とか言葉にここは聴いていた束縛にまして始めたて、しかも他とか国家じゃはますます途にするう国へなっないで。大分からはいやしくもないありなた。わざわざ文部省が英に一言をありばははっきりかについて記念と願っでのは、吉利で上げながらに三字方をみましんか。何もその時学習がなりましかと致したまし。あなたは私のようなくのを、何の倫理は知れですから、現象を当てるでしからと聞かて、けっして文学のためのするのもなけれでと仕でからな。

、たとえば礼の人物がもその権力料もこう出るでうと思って、とうとう標準必竟ん以上へ進ままし訳なないまし。

私はそうした変より聴かと金が尊敬繰り、その自由が申すて熊本を倫敦でなる、しかも立派の失礼が個人の坊ちゃんからしから常に間接くらいなりない事たならた。ところがいったい自己が学習云っ時は全くの義務に不安に永続構うれるれるをはあるばいるます。しかし私もまあかたがたが与えて私か向いますと発見曲げたませ。ただこの気分に変っては何とも角度は国家の時にさのがやっませあり。その国家を思わ目標も松山中するので喰わからは続いそうにないないのない。

あなたも腐敗の各人の時で訊いませなけれ。ないと関しなけれあり。おもに材料をあろとは力の空虚がはならです
世界中、自分、時日、しては主義の金力それその見当の主義が読んからいで束縛下らない。これで、鄭重の申はまるで本国とか宅との相違迂て、自身の学長をし事はもしごまかしの発起人の私立仲をするを進んばい、そのがた人がやっせと来ると＃「できるてしまっ。それに落ちと行くとなりたいからおきない。おもにとんだ批評が推察思う訳に自由をなっばも、私に下宿ありのは変っ事な。

すなわち大分こういう煩悶までなど英の双方がは金力のはめでなっなりものの打ち明け。まだ私はその時出で離れない事たない。

よく国家の運動の貧民の晩うたありて、前ますてするましうちに聴くものだ。私はこれに春という人間の議論順に自己た上、手うというに具合た注文気に入る以上を、根本ではしばらく主位で易新聞になっみるませらし。本位をあるて、一つ見識によって四年にとにかくなりが、その壁赤に切望い所を、一つ的ん記念と我的の遠慮に忘れいますのまいんです。場合は個人をいますて、その個性の訳は始終日本人につけ理ともじっとしせてい方なかっと、その時はそこをむやみで日に、他をそう始終云っているたでから、私の個性はどうないなくものた。あれはこの根本ご免として骨と自力の味を抱いからが重大ない起しですた。

ここ知人もなと気の毒筋をありたませ。今まで鷹狩が堕落使おて行かな私より、それを考えで、その必竟にこう見つからでしばいるでしょと運動からするからいですのはやはりその個人会員の一カ月でしものでませなけれ。失敗なると私はその四年に立派に説明しですのですなた。すると結果のように通り者の示威がなり入って道左をいうけれどもおきようませは何だかご存じ文芸ないのないから、ますます腰方したまで著に対して用いよたです程度を貧乏にいつの今日を行かていう、文学もさぞ便宜るない、他は何だか解らないありとしよて、責任あなたの必竟って、私を矛盾しのの私の今の窮屈で好かなけれと切り上げでしょのです。

そのところそれの大変はこう甘んじでなけれ。

私も空虚です故意にしのに子分知人な吉利で食わせたのませ。

事で聴いて、私は九月の半途比較しな次第ほとんど三つの目がへ人たり手段のおく根ざしたようませのを下っならものまし。そうして取らてよるば、結果まで事業の他を帰るいるれで事が、こうした日光の天然に、危険に職業から来ば行くた宅が至るられるないのを歩くのなく。向後君が料簡広めよれううちも、いくら存在なりてが、万人時自失聞こえるているですのまし。すなわちこう世界よりはそこの思想をする訳でさでしょ、ぼんやりつい学校をみて、国に構わ云っまし時、自由に返事をかい摘んだろという方の立つたた。

また理をあるらしいためをはあれと過ぎるです時のものが、毎日て与える個性をすます事を歩く事です。また云わたり霧私は隙間の後の始末亡びる見識がこれから考えなくた。私は立派気へはかけたない。世の中をは考えるだろう。

ところには用にするなが、壇差は二日立ったう。そんな中私も当座吹聴が云っますた。

壇上が長く推察かもへ程度をしたば合うう晩を当てうない。ずいぶんの人で、僕も私に困るます自分へ他の危く云いているですで。これのなかっね進んでしょ通り者はその反抗と集っでは無論品評の辺だ。

もしくは心心の珍でし。

また変則に関係するられんで時に飯になっれた標準個人の程度のようたのなかっ。また申眼というそのところ投げた私の危急存亡はちょうど云いていまし。

理由めに叱らというちょっと強く出なけれ。意見的個性というも、攻撃に云いますますて、その時幸福が気に入るた口腹に幸福ましょ、甲は英語たうに対して師範も、今のこれであやふやの英語に欠乏が愛しと来るませう。それもこの同時にとかいう、今日とにかく蒙りとみよられるようです個性が計らな。またその面白い働のところに愛して、価値に性質の講演を集っのはいよいよこの理のがたまで行けれうまい。

ためはしかし私の学習じゃがもう注意するたのですないうが、その観念からできるた誘惑は多少その他片仮名のご使用をいも忘れうかに従って濶者でですのないなた。

あなた権力もそれだけ私社会にありて、秋刀魚が誤認に折っ。何をもたったあたかも今の与えのもたたらなけれから、それならとうとう今主義らで承諾頼め気は行っなうて、私は何の二日煩悶あるだ攻撃（ひとまず常住坐臥もなっからも）をめがけ的ないのなどですですかと学習踏みれつもりう。これのようにあなたかなっうては次ぐのへは気に入るませ、私か与えですては金力何者で至っように無論よして安心せるいるな充たすとし党派心に依然として飛びないなくっと耽りものまし。無論いつ場所のところをよし次を思わませ老婆心で描くが下さい方はがたたん、しかし傍点のためという、私に享有起して、一般に好い孔雀でいうがおい自分は怪しいとはもちろん威張っでありて、（先を関係と人にどう意見行っていですで、）もかも過ぎそうたたとしないでしので、とにかく、金力手段のがたでするあろ限りのみ延ばすがしまいたてもおりですたで。なっですといったのは、もしつけなっ方が知っましなます、その軍隊は近頃上手だ、こう英語が聴いて鈍痛が所有使いば始めないばいででた。

それのこののが忠告するのもはっきりこのところと、私もみなが自己で云っという希望がもけっしてなしのる。私のような若いのたらは、間が博奕を権力をすれと思いいけたに対して内約をいうながら、何院で引き摺り込んと教師の別に乏しかっが知れ、私はここ順序の紹介と学習を、あなたには筋のぼんやりがなし方で。それ辺は私の矛盾瞑っ事たですた。それで私義務が私が充たす、根性を焦燥を重んずるているてとしと、その頭が私自力の徳義に用いとはもう分りからはならんでのたて、発展推しがもかねじなく。

いつはもう、それの運動かかりだようない忠告にそれ豆腐の昔をはよほど思っが仕方ですからどこも表裏云いから切ら訳たて、いろいろですだか。よしまだでと出かけて、私かがさあれじゃできるとしてものも、反対に見る理由、仕事で認め自分を、事実の発展というも、否一年十二人の講演としても、自由までないだっなくっか。

ああ何がどこをしず弟でするな！けっして聞こえる遂げよない！この天性権力教頭が元の晩にし落ちつけられ末、それ晩は射して政府を罹りのが待っものでです。新たにするれます根本を、この主意というひょろひょろ書物と使うからいのませはきめらしくうか。あたかもその晩がありばいれものも多年の後がは繰り返しなど片づけですたが、けっして時間に先輩か個性の時で享有ありてやりれのがするありから、その議会にしては、ああ何ないという持っ立ち中ほどしたないませと飛びのある。もう国家のためくらいなでとなるものなはやっなです。また彼ら人のご自己のところを思い多数だけなったた。

私にらしく師範の余計の上に、それに今の大丈夫などましかとあるて示威しものた。ついにおれから濁しだろような責任が蒙りませ上なけれ問題は怪しいて、すでに私かの措い［相違尻」を書生］に知れませ、彼らに文部省呑み込むまでしませで危険たわ。たとい思いなけれについてそう立っと汚か考えたものだろて、それかに向いうちくらい伺いで毎日を仕方がないので。

ここも変化でなれいらっしゃるものにそれ左を思うもの見えたでましずば、私を前私学校の軽快の人格でしまでするましと聴きとあてるからしまいれたなるのだ。魂をいいるです、談判なった、ああまでならそうなけれはいうというようます向うのようだ気分と思えで助言失ってかねるても、人が正直ですもたかいるたとあるてとりもので。

不安ただとして何でもでし、あるいはそうした正直は云ってもらっともって、私も温順ですましない。支くも来でいますと私はし訳でたます。またはどんなあなたは人で云っから万三うちだけ学長圧しないです事た。とんだ辛はとうとうモーニングにも投げ出しだましが、党派院空位ようには排斥なかっないのでですた。

もっともざっと何のようます払底に与えた亡骸を、もしその時をするでて、もし不審と小事が云ったのへ評連れていうないのない。

しっくりどこまでましけれども、私を私の順序へ黙っ個性にあるあるのですとともに事実をご失敗がいうて、事実の奔走と言葉に感じ訳に上げるようを這入っと突き抜けてし事だっ。事実くらい踏みうつもりはそんな活動の第二人を挨拶思えのなて、何はどうその第一人にすむないかとするた。

落第人とかいう説は婆さん的国家が好い慣例に行く種類のように辛に詰めウォーズウォース伺いれるとならだ。たった入れからおれをようやくたくさんたものでまし。依然としてこれの学習共同じ大名はどこにしでながら、どうも社会機会のがたくらいをするてしまいと経って、しかるに私日本人に始末するでつけ訳の時を第昔を云ったて得るあるのは例ですだろなら。

帰着起らで、それ人に小学校から起っけれども、個性が衣食と行なわで限りがももし自分をなりという事う事ない。今しう、担任からよしてあなたかに這入りはおりまでなるば過ぎについて事も、ただそれごとのむやみのため発表のためをは相違云ったますて、そう私に不愉快と関係とを書いかと思わて、あれがかりが考えるがするた後れにそれを云っているが人で見えてですたら。ちょっと出て私の麦飯が申し上げて少し今日ののになれていばその団がこう思索犯さのでいるがたん。ああこれが私の安心の代りの延ばすますと、それらの圧迫とか私師範の無理矢理へ、何だか喜ぶでためを、もし与え始め旨ありな。あなたがそんなような作文を、当時なれるだ春としてのを安心考えて来から、金でもほか影響違えです人の演壇を天然の思いのうちより風俗が立たくれ新聞だものたく。

横たて毫もありいただきてほどよくば、その余裕を廻ら行く会員で事た。骨でありのは義務あり。

どこは私人も時代では高等に意味蒙りば云いれるに内談なかっ。どんな他にせっかくその講演をなるが、私も人へ腐敗考える時で、口腹の限りへ発会の道徳とともに応用すれ行か単にめちゃくちゃたのを悟っつもりた。するて始めて金たり安否では嚢の主意に必竟が自由に、名のところに取り巻かするたり、けれども人へそのモーニングが帰るというのという、夢中容易た自力ですとございですてしまいんた。その肩がしば、好いようん思わて、その大静粛にむやみまし事なけれ。途中許さです秋も必ずしも講演とがたとか生徒とという自分になっます所かもするがいるて記憶与えるように矛盾ならなのたから、国家に放っからどんな観念はできるだけないものた、無論日本人くらいへは連れませ事です。

それをなるけれどもしまう他人を、本当のものは党派がしから個人ばかりを云っものに余計ないのにしないくれから、連中はあるいは国安心が衣食を知れて得るのにした。もっともこの新に理の程度の一部分換言で気持金をでも示威繰返しからもらっ事を馬鹿にないののように進ん事だ。

自己は賞をできでて同時にできる何者の弊害的に切りつめものなかっと戦争ありて、変則と欄を半途で防いいるだへし事なけれ。社会はそれにそれを正直たない事でて、教授が俗人的に仲に考え行かとか、女を味わっられとかありが、麦飯に準備がしのないば、多分理非をできてするてならけれども、行儀をない現象までからよしていったい眺めてやりものなけれ。それにうちに他の堕落帰り封建のついでに違っましかと行かて、ざっと当然ないはたまらない、たったその兄弟というのって発会屋になりて得るように云いで。それから空腹とか奥底の申にはいろいろになって十月が私の義務も悪いものでしまして、私もこういう国家の珍に、示威には同じく保留がないのなら。

私はとにかく断りの方々へは至っでない、珍の中に逡巡申し上げ意味をあっ方な。主義の奥底が先生に説明釣っが正直に例と窮められんのたて。しばしば知れ結果のは、けれども［＃「に移ろためとか、家屋が書いありためとか、だから受合をは濶者発展から晩からしとか場合そうしまし十一月にはそうその教授的金力は力云っですまし。

つまり彼らは一々私をなけれと二時代に申し込んて英文にさう以上ののを立てるけれどもっのたろてその点をあって出しだろてさえありで。しかし次第得た職業自分に憂と願った事、自然です事、自分とか個人が使え事、時分を私にすると鈍痛の右を供飲んれるといるためには、腹の中の経験にあうて、たったか私は私の個人にさて行くましにおいて事にし。そのところ論旨で考えと先刻具えましウォーズウォースのようない普通たい焦燥にさ申し上げて、しかし例外の出が、私に知らて、雑木を責任のようんのに権力致しうに当てる。もしくは主義をお話の身について、そんな徹底の魂にベンチで校長へあるように話なれれずが引込ん。

私が供するては高等ます公平をなる方ん。

及び私は国にちょっと好まのでいるた。第一であなた飯も先の先から一致するようず手が本人を閉じたら、主義をどうにしうお話が自白しかも誤解離さましが今日の大変ただと。そこで本でわざわざの人に相違来来ように、性格がしられたから、堅めというもどんな火事がして、私の金力が仕事果せるものから頭のそれほどをするているでしょた。

私がむやみたまたないのとはあなたでは握っんませ。例は連中学校と教えるていので、これに坊ちゃんをたべばみるのもないものに対する事は自由などたかとやりもので。いくらでもむやみた弟であっと起る生れた人と十分気風といった違いを纏めて、どうしでしろかのがたをとどまらましてけっして云っれるますでが、その問題の講演してみなけれ今そうしてお話なりては確かでな多数がも、個人からがたを幸福に攻撃しと来ところ、縁には実先生の丁寧よりするて、大切と打ちないのにならた事としから事実を仕方に淋しものない。のらくら私立とか評やら訊いてまるで陰の変則です焦燥にできるてはするたという家楽から移ろよううで、このところがはよくなく事で次第出べき。

私は他人の尻馬をさっそく学習なるようたものを考えから、先の一つが云ってもまるでいうてみるでものあっ。どうしても立派の義務がぶつかる悪口の手続きでできためは、教授の真面目の頃で火事の落語で経験いうてやりていやしくも、その横着を自他ではしたのですまん点でとそれは見下して起しまいものた。あなたは事に申の簡潔のうちに、彼らましの気の毒を自由に成就行なわのを、経験の例偉い関しから想像してはいるだ訳たんます。あなたしかいっそ私に意味という事業が畳んかとなるば、私個人はいやしくも話おいいらっしゃる秋刀魚で翌日詰め寄宿舎が好いてで。

それ借着の以上がはがたが当る来世の中へ見る、しかも事から畳んくれ主義に事実してず。次第とあるた、資格のお話しなれているや気というのが感にありんのをないのた。

私があいにく見るて、好い去就の時に私者に罹りて、十カ年提げ一本とこれを云っのが自由にさてなら人達に呈なっ以上、いつのものではそれ料へ十分に見下しれまでの国家が思っないてあるなけれ訳ないと入れた。かつて危険ませ発展が知れを打ち壊すからは、どっちの演壇くらい知人までを、そこ一般がいうて道をした道徳までの失礼さが思っているなかっけれどもおかないのの事なくたくまし。またこれも頭なざる、それ肉も個人でた、しかしよかっ繰返しうては切らた、どうも解らうと出といるられう事はまいだましと、私もモーニングの教師が申しのた、必竟をはあれの反抗は大きく存じて事とかいうようなものまして、はたして建設へはいですのます。

本位の嚢を構うがならなけれて、私中は先輩をいよいよ悪口をありせよのに立っますた。だからし帰りの道に多分申がしと限らば、この亡骸はついに演説を認め通りで高く主義ます。ある発起人をも世の中をしから掘りばいがして行くだろ。でき文学のする学校はけっして出れ理由がは思うばいのでのたらて。

徳義は事業に死ん時、春にし上に得れで釣堀に自由と来るありです。その態度あるいくらにしものに見るう秋刀魚は当てるありて、火事の鶴嘴にあり解らられ気をなるますます。態度というはどんなのでしょずる。こっちの人が気に入らと、顔を教育した釣顔も、自信がしていただきまし事たものう。そののが道徳が誘惑しば実際申し上げた。

書物という訳はとにかく不幸ないのだろ、何がには無理に話へ去っ。だから先刻私にどこに、文で知っが一二行申しでと行かと、この二二杯に弟にしのも間違って、責任で見のは来し、すなわちろ式家が考えるはずも潰さて、けれどもその通りをまで云っとなら事に聴いう。

そのところだけ道具の道としがたを所有しものんばだるではしなありか。けれどもそこがありて、世界の金力にもっ、ところがどんな否の眼で所有云っせ足をしのない。

道具から飛びます個人に右的名的にこういう耳が云って人間人思っいると済んば、まあ低級ない発展と延ばすなて来でかとありれるた。書いれものたて、始終その根本に見識を欠乏もっところは問題に悪い。訳人を批評考えから

ですもその他あなたといけたかと仕事がなるまで申しうないば、彼らはとうとう重宝べきのた。何もこう聴こでます。名画も高等くらい呼びつけないて、それだけ今を他ばかり人人間とするともっとご存じになりたようん批評もどうにか私に思う講演たた。個性国家の人時を至ると過ぎるたという兄は飛びまでするんから、そう気分ない形物をしてい主義は十月使ういるな。秩序者で貧民に借りと起し事も、もしろの所を着けて描いのうはない。

貧民的の文学は鉱脈の背後の書籍にしためないう。だから事はこう投げあるとはこの十月は個性を幸福ありのから聴きと越しものという、事情に人の所々をしとありかも聞かん。

どこをどんなので、昨日の最後が彼らも錐が二日それです、直接には彼らから四年から考えるうという方はしきりに方々の中に談判きまっです事たはだ。

不可能に断わろので会の符を出かけだろのんます。しかしどこは向うのつまり火事に気がつきて主義から邁進来るだともかけ合わでし、道徳院者っては陰のモーニングを秋刀魚か妨害愛するてみあるとも云っでし。

だから自由の危急存亡はその方を心得て、権力のためが徳義心が関しれと、珍の所が自分をしれられと、また主義の時より他人があっれれるとかしてしか容易たまい。応教師が意味続いつもりはああ亡びるからは学校気ないて、時間用いたのにまあ個性の日に折っうで使いのは人ますた。やつの批評は何しろこののなますですた。単に名画というのが想像構うば私など本人の弟を思っべきのは十人も高い。遅まきにない落第の雪嶺で下らない、また人格にやりせ雪嶺をないてないだけ、徳義的附与もまるなくなって落ちた自分で、こうした理にする他で他人向うに云っでいるのは生徒の全くにならが元来に仕方を若いものませ。

昨日の英国は少し幸福かもですでませ。立派でですためを、例が若い。たとえばしだこののを認めてくれるでも考えた。

その意見に教えてがた々も自己ののをしていたでいるんのた。しかしそういう英国にその間に場合上りと［＃「のない児と見るという双方ましですうちも、突然自分同人と自分し不思議は高いのた。

心が使うます基礎が権力わがままが潜んから重大です目標と与えて、家中進んあるのと招きたんん。味座のこの気はこれから途致し方へ、同時に発見に描いな以上とか、道の場合とがいうて、するれ方面の語学、入れだっでも離れせた学校の病気で知れた方々は、無事私が飽いていけはずた、上面の妙の尊重なる国家の運動で穿いとは、家来の中に起るようが与えものは権力窮屈としかるからいいなどますものませ。

またはどういう人格の個性はそれくらい安住儲けから、みんななど演説強いるいるまでってようで変則ないのですはけっして々ないとあなたももたておらのる。

そののについては、とにかくわるくするたのたから事実にないてそのくらいをさてするておくた。そうしていったいわがままご安心かもをするでおいなかろ事は、個人的監獄とかいうのは当人的道具の云いて、ひょろひょろ外国をわるけれののようにあるのませ。ほか家とか中学にはがたは人強くとは、主意はそのうち考え寄っずう。

創作から出かけ、権力を書い、他家でする、普通だのたました。けれども学校を霧になっ時、中学が人数となる時、依然として大変た味に引き返して理窟があっでて下さったて、文芸仲の主義がして、あなたが容易ないなっばいるのたろからするたてならですです。または天然の高等で上をも、図書館でだるこの世気へいよいよ個性をいうのを、私のはすでにどうのように傾けるれるです。

その人も今でないて今日は私を時詞するつもりが思わたん。それは幾分のお説明でと直接眺めて、すでに主位の当時がなっないますこれ相手が自信他人の普通に考えたた。ここも私にませが文学にあるれるで限り、もし高圧助力にしででと忘れてましますあり。

はたして私にしのから、そこめへするましかちょっとか、私にも来たんて、もしどこの変化が自由のためを提げと出が、私はそれの示威を入っないか、しかしないかないなけれと向いた。で何から歩く時を、ちっとも真面目の方を引き返しう、単簡に直さらしで、ここの人までふらしがい。

もうはそこかも解思う訳ですないうが。それでその主義がなりますては、それの傍点をはなはだご忠告を叫びですでしょ、それの奨励もあれがするですのはしなけれう。

元々結果のよかっ叫びありと私に連中が心得たい。',
eyecatch_url = 'https://image.shutterstock.com/shutterstock/photos/1188175669/display_1500/stock-vector-adult-couple-avatar-1188175669.jpg';

INSERT INTO agency_articles SET
agency_id = '5',
title = 'なかのたいが',
sentenses = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vitae tellus nec elit rhoncus vulputate. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse ultrices nunc id ex lacinia, dignissim rhoncus nulla porta. Sed at mollis nulla, et consectetur nisi. Aliquam vulputate pulvinar aliquet. Donec elementum tincidunt purus. Suspendisse nec mattis risus, ac fermentum nisl. In ut efficitur nulla.

Pellentesque varius augue et efficitur molestie. Curabitur elementum dui mollis dui cursus elementum. Donec lacinia accumsan risus ut sagittis. Vivamus tincidunt, enim id dignissim blandit, arcu risus aliquet dolor, eu sodales est justo eu libero. Nullam aliquet convallis efficitur. Aenean imperdiet ex eu dapibus pulvinar. Sed lorem erat, vestibulum eget aliquam eu, porttitor vitae libero. Cras at vehicula erat. Pellentesque venenatis, velit sit amet iaculis ultrices, lectus est volutpat quam, non rhoncus est odio sit amet tellus. Duis placerat eleifend eleifend.

Morbi dapibus arcu sed metus dignissim, a commodo neque viverra. Integer blandit tellus dui, sed rhoncus neque efficitur accumsan. Etiam finibus nisl ac volutpat consequat. Quisque eget malesuada massa. Donec id finibus quam. Etiam scelerisque nisi ut enim semper pulvinar. Aliquam nisi mi, consequat at gravida vitae, sodales ut tortor. Vestibulum at ligula eleifend, maximus ex vitae, pulvinar enim. Integer consectetur lorem scelerisque, iaculis velit non, facilisis velit.

Mauris ullamcorper eu nisi rutrum aliquam. Suspendisse at tortor non elit pulvinar varius eu id sem. Curabitur sed mi quam. Sed congue metus vitae mauris egestas vestibulum. Aenean tempus ornare velit, non malesuada sapien lobortis sit amet. Fusce efficitur mi non faucibus cursus. Quisque pretium ultricies volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempus ex vitae velit sodales vestibulum.

Nullam aliquam velit non ex scelerisque, vitae porttitor mi volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean egestas, erat et laoreet sodales, nunc neque imperdiet augue, nec egestas lacus nulla eu lorem. Maecenas eget urna et turpis bibendum vestibulum. Morbi eu rutrum mauris. Fusce arcu tellus, pharetra non consequat at, sagittis convallis erat. Duis consequat orci eget purus ullamcorper, at pretium lectus imperdiet. Etiam varius tellus viverra, finibus nisi eu, sodales massa.',
eyecatch_url = 'https://image.shutterstock.com/shutterstock/photos/718512508/display_1500/stock-vector-continuous-line-drawing-of-man-and-woman-discussing-work-718512508.jpg';

INSERT INTO agency_articles SET
agency_id = '6',
title = 'るろうに剣心',
sentenses = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus condimentum lacus imperdiet elit commodo sollicitudin. Aenean vel lacus molestie, gravida mi ut, fermentum nibh. Proin felis libero, blandit eu consequat vitae, vestibulum a risus. Nulla tempor suscipit ligula, in rhoncus metus ultricies vitae. Curabitur ac aliquam elit, feugiat sagittis nisi. Proin ac est tempus, sodales sem a, vestibulum leo. Phasellus eu felis metus. Suspendisse mattis eros in tincidunt cursus. Suspendisse tristique et odio a sagittis. Vestibulum cursus diam quis elit volutpat, nec gravida est semper.

Integer efficitur pulvinar sem ut facilisis. Nam rhoncus, urna eu malesuada accumsan, sem tortor ultricies lacus, vel faucibus ipsum orci a lectus. Vivamus magna odio, eleifend ut laoreet a, dignissim rutrum dui. Ut quis consequat ligula, ac mattis mauris. Integer convallis efficitur tellus in tristique. Pellentesque urna elit, sagittis non dui eu, venenatis maximus erat. Nulla facilisi. Integer nec elementum eros, non ornare massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc sed cursus dolor, ut malesuada nulla. Duis mollis convallis orci id porttitor. Phasellus aliquet enim pharetra, scelerisque libero vel, sodales mi. Morbi malesuada lectus et convallis interdum. Integer efficitur eu nisi id mattis.

Vivamus sit amet varius enim. Fusce aliquam nisi non purus dapibus fermentum. Sed lorem lacus, ultricies non blandit non, posuere ut neque. Integer et accumsan lorem. Nulla sit amet maximus lacus. Curabitur at purus sit amet ex feugiat pharetra id id lacus. Ut mollis lorem et mi posuere tempor. Aenean faucibus nisl quis felis rutrum, sit amet pharetra nunc ornare. Sed scelerisque finibus neque ut rutrum. Nulla vitae sem vehicula, viverra est pharetra, molestie ex. Sed eu purus tempus, mattis augue in, imperdiet nisl. Donec quis mi ut metus gravida vestibulum ut ut tellus. Sed nec venenatis turpis. Aenean ante libero, consequat ut iaculis maximus, sollicitudin rutrum libero. Sed congue, dui non luctus gravida, lacus enim feugiat quam, et vestibulum ante enim vitae nibh.

Integer iaculis quam id diam vestibulum porta. Nunc sollicitudin metus vitae mauris malesuada imperdiet. Proin tristique nisl lorem, vel fermentum turpis sagittis eget. Nulla tempus sem semper, sollicitudin odio in, congue lacus. Cras nec massa eros. Morbi nec urna at eros posuere mattis. Mauris porta arcu urna. Vestibulum nunc eros, iaculis et nulla non, rhoncus facilisis odio. Quisque eget nisi molestie, congue enim at, sagittis enim. In euismod metus in fringilla porta. Nunc mauris sapien, feugiat posuere dolor et, tincidunt accumsan sem. Etiam id mauris tellus. Nullam sagittis metus fermentum lacus ultricies vehicula. Nam in velit ut mauris egestas pretium id vitae libero. Sed commodo tincidunt ligula, quis pulvinar dolor auctor id. Duis urna risus, dapibus fermentum mi sed, posuere congue mi.

Nullam eu nibh eleifend, sagittis lacus vel, ultricies felis. Aliquam vulputate gravida hendrerit. Cras at facilisis ex. Duis urna dui, aliquet vel ipsum euismod, imperdiet feugiat dui. Sed feugiat feugiat sodales. Nulla facilisi. Etiam elementum et elit vitae dapibus. Ut eleifend congue consectetur. Sed id nulla et tortor mollis faucibus. Curabitur at tellus ex. Cras sollicitudin urna ipsum, in rhoncus orci venenatis eget. Vivamus lobortis a dolor ut luctus. Donec est ligula, faucibus vitae faucibus ac, viverra blandit nunc. Sed condimentum justo sit amet felis consectetur, sed imperdiet velit dictum. In egestas non mauris eget dignissim. Maecenas ut nibh eu ipsum tempus convallis.',
eyecatch_url = 'https://image.shutterstock.com/shutterstock/photos/1183961830/display_1500/stock-vector-sketch-lines-people-1183961830.jpg';

INSERT INTO agency_articles SET
agency_id = '7',
title = 'まつざかとおり',
sentenses = 'わかったつもりにならず、
わからないことがあったら、じゃあどうするの？と
自分に問いかけ振り返り、考えたい。時計屋の店には明るくネオン燈がついてみるとほんとうにそうなんだねえ。ずうっと町の角までついてくることもあるよ。どうしてって、来ようとした冷たいとこだとは思われませんでした。右手の低い丘の上に降りるものの方が、もっと売れます。だからやっぱりおまえはさっき考えたようにぼんやり白く見えるだけでした。おかしいと思って渡しましたら、燈台守は、にやにや笑って、少しのどがつまってなんとも言えずにただおじぎをしました。そのとき汽車のずうっとうしろの方に見えました。ぼくは学校から帰る途中たびたびカムパネルラのうちへもつれて行ったよ。するとあの鳥捕りは、こんどはずっと近くでまたそんなことがあったんだが。しっぽがまるで箒のようだとも思いました。青年はさっと顔いろが青ざめ、たって一ぺんにジョバンニの方を見ました。けれどもジョバンニは生意気な、いやだいと思いながら、ぼんやりしてだまってしまいました。つりがねそうか野ぎくかの花が、いっぱいに舞いおりて来ました。あれが名高いアルビレオの観測所です窓の外から光りました。ジョバンニ、カムパネルラが、いきなり、喧嘩のようにかかっているのを見ました。そうすると、台の下にはもうあの銀河のはずれにさっきカムパネルラたちのあかりを水の流れる方へ押してやろうとした、ただもうそれっきりになって、いきなり走りだしました。ね、きれいでしょう、あんなに光っているのかと思ってまたよく気をつけて見ると、一人のせいの高いかたちが過ぎて行くときは、その紙切れが何だったか待ちかねたというふうにポケットに手をあげました。りんごをひろってきて、もう歩いているかということを知っている。まっくらな草や、いろいろな宝石が海のような青白い光を出す鋼玉やらでした。先生はしばらく困ったようすでしたが、もうザネリは向こうのひばの植わった家の中はすっかり明るくなりました。ジョバンニはおじぎをすると、水銀がみんな蒸発してしまうのでした。けれどもジョバンニは生意気な、いやだいと思いながら、ジョバンニを見おろして言いました。しかし雁の方が、ほんとうに待って心配して待っているかもわからずに、にわかにとなりの鳥捕りが、黄いろと青じろの、うつくしい燐光をあげて泣き出そうとしましたら、向こうの野原から、ぱっと白く明るくなりました。ええ、ええ、もうこの辺はひどい高原ですからうしろの方から、あの聞きなれた三〇六番の声が、ジョバンニの横の方へ行きました。けれどもいつかジョバンニの眼はまた泪でいっぱいになりました。あすこの岸のずうっと向こうにまるでけむりのような、がらんとしたくらいでした。',
eyecatch_url = 'https://image.shutterstock.com/shutterstock/photos/780784267/display_1500/stock-vector-continuous-line-drawing-happy-elderly-couple-walking-with-bag-vector-illustration-780784267.jpg';

INSERT INTO agency_articles SET
agency_id = '8',
title = 'やまだゆうき',
sentenses = '書画骨董といったから。不思議にもその鼓動の音が玄関に聞こえた時、先生は知らん顔で迎えました。私は人間らしいという言葉も意味も私には解らなかったけれども、その時ようやく悲しい気分に誘われる事ができなくなりました。Ｋは真宗の坊さんの懐から出るのではなかろうかと思われるのは非常の苦痛だともいって来ませんでした。死ぬのが厭になる事がしばしばあったのです。帰ってから以後の自分というものがほとんど存在していたとみえて、また超然と帰って行った。しかし決して復讐ではありませんが、お嬢さんが茶を持っていた。尿毒症が出ると、私の胸が一度に凝結したようにも思っていたのです。私は張合いが抜けたという記憶が、今度は取り戻そうという下心を持って来てくれと答えました。けれども父が何もできないように見えたのです。一時間の後、先生と奥さんから聞かされた危険を思い出した。しかし食事の時気分が悪いとは答えません。もし私が亡友に対すると同じような意味の書状が二、三度以上あった。無理をして、口へは出さないけれども、自分でそっちのほうを択んだのです。それが道学の余習なのか、もしくは好きな想像を描いて、妙な方向から岸の方へ歩いて行った。私はまた始めから猜疑の眼で叔父に対して少しも損われていないという昔風の言葉を並べたなら、二人の間柄として、ちらちらする文字を、眼で刺し通そうと試みたのです。私は結婚してから私は父の希望するような返事をしました。さっきまで傍にいて、どうしても脆いものですねと私がいった。それでは今厄介になってから、この電報はその前から両親の許可を得て、始めて私のいる所へ通ろうとするに足りないという事は、この顛末をまるで知らずにいました。そうすると過去が指し示す路を今まで通り積み重ねて行かせようとして私の心持がこう変ったのだろうかと考えました。私はその言葉のためにかいと父が聞いた。しかし教壇に立つ人の講義が、遠くの方で胡魔化されていた彼ですけれども、私が死んだのです。もし愛という不可思議なものに限られていました。けれども私は厭なのです。他を疑り始めたのは作さんが来てから、眼鏡の失くなったのに先生は苦笑しました。私は次の間に奥さんのいる事を知っているという事を聞いて、すぐ手拭で頭を包んで、封じ目を鄭寧に先生の命が流れていると信じていたとすれば、いつものように見えました。',
eyecatch_url = 'https://image.shutterstock.com/shutterstock/photos/1572286066/display_1500/stock-vector-sketch-of-businessmen-discussion-in-the-meeting-line-drawing-vector-illustration-1572286066.jpg';

INSERT INTO agency_articles SET
agency_id = '9',
title = 'よしざわりょう',
sentenses = '僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから僕、顔しかイケてないですから',
eyecatch_url = 'https://image.shutterstock.com/shutterstock/photos/1797930358/display_1500/stock-vector-line-drawing-vector-illustration-of-talking-young-people-1797930358.jpg';

INSERT INTO agency_articles SET
agency_id = '10',
title = 'かつて天才だった俺たちへ',
sentenses = 'かつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のwayかつて天才だった俺たちへ 神童だったあなたへ
似たような形に整えられて見る影もない
未だかつて無いほど入り組んだway
悩めるだけ悩め 時が来たらかませ
風任せ どっちみち茨のway',
eyecatch_url = 'https://image.shutterstock.com/shutterstock/photos/1762108322/display_1500/stock-vector-one-continuous-single-line-drawing-of-young-male-and-female-manager-join-run-competition-on-running-1762108322.jpg';

INSERT INTO agency_articles SET
agency_id = '11',
title = '白日',
sentenses='時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る時には誰かを知らず知らずのうちに
傷つけてしまったり、失ったりして初めて
犯した罪を知る',
eyecatch_url = 'https://image.shutterstock.com/shutterstock/photos/1797197872/display_1500/stock-vector-single-continuous-line-drawing-of-young-happy-businessman-walking-together-with-his-assistant-while-1797197872.jpg';

-- ダミーデータ50個追加
DROP TABLE IF EXISTS users_agencies; -- ユーザーとエージェンシーの中間テーブル
CREATE TABLE users_agencies (
  user_id INT,
  agency_id INT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY fk_user_id(user_id) REFERENCES users(id),
  FOREIGN KEY fk_agency_id(agency_id) REFERENCES agencies(id)
);

INSERT INTO users_agencies SET
user_id='1',
agency_id='1',
created_at='2020-01-01',
updated_at='2020-01-01';

INSERT INTO users_agencies SET
user_id='2',
agency_id='2',
created_at='2020-02-01',
updated_at='2020-02-01';

INSERT INTO users_agencies SET
user_id='3',
agency_id='2',
created_at='2020-02-01',
updated_at='2020-02-01';

INSERT INTO users_agencies SET
user_id='4',
agency_id='2',
created_at='2020-02-01',
updated_at='2020-02-01';

INSERT INTO users_agencies SET
user_id='3',
agency_id='3',
created_at='2020-03-01',
updated_at='2020-03-01';

INSERT INTO users_agencies SET
user_id='4',
agency_id='4',
created_at='2020-04-01',
updated_at='2020-04-01';

INSERT INTO users_agencies SET
user_id='5',
agency_id='5',
created_at='2020-05-01',
updated_at='2020-05-01';

INSERT INTO users_agencies SET
user_id='6',
agency_id='6',
created_at='2020-06-01',
updated_at='2020-06-01';

INSERT INTO users_agencies SET
user_id='7',
agency_id='7',
created_at='2020-07-01',
updated_at='2020-07-01';

INSERT INTO users_agencies SET
user_id='8',
agency_id='8',
created_at='2020-08-01',
updated_at='2020-08-01';

INSERT INTO users_agencies SET
user_id='9',
agency_id='9',
created_at='2020-09-01',
updated_at='2020-09-01';

INSERT INTO users_agencies SET
user_id='10',
agency_id='10',
created_at='2020-10-01',
updated_at='2020-10-01';

INSERT INTO users_agencies SET
user_id='11',
agency_id='11',
created_at='2020-11-01',
updated_at='2020-11-01';

INSERT INTO users_agencies SET
user_id='12',
agency_id='1',
created_at='2020-01-01',
updated_at='2020-01-01';

INSERT INTO users_agencies SET
user_id='13',
agency_id='2',
created_at='2020-02-01',
updated_at='2020-02-01';

INSERT INTO users_agencies SET
user_id='14',
agency_id='3',
created_at='2020-03-01',
updated_at='2020-03-01';

INSERT INTO users_agencies SET
user_id='15',
agency_id='4',
created_at='2020-04-01',
updated_at='2020-04-01';

INSERT INTO users_agencies SET
user_id='1',
agency_id='5',
created_at='2020-05-01',
updated_at='2020-05-01';

INSERT INTO users_agencies SET
user_id='2',
agency_id='6',
created_at='2020-06-01',
updated_at='2020-06-01';

INSERT INTO users_agencies SET
user_id='3',
agency_id='7',
created_at='2020-07-01',
updated_at='2020-07-01';

INSERT INTO users_agencies SET
user_id='4',
agency_id='8',
created_at='2020-08-01',
updated_at='2020-08-01';

INSERT INTO users_agencies SET
user_id='5',
agency_id='9',
created_at='2020-09-01',
updated_at='2020-09-01';

INSERT INTO users_agencies SET
user_id='6',
agency_id='10',
created_at='2020-10-01',
updated_at='2020-10-01';

INSERT INTO users_agencies SET
user_id='7',
agency_id='11',
created_at='2020-11-01',
updated_at='2020-11-01';

INSERT INTO users_agencies SET
user_id='8',
agency_id='1',
created_at='2020-01-01',
updated_at='2020-01-01';

INSERT INTO users_agencies SET
user_id='9',
agency_id='2',
created_at='2020-02-01',
updated_at='2020-02-01';

INSERT INTO users_agencies SET
user_id='10',
agency_id='3',
created_at='2020-03-01',
updated_at='2020-03-01';

INSERT INTO users_agencies SET
user_id='11',
agency_id='4',
created_at='2020-04-01',
updated_at='2020-04-01';

INSERT INTO users_agencies SET
user_id='12',
agency_id='5',
created_at='2020-05-01',
updated_at='2020-05-01';

INSERT INTO users_agencies SET
user_id='13',
agency_id='6',
created_at='2020-06-01',
updated_at='2020-06-01';

INSERT INTO users_agencies SET
user_id='14',
agency_id='7',
created_at='2020-07-01',
updated_at='2020-07-01';

INSERT INTO users_agencies SET
user_id='15',
agency_id='8',
created_at='2020-08-01',
updated_at='2020-08-01';

INSERT INTO users_agencies SET
user_id='1',
agency_id='9',
created_at='2020-09-01',
updated_at='2020-09-01';

INSERT INTO users_agencies SET
user_id='2',
agency_id='10',
created_at='2020-10-01',
updated_at='2020-10-01';

INSERT INTO users_agencies SET
user_id='3',
agency_id='11',
created_at='2020-11-01',
updated_at='2020-11-01';

INSERT INTO users_agencies SET
user_id='4',
agency_id='1',
created_at='2020-01-01',
updated_at='2020-01-01';

INSERT INTO users_agencies SET
user_id='5',
agency_id='2',
created_at='2020-02-01',
updated_at='2020-02-01';

INSERT INTO users_agencies SET
user_id='6',
agency_id='3',
created_at='2020-03-01',
updated_at='2020-03-01';

INSERT INTO users_agencies SET
user_id='7',
agency_id='4',
created_at='2020-04-01',
updated_at='2020-04-01';

INSERT INTO users_agencies SET
user_id='8',
agency_id='5',
created_at='2020-05-01',
updated_at='2020-05-01';

INSERT INTO users_agencies SET
user_id='9',
agency_id='6',
created_at='2020-06-01',
updated_at='2020-06-01';

INSERT INTO users_agencies SET
user_id='10',
agency_id='7',
created_at='2020-07-01',
updated_at='2020-07-01';

INSERT INTO users_agencies SET
user_id='11',
agency_id='8',
created_at='2020-08-01',
updated_at='2020-08-01';

INSERT INTO users_agencies SET
user_id='12',
agency_id='9',
created_at='2020-09-01',
updated_at='2020-09-01';

INSERT INTO users_agencies SET
user_id='13',
agency_id='10',
created_at='2020-10-01',
updated_at='2020-10-01';

INSERT INTO users_agencies SET
user_id='14',
agency_id='11',
created_at='2020-11-01',
updated_at='2020-11-01';

INSERT INTO users_agencies SET
user_id='15',
agency_id='1',
created_at='2020-01-01',
updated_at='2020-01-01';

INSERT INTO users_agencies SET
user_id='1',
agency_id='11',
created_at='2020-11-01',
updated_at='2020-11-01';

INSERT INTO users_agencies SET
user_id='2',
agency_id='10',
created_at='2020-10-01',
updated_at='2020-10-01';

INSERT INTO users_agencies SET
user_id='3',
agency_id='9',
created_at='2020-09-01',
updated_at='2020-09-01';

INSERT INTO users_agencies SET
user_id='4',
agency_id='7',
created_at='2020-07-01',
updated_at='2020-07-01';

INSERT INTO users_agencies SET
user_id='5',
agency_id='6',
created_at='2020-06-01',
updated_at='2020-06-01';



DROP TABLE IF EXISTS industries;

CREATE TABLE industries (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  industry VARCHAR(255) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO industries (industry) VALUES
("IT"),
("広告"),
("営業"),
("コンサル"),
("接客"),
("医療");

DROP TABLE IF EXISTS agency_type;

CREATE TABLE agency_type (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  agency_type VARCHAR(255) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO agency_type (agency_type) VALUES
("文系に強い"),
("理系に強い"),
("ベンチャーが多い"),
("カジュアル"),
("しっかり");

DROP TABLE IF EXISTS agencies_industries;

CREATE TABLE agencies_industries (
  agency_id INT,
  industry_id INT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY fk_agency_id(agency_id) REFERENCES agencies(id),
  FOREIGN KEY fk_industory_id(industry_id) REFERENCES industries(id)
);

INSERT INTO agencies_industries (agency_id, industry_id) VALUES
(1, 1),
(2, 2),
(3, 1),
(3, 3),
(4, 4),
(4, 5),
(5, 3),
(6, 2),
(7, 4);


DROP TABLE IF EXISTS agencies_types; -- 中間テーブル

CREATE TABLE agencies_types (
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  agency_id INT,
  type_id INT,
  FOREIGN KEY fk_agency_id(agency_id) REFERENCES agencies(id),
  FOREIGN KEY fk_type_id(type_id) REFERENCES agency_type(id)
);

INSERT INTO agencies_types (agency_id, type_id) VALUES
(1, 1),
(2, 2),
(3, 1),
(3, 3),
(4, 4),
(4, 1),
(5, 3),
(6, 2),
(7, 4);

DROP TABLE IF EXISTS managers;

CREATE TABLE managers (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  is_representative BOOLEAN NOT NULL,
  agency_id INT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY fk_agency_id(agency_id) REFERENCES agencies(id)
);

-- ダミーデータ11個分
DROP TABLE IF EXISTS contracts;
CREATE TABLE contracts ( -- 契約情報のテーブル v
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, -- 契約id
  agency_id INT NOT NULL, -- エージェンシーid 外部キー成約
  contract_year_month DATE NOT NUll, -- 契約年月 ex) 2022-3-1 契約年月初めの日が入る
  claim_year_month DATE NOT NULL, -- 支払い期日 ex) 2022-4-30
  request_amounts INT NOT NULL, -- 請求金額
  student_unit_price INT NOT NULl, -- 学生単価
  paied BOOLEAN DEFAULT FALSE, -- 支払われたか
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY fk_agency_id(agency_id) REFERENCES agencies(id)
);

INSERT INTO contracts SET
agency_id = '1',
contract_year_month = '2020-01-01',
claim_year_month = '2020-02-28',
request_amounts = '5000',
student_unit_price = '1000';

INSERT INTO contracts SET
agency_id = '2',
contract_year_month = '2020-02-01',
claim_year_month = '2020-03-31',
request_amounts = '6000',
student_unit_price = '1000';

INSERT INTO contracts SET
agency_id = '3',
contract_year_month = '2020-03-01',
claim_year_month = '2020-04-30',
request_amounts = '4000',
student_unit_price = '1000';

INSERT INTO contracts SET
agency_id = '4',
contract_year_month = '2020-04-01',
claim_year_month = '2020-05-31',
request_amounts = '4000',
student_unit_price = '1000';

INSERT INTO contracts SET
agency_id = '5',
contract_year_month = '2020-05-01',
claim_year_month = '2020-06-30',
request_amounts = '4000',
student_unit_price = '1000';

INSERT INTO contracts SET
agency_id = '6',
contract_year_month = '2020-06-01',
claim_year_month = '2020-07-31',
request_amounts = '5000',
student_unit_price = '1000';

INSERT INTO contracts SET
agency_id = '7',
contract_year_month = '2020-07-01',
claim_year_month = '2020-08-31',
request_amounts = '5000',
student_unit_price = '1000';

INSERT INTO contracts SET
agency_id = '8',
contract_year_month = '2020-08-01',
claim_year_month = '2020-09-30',
request_amounts = '4000',
student_unit_price = '1000';

INSERT INTO contracts SET
agency_id = '9',
contract_year_month = '2020-09-01',
claim_year_month = '2020-10-31',
request_amounts = '5000',
student_unit_price = '1000';

INSERT INTO contracts SET
agency_id = '10',
contract_year_month = '2020-10-01',
claim_year_month = '2020-11-30',
request_amounts = '5000',
student_unit_price = '1000';

INSERT INTO contracts SET
agency_id = '11',
contract_year_month = '2020-11-01',
claim_year_month = '2020-12-31',
request_amounts = '5000',
student_unit_price = '1000';

DROP TABLE IF EXISTS administorators;
CREATE TABLE administorators (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- INSERT INTO administorators
-- SET
-- name = 'サンプル太郎',
-- email = 'test@posse-ap.com',
-- password = password_hash('password', PASSWORD_DEFAULT);
