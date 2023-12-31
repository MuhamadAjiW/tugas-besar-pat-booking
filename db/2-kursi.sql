CREATE TYPE status_enum AS ENUM ('OPEN', 'ON GOING', 'BOOKED');

CREATE TABLE IF NOT EXISTS kursi (
    kursi_id INT NOT NULL,
    acara_id INT NOT NULL,
    status status_enum NOT NULL DEFAULT 'OPEN',
    PRIMARY KEY (kursi_id, acara_id),
    FOREIGN KEY(acara_id) REFERENCES acara(acara_id)
);


-- Dummy data for kursi table
INSERT INTO kursi (kursi_id, acara_id, status) VALUES
  (1, 1, 'OPEN'),
  (2, 1, 'OPEN'),
  (3, 1, 'OPEN'),
  (4, 1, 'OPEN'),
  (5, 1, 'OPEN'),
  (6, 1, 'OPEN'),
  (7, 1, 'OPEN'),
  (8, 1, 'OPEN'),
  (9, 1, 'OPEN'),
  (10, 1, 'OPEN'),
  (1, 2, 'OPEN'),
  (2, 2, 'OPEN'),
  (3, 2, 'OPEN'),
  (4, 2, 'OPEN'),
  (5, 2, 'OPEN'),
  (6, 2, 'OPEN'),
  (7, 2, 'OPEN'),
  (8, 2, 'OPEN'),
  (9, 2, 'OPEN'),
  (10, 2, 'OPEN'),
  (1, 3, 'OPEN'),
  (2, 3, 'OPEN'),
  (3, 3, 'OPEN'),
  (4, 3, 'OPEN'),
  (5, 3, 'OPEN'),
  (6, 3, 'OPEN'),
  (7, 3, 'OPEN'),
  (8, 3, 'OPEN'),
  (9, 3, 'OPEN'),
  (10, 3, 'OPEN'),
  (1, 4, 'OPEN'),
  (2, 4, 'OPEN'),
  (3, 4, 'OPEN'),
  (4, 4, 'OPEN'),
  (5, 4, 'OPEN'),
  (6, 4, 'OPEN'),
  (7, 4, 'OPEN'),
  (8, 4, 'OPEN'),
  (9, 4, 'OPEN'),
  (10, 4, 'OPEN'),
  (1, 5, 'OPEN'),
  (2, 5, 'OPEN'),
  (3, 5, 'OPEN'),
  (4, 5, 'OPEN'),
  (5, 5, 'OPEN'),
  (6, 5, 'OPEN'),
  (7, 5, 'OPEN'),
  (8, 5, 'OPEN'),
  (9, 5, 'OPEN'),
  (10, 5, 'OPEN'),
  (1, 6, 'OPEN'),
  (2, 6, 'OPEN'),
  (3, 6, 'OPEN'),
  (4, 6, 'OPEN'),
  (5, 6, 'OPEN'),
  (6, 6, 'OPEN'),
  (7, 6, 'OPEN'),
  (8, 6, 'OPEN'),
  (9, 6, 'OPEN'),
  (10, 6, 'OPEN'),
  (1, 7, 'OPEN'),
  (2, 7, 'OPEN'),
  (3, 7, 'OPEN'),
  (4, 7, 'OPEN'),
  (5, 7, 'OPEN'),
  (6, 7, 'OPEN'),
  (7, 7, 'OPEN'),
  (8, 7, 'OPEN'),
  (9, 7, 'OPEN'),
  (10, 7, 'OPEN'),
  (1, 8, 'OPEN'),
  (2, 8, 'OPEN'),
  (3, 8, 'OPEN'),
  (4, 8, 'OPEN'),
  (5, 8, 'OPEN'),
  (6, 8, 'OPEN'),
  (7, 8, 'OPEN'),
  (8, 8, 'OPEN'),
  (9, 8, 'OPEN'),
  (10, 8, 'OPEN'),
  (1, 9, 'OPEN'),
  (2, 9, 'OPEN'),
  (3, 9, 'OPEN'),
  (4, 9, 'OPEN'),
  (5, 9, 'OPEN'),
  (6, 9, 'OPEN'),
  (7, 9, 'OPEN'),
  (8, 9, 'OPEN'),
  (9, 9, 'OPEN'),
  (10, 9, 'OPEN'),
  (1, 10, 'OPEN'),
  (2, 10, 'OPEN'),
  (3, 10, 'OPEN'),
  (4, 10, 'OPEN'),
  (5, 10, 'OPEN'),
  (6, 10, 'OPEN'),
  (7, 10, 'OPEN'),
  (8, 10, 'OPEN'),
  (9, 10, 'OPEN'),
  (10, 10, 'OPEN');
  