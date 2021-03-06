INSERT INTO tb_user(id, email, first_name, last_name, mobile_number, password, username)
VALUES (1, 'yusuf@gmail.com','Yusuf','aja','08758234','yusuf_1','yusufoke');

INSERT INTO tb_agency(id, code, details, name, owner_user_id) VALUES 
(1, 'TBK','PT Tanjung Bakong','BUS KOTa',1),


INSERT INTO tb_bus(id, capacity, code, make, agency_id) VALUES 
(1, 20,'DMD','32',1),
(2, 15,'BDM','21',1);

INSERT INTO tb_role (id, name) VALUES 
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

INSERT INTO tb_user_roles (user_id, role_id) VALUES
(1, 1);

INSERT INTO tb_stop (id, code, detail, name) VALUES
(1, '1-2', 'Medan', 'Medan 1-2'),
(2, '1-8', 'Palembang', 'Palembang 1-3'),
(3, '1-3', 'ACEH', 'ACEH 1-2'),
(4, '1-2', 'LAMPUNG', 'LAMPUNG 1-5');

INSERT INTO tb_trip (id, fare, journey_time, agency_id, bus_id, dest_stop_id, source_stop_id) VALUES
(1, 16000, 15, 1, 1, 1, 3),
(2, 16000, 2, 2, 2, 5, 2),
(3, 16000, 3, 3, 2, 2, 3),
(4, 16000, 5, 2, 1, 4, 4),
(5, 16000, 4, 2, 2, 2, 5),
(6, 16000, 7, 3, 1, 3, 5);