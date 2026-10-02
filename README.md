# automatic-library-book-locator
Software-only Automatic Library Book Locator System using Flask and MySQL.
# 📚 Automatic Library Book Locator System

A software-based library management and book locating system designed to help librarians quickly search, locate, issue, return, and manage books from a centralized dashboard.

The system combines a simple librarian interface with a Flask backend and MySQL database to keep library operations organized and easy to manage.

---

## ✨ Why This Project?

Finding and managing books in a library can become difficult when the collection grows.

Librarians often need to:

- Search for a particular book quickly
- Check whether a book is available
- Find the shelf where a book is located
- Record book borrowing and returns
- Manage reservations
- Track library activity
- Understand borrowing trends

This project brings these operations together in one dashboard so that a librarian can manage the library from a single place.

---

## 🎯 Key Features

### 🔐 Librarian Login
- Secure librarian authentication
- Passwords are stored using password hashing
- Session-based access control
- Protected dashboard and API routes

### 📖 Book Management
- Add new books
- Edit book information
- Delete books
- Search by:
  - Book title
  - Author
  - Book code
- Filter books by availability, genre, and shelf

### 🔎 Search & Locate
Quickly search for a book and view its:

- Book code
- Title
- Author
- Genre
- Shelf location
- Current availability

The system makes it easier for librarians to identify where a book is located without manually checking the entire collection.

### 🔄 Borrow & Return
Librarians can:

- Issue books
- Record customer IDs
- Set due dates
- Return books
- View transaction history
- Automatically update book availability

### 📌 Reservations
The system supports:

- Creating reservations
- Queue positions
- Waiting status
- Ready status
- Completed status
- Cancellation

### 🗺️ Library Map
A software-based library map provides shelf-level information and helps visualize book locations.

> The project does not require physical RFID hardware.

### 📊 Dashboard & Analytics
The dashboard provides an overview of:

- Total books
- Available books
- Borrowed books
- Reserved books
- Overdue books
- Recent activity
- Popular books
- Shelf utilization

Analytics also provide information about:

- Genre distribution
- Shelf usage
- Borrowing trends

### 🤖 Book Recommendations
The system includes three recommendation modes:

- **Popularity-based**
- **Content-based**
- **Hybrid**

These can be used to surface books that may be useful or interesting to library users.

---

## 🏗️ Technology Stack

### Frontend
- HTML
- CSS
- JavaScript

### Backend
- Python
- Flask

### Database
- MySQL

### Libraries & Tools
- MySQL Connector/Python
- Werkzeug
- python-dotenv
- VS Code
- Git & GitHub

---

## 📂 Project Structure

```text
automatic-library-book-locator/
│
├── app/
│   ├── static/
│   │   ├── css/
│   │   │   └── main.css
│   │   └── js/
│   │       ├── app.js
│   │       └── login.js
│   │
│   └── templates/
│       ├── dashboard.html
│       └── login.html
│
├── app.py
├── books_seed.json
├── config.py
├── db.py
├── requirements.txt
├── schema.sql
├── seed.py
├── .gitignore
└── README.md
