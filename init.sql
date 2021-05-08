CREATE DATABASE kairongtao_shop ;
USE kairongtao_shop ;

CREATE TABLE brand (
    brand_id    VARCHAR(36) NOT NULL,
    brand_name  VARCHAR(60) NOT NULL
);

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
('bnd001', 'Nike'),
('bnd002', 'Adidas'),
('bnd003', 'PUMA');

ALTER TABLE brand ADD CONSTRAINT brand_pk PRIMARY KEY ( brand_id );

CREATE TABLE color (
    color_id    VARCHAR(36) NOT NULL,
    color_name  VARCHAR(30) NOT NULL,
    color_code  CHAR(7)
);

INSERT INTO `color` (`color_id`, `color_name`, `color_code`) VALUES
('col001', 'black', NULL),
('col002', 'yellow', '#FDD017'),
('col003', 'arctic orange', '#FE5E12'),
('col004', 'white', NULL),
('col005', 'blue', '#187bcd'),
('col006', 'green', '#197419'),
('col007', 'mint', '#8FDDDF'),
('col008', 'navy', '#152238'),
('col009', 'red', '#9E1A1A'),
('col010', 'cream', '#F8F0C6');

ALTER TABLE color ADD CONSTRAINT color_pk PRIMARY KEY ( color_id );

CREATE TABLE product (
    product_id      VARCHAR(36) NOT NULL,
    product_name    VARCHAR(80) NOT NULL,
    price           DECIMAL(7, 2) NOT NULL,
    release_date    DATE NOT NULL,
    description     VARCHAR(800),
    brand_brand_id  VARCHAR(36) NOT NULL
);

INSERT INTO `product` (`product_id`, `product_name`, `price`, `release_date`, `description`, `brand_brand_id`) VALUES
("prd001", "NMD_R1 PK", "5800.00", "2020-06-21", "The adidas NMD is a modern lifestyle shoe, built with cutting-edge technologies that pay homage to the lifestyle adidas archive shoes like the Micro Pacer, the Rising Star and the Boston Super. Inspired and empowered by the past, NMD looks forward towards a new futureone that is always evolving for creators on the move.", "bnd002"),
("prd002", "ADILETTE AQUA SLIDE", "700.00", "2020-09-24", "An iconic style for slick surfaces. These quick-drying slides flash 3-Stripes across the bandage-style upper. Plush cushioning in the footbed provides the ultimate in comfort in and out of the shower.", "bnd002"),
("prd003", "ADIDAS STAN SMITH", "3200.00", "2021-02-23", "For 50 years, the adidas Stan Smith Shoes have been a staple on the courts and on the streets. Their minimalist style is the very definition of effortless cool. But even icons have to change to stay rooted in the present, which is why this version of the trainers is created with recycled materials. It's part of our effort and commitment to help end plastic waste.", "bnd002"),
("prd004", "AIR JORDAN 1 MID", "4200.00", "2020-05-18", "The Air Jordan 1 Mid is inspired by the first AJ1 and gives retro Jordan fans the opportunity to follow in the footsteps of their greatness. Bright colors add clean parts of classic materials and add some freshness to familiar designs.", "bnd001"),
("prd005", "AIR JORDAN 1 LOW", "3600.00", "2021-01-07", "The Air Jordan 1 Low is inspired by the original released in 1985 with a clean, classic look that is familiar. But always fresh Ready to produce in a casual style. With a unique design that fits in every outfit and never goes out of fashion.", "bnd001"),
("prd006", "NIKE VICTORI ONE", "1100.00", "2020-02-28", "The Nike Victori One takes a classic design from a must-have to an indispensable perfection on the beach and in the stands. This pair is lightweight and comfortable to wear. While improving the foam to make it soft and responsive The contoured traction pattern helps keep the foot in place. At the same time, the new padded headband looks great with both look and feel.", "bnd001"),
("prd007", "PUMA SUEDE CLASSIC", "2999.00", "2020-02-18", "Suede Classic is the most famous and popular shoe from Puma. It is one of the shoes that have created the success of the German Sport brand. It has been a part of the street community since the '80s and has been a part of making global history as well. For the Suede Classic +, the premium suede upper gives a classic look. It still uses the narrow structure of the popular model Suede.", "bnd003"),
("prd008", "PUMA SOFTRIDE SANDAL", "1999.00", "2020-12-05", "Softride Sandal is a comfortable and lightweight shoe. The middle shoe uses soft ride technology. Synthetic nubuck leather upper is embellished with large low-relief PUMA text. Velcro ankle strap decoration The sole has a design that wraps around the body. Outsole with ribbed rubber pieces, forefoot and heel for enhanced traction. Color: Puma Black-CASTLEROCK Materials: Synthetic nubuck leather.", "bnd003");


ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY ( product_id );

CREATE TABLE product_image (
    image_id            VARCHAR(36) NOT NULL,
    image               VARCHAR(60) NOT NULL,
    product_product_id  VARCHAR(36)
);

INSERT INTO `product_image` (`image_id`, `image`, `product_product_id`) VALUES
('img001', '1_NMD_R1_PK_1.jpg', 'prd001'),
('img002', '2_NMD_R1_PK_2.jpg', 'prd001'),
('img003', '3_ADILETTE AQUA SLIDE_1.jpg', 'prd002'),
('img004', '4_ADILETTE AQUA SLIDE_2.jpg', 'prd002'),
('img005', '5_ADILETTE AQUA SLIDE_3.jpg', 'prd002' ),
('img006', '6_ADIDAS STAN SMITH_1.jpg', 'prd003'),
('img007', '7_ADIDAS STAN SMITH_2.jpg', 'prd003'),
('img008', '8_AIR JORDAN 1 MID_1.jfif', 'prd004'),
('img009', '9_AIR JORDAN 1 MID_2.jfif', 'prd004'),
('img010', '10_AIR JORDAN 1 MID_3.jfif', 'prd004'),
('img011', '11_AIR JORDAN 1 LOW_1.jfif', 'prd005'),
('img012', '12_AIR JORDAN 1 LOW_2.jfif', 'prd005'),
('img013', '13_NIKE VICTORI ONE_1.jfif', 'prd006'),
('img014', '14_NIKE VICTORI ONE_2.jfif', 'prd006'),
('img015', '15_PUMA SUEDE CLASSIC_1.jfif', 'prd007'),
('img016', '16_PUMA SUEDE CLASSIC_2.jfif', 'prd007'),
('img017', '17_PUMA SUEDE CLASSIC_3.jpg', 'prd007'),
('img018', '18_PUMA SOFTRIDE SANDAL_1.jfif', 'prd008'),
('img019', '19_PUMA SOFTRIDE SANDAL_2.jfif', 'prd008'),
('img020', '20_PUMA SOFTRIDE SANDAL_3.jfif', 'prd008');

ALTER TABLE product_image ADD CONSTRAINT product_image_pk PRIMARY KEY ( image_id );

CREATE TABLE product_size (
    size_id       VARCHAR(36) NOT NULL,
    product_size  VARCHAR(16)
);

INSERT INTO `product_size` (`size_id`, `product_size`) VALUES
('siz001', 'UK 7'),
('siz002', 'UK 7.5'),
('siz003', 'UK 8'),
('siz004', 'UK 8.5'),
('siz005', 'UK 9'),
('siz006', 'UK 9.5');

ALTER TABLE product_size ADD CONSTRAINT product_size_pk PRIMARY KEY ( size_id );

CREATE TABLE quantity (
    amount                INTEGER NOT NULL,
    product_product_id    VARCHAR(36) NOT NULL,
    color_color_id        VARCHAR(36) NOT NULL,
    product_size_size_id  VARCHAR(36) NOT NULL
);

INSERT INTO `quantity` (`amount`, `product_product_id`, `color_color_id`, `product_size_size_id`) VALUES
(20, 'prd001', 'col001', 'siz001'),
(20, 'prd001', 'col001', 'siz002'),
(20, 'prd001', 'col001', 'siz003'),
(20, 'prd001', 'col001', 'siz004'),
(20, 'prd001', 'col001', 'siz005'),
(20, 'prd001', 'col001', 'siz006'),

(20, 'prd001', 'col002', 'siz001'),
(20, 'prd001', 'col002', 'siz002'),
(20, 'prd001', 'col002', 'siz003'),
(20, 'prd001', 'col002', 'siz004'),
(20, 'prd001', 'col002', 'siz005'),
(20, 'prd001', 'col002', 'siz006'),

(20, 'prd002', 'col004', 'siz001'),
(20, 'prd002', 'col004', 'siz002'),
(20, 'prd002', 'col004', 'siz003'),
(20, 'prd002', 'col004', 'siz004'),
(20, 'prd002', 'col004', 'siz005'),
(20, 'prd002', 'col004', 'siz006'),

(20, 'prd002', 'col001', 'siz001'),
(20, 'prd002', 'col001', 'siz002'),
(20, 'prd002', 'col001', 'siz003'),
(20, 'prd002', 'col001', 'siz004'),
(20, 'prd002', 'col001', 'siz005'),
(20, 'prd002', 'col001', 'siz006'),

(20, 'prd002', 'col005', 'siz001'),
(20, 'prd002', 'col005', 'siz002'),
(20, 'prd002', 'col005', 'siz003'),
(20, 'prd002', 'col005', 'siz004'),
(20, 'prd002', 'col005', 'siz005'),
(20, 'prd002', 'col005', 'siz006'),

(20, 'prd003', 'col006', 'siz001'),
(20, 'prd003', 'col006', 'siz002'),
(20, 'prd003', 'col006', 'siz003'),
(20, 'prd003', 'col006', 'siz004'),
(20, 'prd003', 'col006', 'siz005'),
(20, 'prd003', 'col006', 'siz006'),

(20, 'prd003', 'col008', 'siz001'),
(20, 'prd003', 'col008', 'siz002'),
(20, 'prd003', 'col008', 'siz003'),
(20, 'prd003', 'col008', 'siz004'),
(20, 'prd003', 'col008', 'siz005'),
(20, 'prd003', 'col008', 'siz006'),

(20, 'prd004', 'col003', 'siz001'),
(20, 'prd004', 'col003', 'siz002'),
(20, 'prd004', 'col003', 'siz003'),
(20, 'prd004', 'col003', 'siz004'),
(20, 'prd004', 'col003', 'siz005'),
(20, 'prd004', 'col003', 'siz006'),

(20, 'prd004', 'col009', 'siz001'),
(20, 'prd004', 'col009', 'siz002'),
(20, 'prd004', 'col009', 'siz003'),
(20, 'prd004', 'col009', 'siz004'),
(20, 'prd004', 'col009', 'siz005'),
(20, 'prd004', 'col009', 'siz006'),

(20, 'prd004', 'col007', 'siz001'),
(20, 'prd004', 'col007', 'siz002'),
(20, 'prd004', 'col007', 'siz003'),
(20, 'prd004', 'col007', 'siz004'),
(20, 'prd004', 'col007', 'siz005'),
(20, 'prd004', 'col007', 'siz006'),

(20, 'prd005', 'col003', 'siz001'),
(20, 'prd005', 'col003', 'siz002'),
(20, 'prd005', 'col003', 'siz003'),
(20, 'prd005', 'col003', 'siz004'),
(20, 'prd005', 'col003', 'siz005'),
(20, 'prd005', 'col003', 'siz006'),

(20, 'prd005', 'col004', 'siz001'),
(20, 'prd005', 'col004', 'siz002'),
(20, 'prd005', 'col004', 'siz003'),
(20, 'prd005', 'col004', 'siz004'),
(20, 'prd005', 'col004', 'siz005'),
(20, 'prd005', 'col004', 'siz006'),

(20, 'prd006', 'col004', 'siz001'),
(20, 'prd006', 'col004', 'siz002'),
(20, 'prd006', 'col004', 'siz003'),
(20, 'prd006', 'col004', 'siz004'),
(20, 'prd006', 'col004', 'siz005'),
(20, 'prd006', 'col004', 'siz006'),

(20, 'prd006', 'col001', 'siz001'),
(20, 'prd006', 'col001', 'siz002'),
(20, 'prd006', 'col001', 'siz003'),
(20, 'prd006', 'col001', 'siz004'),
(20, 'prd006', 'col001', 'siz005'),
(20, 'prd006', 'col001', 'siz006'),

(20, 'prd007', 'col001', 'siz001'),
(20, 'prd007', 'col001', 'siz002'),
(20, 'prd007', 'col001', 'siz003'),
(20, 'prd007', 'col001', 'siz004'),
(20, 'prd007', 'col001', 'siz005'),
(20, 'prd007', 'col001', 'siz006'),

(20, 'prd007', 'col005', 'siz001'),
(20, 'prd007', 'col005', 'siz002'),
(20, 'prd007', 'col005', 'siz003'),
(20, 'prd007', 'col005', 'siz004'),
(20, 'prd007', 'col005', 'siz005'),
(20, 'prd007', 'col005', 'siz006'),

(20, 'prd007', 'col002', 'siz001'),
(20, 'prd007', 'col002', 'siz002'),
(20, 'prd007', 'col002', 'siz003'),
(20, 'prd007', 'col002', 'siz004'),
(20, 'prd007', 'col002', 'siz005'),
(20, 'prd007', 'col002', 'siz006'),

(20, 'prd008', 'col004', 'siz001'),
(20, 'prd008', 'col004', 'siz002'),
(20, 'prd008', 'col004', 'siz003'),
(20, 'prd008', 'col004', 'siz004'),
(20, 'prd008', 'col004', 'siz005'),
(20, 'prd008', 'col004', 'siz006'),

(20, 'prd008', 'col010', 'siz001'),
(20, 'prd008', 'col010', 'siz002'),
(20, 'prd008', 'col010', 'siz003'),
(20, 'prd008', 'col010', 'siz004'),
(20, 'prd008', 'col010', 'siz005'),
(20, 'prd008', 'col010', 'siz006'),

(20, 'prd008', 'col001', 'siz001'),
(20, 'prd008', 'col001', 'siz002'),
(20, 'prd008', 'col001', 'siz003'),
(20, 'prd008', 'col001', 'siz004'),
(20, 'prd008', 'col001', 'siz005'),
(20, 'prd008', 'col001', 'siz006');

ALTER TABLE product
    ADD CONSTRAINT product_brand_fk FOREIGN KEY ( brand_brand_id )
        REFERENCES brand ( brand_id );

ALTER TABLE product_image
    ADD CONSTRAINT product_image_product_fk FOREIGN KEY ( product_product_id )
        REFERENCES product ( product_id );

ALTER TABLE quantity
    ADD CONSTRAINT quantity_color_fk FOREIGN KEY ( color_color_id )
        REFERENCES color ( color_id );

ALTER TABLE quantity
    ADD CONSTRAINT quantity_product_fk FOREIGN KEY ( product_product_id )
        REFERENCES product ( product_id );

ALTER TABLE quantity
    ADD CONSTRAINT quantity_product_size_fk FOREIGN KEY ( product_size_size_id )
        REFERENCES product_size ( size_id );

