-- Create database
CREATE DATABASE IF NOT EXISTS `web-tech-2`;

-- Use database
USE `web-tech-2`;

-- Create students table
CREATE TABLE IF NOT EXISTS students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  age INT,
  course VARCHAR(255),
  year_level INT,
  gpa DECIMAL(3,2),
  enrollment_status VARCHAR(50),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert sample data (optional)
INSERT INTO students (first_name, last_name, email, age, course, year_level, gpa, enrollment_status) VALUES
  ('John', 'Doe', 'john@example.com', 20, 'Computer Science', 1, 3.50, 'active'),
  ('Jane', 'Smith', 'jane@example.com', 22, 'Information Technology', 2, 3.75, 'active'),
  ('Bob', 'Johnson', 'bob@example.com', 21, 'Computer Science', 3, 3.20, 'active');