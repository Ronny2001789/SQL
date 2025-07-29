-- 🔹 Create a table to store developer details
CREATE TABLE developers (
    dev_id SERIAL PRIMARY KEY,                    -- Unique developer ID that auto-increments
    full_name VARCHAR(100) NOT NULL,              -- Developer's full name (cannot be empty)
    email VARCHAR(100) UNIQUE NOT NULL,           -- Unique email (cannot be empty or duplicated)
    role VARCHAR(50),                             -- Developer's role (e.g., Frontend, Backend)
    age INT CHECK (age >= 16)                     -- Age must be at least 16
);

-- 🔹 Create a table to store project information
CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,                -- Unique project ID that auto-increments
    project_name VARCHAR(100) NOT NULL,           -- Name of the project (required)
    deadline DATE,                                -- Deadline date for the project
    dev_id INT,                                   -- Links to the developer assigned to the project

    -- 🔸 Foreign key constraint to link dev_id to developers table
CONSTRAINT fk_developer
        FOREIGN KEY (dev_id)
        REFERENCES developers(dev_id)             -- dev_id must exist in developers table
        ON DELETE SET NULL                        -- If the developer is deleted, dev_id becomes NULL in projects
);

-- 🔹 Insert sample data into the developers table
INSERT INTO developers (full_name, email, role, age) VALUES
('Sibusiso Makhiwane', 'sibu@sibucodelab.dev', 'Frontend Developer', 22),  -- Developer 1
('Jane Code', 'jane@codegenius.io', 'Backend Developer', 25),              -- Developer 2
('Lebo Dev', 'lebo@stacklab.co.za', 'Fullstack Developer', 24);           -- Developer 3

-- 🔹 Insert sample data into the projects table
INSERT INTO projects (project_name, deadline, dev_id) VALUES
('Crypto Tracker App', '2025-08-15', 1),        -- Assigned to Sibusiso
('AI Tutor Platform', '2025-09-01', 3),         -- Assigned to Lebo
('Portfolio Redesign', '2025-08-25', 2),        -- Assigned to Jane
('Secret Startup MVP', '2025-10-10', NULL);     -- Not yet assigned to any developer
