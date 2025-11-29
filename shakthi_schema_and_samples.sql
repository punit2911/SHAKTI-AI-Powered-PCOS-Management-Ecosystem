-- SHAKTHI DB Schema and Sample Data
-- Generated: 2025-11-28T21:21:40.710782Z


CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name TEXT,
  phone TEXT,
  timezone TEXT,
  last_period_start DATE,
  cycle_history_json JSONB,
  active BOOLEAN DEFAULT true
);

CREATE TABLE IF NOT EXISTS nutrition_preferences (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  diet_type TEXT,
  allergies TEXT,
  caloric_goal INT
);

CREATE TABLE IF NOT EXISTS meal_logs (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  recent_meals_json JSONB,
  date_created TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS cycles (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  last_period_start DATE,
  cycle_history_json JSONB
);

CREATE TABLE IF NOT EXISTS medications (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  medication_schedule_json JSONB
);

CREATE TABLE IF NOT EXISTS community_matching (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  community_profile_json JSONB
);

-- Sample user
INSERT INTO users (name, phone, timezone, last_period_start, cycle_history_json, active)
VALUES ('Punit', '+919999999999', 'Asia/Kolkata', '2025-11-01', '[{"length":32},{"length":34},{"length":33}]', true)
ON CONFLICT DO NOTHING;

-- Nutrition prefs
INSERT INTO nutrition_preferences (user_id, diet_type, allergies, caloric_goal)
VALUES (1, 'low_gi', 'none', 1800)
ON CONFLICT DO NOTHING;

-- Meal logs
INSERT INTO meal_logs (user_id, recent_meals_json)
VALUES (1, '[{"meal":"oatmeal","cal":320},{"meal":"salad","cal":420}]')
ON CONFLICT DO NOTHING;

-- Cycles
INSERT INTO cycles (user_id, last_period_start, cycle_history_json)
VALUES (1, '2025-11-01', '[{"length":32},{"length":34},{"length":33}]')
ON CONFLICT DO NOTHING;

-- Medications
INSERT INTO medications (user_id, medication_schedule_json)
VALUES (1, '[{"name":"Metformin 500mg","next_due":"2025-11-29T09:00:00+05:30"}]')
ON CONFLICT DO NOTHING;

-- Community profile
INSERT INTO community_matching (user_id, community_profile_json)
VALUES (1, '{"city":"Mumbai","focus":"weight_loss"}')
ON CONFLICT DO NOTHING;
