CREATE TABLE "税率" (
    "イートイン可否" INT PRIMARY KEY
    , "基礎軽減税率可否" INT PRIMARY KEY
    , "税率" DECIMAL
) ;

CREATE TABLE "伝票" (
    "伝票番号" INT PRIMARY KEY
    , "店舗id" INT
    , "売上日時" DATE
    , "レジid" INT
    , "従業員id" INT
    , "イートイン可否" INT
) ;

CREATE TABLE "商品" (
    "商品id" INT PRIMARY KEY
    , "商品名" VARCHAR(50)
    , "商品項目id" INT
    , "販売価格" INT
    , "基礎軽減税率可否" INT
) ;

CREATE TABLE "店舗" (
    "店舗id" INT PRIMARY KEY
    , "郵便番号" VARCHAR(20)
    , "番地" VARCHAR(50)
    , "備考" VARCHAR(20)
) ;

CREATE TABLE "従業員" (
    "従業員id" INT PRIMARY KEY
    , "従業員名" VARCHAR(20)
) ;

CREATE TABLE "レジ" (
    "レジid" INT PRIMARY KEY
    , "レジ名" VARCHAR(20)
) ;