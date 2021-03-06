INSERT INTO 商品項目 (商品項目id, 商品項目名)
VALUES (00001, '飲み物'),
(00002, '食べ物'),
(00003, '雑貨'),
(00004, 'レジ袋');

INSERT INTO 商品 (商品id, 商品名, 商品項目id, 販売価格, 基礎軽減税率可否)
VALUES (000001, 'いろはす天然水', 00001, 100, 1),
(000002, 'ツナマヨおにぎり', 00002, 120, 1),
(000003, 'ファブリーズ', 00003, 400, 0),
(000004, 'レジ袋', 00004, 3, 0);

INSERT INTO 店舗 (店舗id, 郵便番号, 番地, 電話番号, 店舗名)
VALUES (000000001, '000-0000', '日本橋1-1-1', '000-0000-0000',  '日本橋店');

INSERT INTO レジ (レジid, レジ名)
VALUES (001, 'レジ#1');

INSERT INTO 従業員 (従業員id, 従業員名)
VALUES (0001, '大城宇啓');

INSERT INTO 支払方法 (支払方法id, 支払方法名)
VALUES (01, '現金支払'),
(02, 'PayPay支払');

INSERT INTO 伝票 (伝票番号, 店舗id, レジid, 従業員id, 支払方法id, 売上日時, イートイン可否)
VALUES (00000001, 000000001, 0001, 001, 02, '2022-04-01 19:00', 0);

INSERT INTO  購入物 (購入物id, 商品id, 伝票番号, 値引額)
VALUES (0001, 000001, 00000001, 10),
(0002, 000002, 00000001, 0),
(0003, 000003, 00000001, 0),
(0004, 000004, 00000001, 0);