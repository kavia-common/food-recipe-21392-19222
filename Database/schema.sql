-- PostgreSQL schema for Food Recipe app

CREATE TABLE IF NOT EXISTS recipes (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    ingredients TEXT,   -- newline-separated list
    instructions TEXT   -- newline-separated list
);

CREATE TABLE IF NOT EXISTS images (
    id SERIAL PRIMARY KEY,
    url VARCHAR(500) NOT NULL,
    alt VARCHAR(255),
    recipe_id INTEGER NOT NULL REFERENCES recipes(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS menus (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE IF NOT EXISTS recipe_menu (
    recipe_id INTEGER NOT NULL REFERENCES recipes(id) ON DELETE CASCADE,
    menu_id INTEGER NOT NULL REFERENCES menus(id) ON DELETE CASCADE,
    PRIMARY KEY (recipe_id, menu_id)
);

-- Indexes for faster search
CREATE INDEX IF NOT EXISTS idx_recipes_title ON recipes (title);
