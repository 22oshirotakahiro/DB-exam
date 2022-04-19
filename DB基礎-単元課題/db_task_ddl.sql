CREATE TABLE 商品項目 (
    商品項目id INT PRIMARY KEY,
    商品項目名 VARCHAR(50),
    備考1 VARCHAR(100),
    備考2 VARCHAR(100),
    備考3 VARCHAR(100),
    備考4 VARCHAR(100)
);

CREATE TABLE 商品 (
    商品id INT PRIMARY KEY,
    商品項目id INT REFERENCES 商品項目(商品項目id),
    販売価格 INT,
    基礎軽減税率可否 INT
);

CREATE TABLE 店舗 (
    店舗id INT PRIMARY KEY,
    郵便番号 VARCHAR(10),
    番地 VARCHAR(50),
    備考1 VARCHAR(100),
    電話番号 VARCHAR(20),
    備考2 VARCHAR(100)
);

CREATE TABLE レジ (
    レジid INT PRIMARY KEY,
    レジ名 VARCHAR(20)
);

CREATE TABLE 従業員 (
    従業員id INT PRIMARY KEY,
    従業員名 VARCHAR(30)
);

CREATE TABLE 支払方法 (
    支払方法id INT PRIMARY KEY,
    支払方法名 VARCHAR(30),
    備品1 VARCHAR(100),
    備品2 VARCHAR(100)
);

CREATE TABLE 伝票 (
    伝票番号 INT PRIMARY KEY,
    店舗id INT REFERENCES 店舗(店舗id),
    レジid INT REFERENCES レジ(レジid),
    従業員id INT REFERENCES 従業員(従業員id),
    支払方法id INT REFERENCES 支払方法(支払方法id),
    売上日時 DATE,
    イートイン可否 INT
);

CREATE TABLE 税率 (
    イートイン可否 INT,
    基礎軽減税率可否 INT,
    軽減税率可否 INT,
    税率 DECIMAL,
    PRIMARY KEY(イートイン可否, 基礎軽減税率可否)
);

CREATE TABLE 購入物 (
    購入物id INT PRIMARY KEY,
    商品id INT REFERENCES 商品(商品id),
    伝票番号 INT REFERENCES 伝票(伝票番号),
    値引額 INT
);