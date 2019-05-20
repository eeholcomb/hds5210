DROP TABLE IF EXISTS hospital_services;
DROP TABLE IF EXISTS ed_visits;
DROP TABLE IF EXISTS hospitals;
DROP TABLE IF EXISTS system_affiliations;


CREATE TABLE system_affiliations (
    system_name VARCHAR(255) NOT NULL,
    affiliation VARCHAR(255) NOT NULL,

    PRIMARY KEY (system_name)
);


CREATE TABLE hospitals (
    hospital_name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    system_name VARCHAR(255) NOT NULL,
    beds INT NOT NULL,

    PRIMARY KEY (hospital_name),

    FOREIGN KEY (system_name)
       REFERENCES system_affiliations(system_name)

);


CREATE TABLE ed_visits (
    hospital_name VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    ed_visits INT NOT NULL,

    PRIMARY KEY (hospital_name, year),

    FOREIGN KEY (hospital_name)
       REFERENCES hospitals(hospital_name)
);


CREATE TABLE hospital_services (
    hospital_name VARCHAR(255) NOT NULL,
    services VARCHAR(255) NOT NULL,

    PRIMARY KEY (hospital_name, services),

    FOREIGN KEY (hospital_name)
       REFERENCES hospitals(hospital_name)
);
