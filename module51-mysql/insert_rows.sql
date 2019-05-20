
INSERT INTO system_affiliations VALUES
  ('BJC','Non-Religious'),
  ('Mercy','Catholic');

INSERT INTO hospitals VALUES
('BJH','St. Louis','BJC',1243),
('MoBap','Ladue','BJC',443),
('Mercy STL','Ladue','Mercy',1120);

INSERT INTO hospital_services VALUES
('BJH','IP'),
('BJH','OP'),
('BJH','ED'),
('BJH','Clinic'),
('MoBap','IP'),
('MoBap','OP'),
('MoBap','ED'),
('MoBap','Clinic'),
('Mercy STL','IP'),
('Mercy STL','OP'),
('Mercy STL','ED');

INSERT INTO ed_visits VALUES
('BJH',2016,72348),
('BJH',2017,81221),
('MoBap',2016,42983),
('MoBap',2017,43921),
('Mercy STL',2016,51932),
('Mercy STL',2017,52221);
