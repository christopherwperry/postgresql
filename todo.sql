CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at timestamptz NOT NULL,
  completed_at timestamptz NULL
  );

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
('Make Lunch', 'Make a sandwich, cut carrots, and pack in lunchbox', 5, '2017-09-01 09:00:00', '2017-09-01 011:00:00');

INSERT INTO todos (title, details, priority, created_at) VALUES
('Wash Car', 'Make a sandwich, cut carrots, and pack in lunchbox', 5, '2017-09-01 09:00:00'),
('Clean Litter Box', 'Use plastic bag and make sure to throw away in garbage outside', 2, '2017-09-02 10:30:00'),
('Clean Bathroom', 'Use bleach to clean the shower this time', 8, '2017-09-04 21:05:13'),
('Go grocery shopping', 'Need to get food items for Mom and Jackie when they visit in two weeks', 5, '2017-09-05 11:39:00');

SELECT title FROM todos WHERE completed_at IS NULL;
SELECT title FROM todos WHERE priority > 1;
UPDATE todos SET completed_at = '2017-09-05 11:39:00' WHERE id = 4;
DELETE FROM todos WHERE completed_at IS NOT NULL;
