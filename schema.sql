CREATE DATABASE IF NOT EXISTS library_locator CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE library_locator;

CREATE TABLE IF NOT EXISTS librarians (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  role VARCHAR(30) NOT NULL DEFAULT 'Librarian',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  book_code VARCHAR(50) NOT NULL UNIQUE,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  genre VARCHAR(150) DEFAULT 'General',
  shelf VARCHAR(50) NOT NULL,
  status ENUM('Available','Borrowed','Reserved','Maintenance') NOT NULL DEFAULT 'Available',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_title (title), INDEX idx_author (author), INDEX idx_shelf (shelf), INDEX idx_status (status)
);

CREATE TABLE IF NOT EXISTS transactions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  transaction_code VARCHAR(60) NOT NULL UNIQUE,
  book_id INT NOT NULL,
  customer_id VARCHAR(80) NOT NULL,
  borrowed_at DATE NOT NULL,
  due_date DATE NOT NULL,
  returned_at DATE NULL,
  status ENUM('Borrowed','Returned','Overdue') NOT NULL DEFAULT 'Borrowed',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_tx_book FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE RESTRICT,
  INDEX idx_tx_customer (customer_id), INDEX idx_tx_status (status)
);

CREATE TABLE IF NOT EXISTS reservations (
  id INT AUTO_INCREMENT PRIMARY KEY,
  reservation_code VARCHAR(60) NOT NULL UNIQUE,
  book_id INT NOT NULL,
  customer_id VARCHAR(80) NOT NULL,
  queue_position INT NOT NULL DEFAULT 1,
  status ENUM('Waiting','Ready','Cancelled','Completed') NOT NULL DEFAULT 'Waiting',
  reserved_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_res_book FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE RESTRICT,
  INDEX idx_res_book (book_id), INDEX idx_res_status (status)
);
