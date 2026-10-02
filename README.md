# 📚 Automatic Library Book Locator System

A software-based library management and book locating system designed to help librarians quickly search, locate, issue, return, reserve, and manage books from a centralized dashboard.

The system combines a clean librarian interface with a Flask backend and MySQL database to make everyday library operations simpler, faster, and more organized.

---

## 🌟 Overview

Managing a growing library collection can become challenging when librarians need to quickly find books, check availability, track borrowed books, manage reservations, and monitor library activity.

The **Automatic Library Book Locator System** brings these operations together in one centralized platform.

A librarian can search for a book, view its availability and shelf location, issue or return it, manage reservations, and monitor library activity through a single dashboard.

The project is completely **software-based** and does not require physical RFID hardware.

---

## 🎯 Problem Statement

Traditional library management can involve several manual tasks:

- Searching for books across shelves
- Checking whether a book is available
- Maintaining borrowing and return records
- Tracking overdue books
- Managing reservations
- Monitoring frequently borrowed books
- Keeping track of shelf utilization

These processes can become time-consuming as the number of books increases.

This project provides a centralized digital solution where book information, circulation, reservations, and analytics can be managed through one interface.

---

## 💡 Proposed Solution

The system provides a **Librarian Dashboard** connected to a MySQL database.

The librarian can:

- Search books instantly
- Locate books using shelf information
- Add, edit, and delete book records
- Borrow and return books
- Manage reservations
- View transaction history
- Monitor overdue books
- Analyze borrowing activity
- View shelf utilization
- Get book recommendations

All important operations are connected to the database so that changes are persistent.

---

## ✨ Key Features

### 🔐 Librarian Login

- Secure librarian authentication
- Password hashing using Werkzeug
- Session-based authentication
- Protected dashboard and API routes
- Individual librarian accounts can be supported through the `librarians` database table

---

### 📖 Book Management

Librarians can:

- Add new books
- Edit existing books
- Delete books
- Search books
- Filter books
- View book details
- Check availability
- View shelf locations

Books can be searched using:

- Book title
- Author
- Book code

---

### 🔎 Search & Locate

The Search & Locate section allows librarians to quickly find a book.

For every matching book, the system can display:

- Book code
- Title
- Author
- Genre
- Shelf
- Availability status

This reduces the need to manually search through the entire library.

---

### 🔄 Borrow & Return

The circulation system allows librarians to:

- Borrow books
- Enter customer IDs
- Set due dates
- Return books
- View transaction history
- Track active borrowings
- Automatically update book availability

When a book is borrowed, its status changes to:

`Borrowed`

When it is returned, the status changes back to:

`Available`

---

### 📌 Reservations

The reservation module supports:

- Creating reservations
- Customer identification
- Queue positions
- Waiting status
- Ready status
- Completed status
- Cancellation

This allows multiple users to wait for a book when it is currently unavailable.

---

### 🗺️ Library Map

The system includes a software-based library map that uses shelf information from the database.

It helps librarians understand:

- Which shelves exist
- How many books are stored on each shelf
- Available books
- Borrowed books

The system is designed to work without physical RFID hardware.

---

### 📊 Dashboard

The dashboard provides a quick overview of the library.

It includes:

- Total books
- Available books
- Borrowed books
- Reserved books
- Overdue books
- Recent activity
- Popular books
- Shelf utilization

This gives librarians a quick view of the current state of the library.

---

### 📈 Analytics

The analytics section provides information about:

- Genre distribution
- Shelf utilization
- Borrowing trends
- Frequently borrowed books

This can help understand how the library collection is being used.

---

### 🤖 Book Recommendations

The system provides multiple recommendation approaches:

#### Popularity-Based

Recommends books based on borrowing activity.

#### Content-Based

Uses book information such as genre to identify relevant available books.

#### Hybrid

Combines availability and borrowing activity to provide recommendations.

---

## 🏗️ System Architecture

```text
                 ┌──────────────────────┐
                 │      Librarian       │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │   Web Dashboard      │
                 │   HTML/CSS/JS        │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │    Flask Backend     │
                 │      Python          │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │     MySQL Database   │
                 ├──────────────────────┤
                 │ Librarians           │
                 │ Books                │
                 │ Transactions         │
                 │ Reservations         │
                 └──────────────────────┘

🛠️ Technology Stack
Frontend
- HTML5
- CSS3
- JavaScript
Backend
- Python
- Flask
Database
- MySQL
Python Libraries
- Flask
- mysql-connector-python
- python-dotenv
- Werkzeug
Development Tools
- Visual Studio Code
- MySQL
- Git
- GitHub
📂 Project Structure
automatic-library-book-locator/
│
├── app/
│   ├── static/
│   │   ├── css/
│   │   │   └── main.css
│   │   │
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

🗄️ Database Design
The application uses MySQL for persistent data storage.
The main database entities include:
Librarians
Stores librarian account information and authentication details.
Books
Stores:
- Book ID
- Book code
- Title
- Author
- Genre
- Shelf
- Status
- Created time
- Updated time
Transactions
Stores:
- Transaction code
- Book
- Customer ID
- Borrow date
- Due date
- Return date
- Transaction status
Reservations
Stores:
- Reservation code
- Book
- Customer ID
- Queue position
- Reservation status
🔄 Application Workflow
Librarian Login
       │
       ▼
   Dashboard
       │
       ├── Books
       │     ├── Add
       │     ├── Edit
       │     ├── Delete
       │     └── Search
       │
       ├── Search & Locate
       │
       ├── Borrow / Return
       │
       ├── Reservations
       │
       ├── Library Map
       │
       ├── Recommendations
       │
       └── Analytics

🚀 Getting Started
Follow the steps below to run the project locally.
1. Clone the Repository
git clone <your-repository-url>

Move into the project directory:
cd automatic-library-book-locator

2. Create a Virtual Environment
python -m venv venv

3. Activate the Virtual Environment
For Windows:
venv\Scripts\activate

4. Install Dependencies
pip install -r requirements.txt

5. Configure Environment Variables
Create a .env file in the project root.
Add:
SECRET_KEY=your-secret-key

MYSQL_HOST=localhost
MYSQL_PORT=3306
MYSQL_USER=root
MYSQL_PASSWORD=your-mysql-password
MYSQL_DATABASE=library_locator

Replace the values with your local MySQL configuration.
Never upload .env to GitHub.
6. Create the Database
Open MySQL and run:
CREATE DATABASE library_locator;

Then select the database:
USE library_locator;

Execute the SQL statements from:
schema.sql

This creates the required database tables.
7. Add Sample Book Data
Run:
python seed.py

This inserts the book data provided in:
books_seed.json

8. Start the Application
Run:
python app.py

The application will start at:
http://127.0.0.1:5001

Open that address in your browser.
🔒 Security
Sensitive configuration is intentionally excluded from the repository.
The .gitignore file prevents files such as:
.env
venv/
__pycache__/
*.pyc
.vscode/

from being uploaded.
Important
Never commit:
- MySQL passwords
- Secret keys
- Personal credentials
- Production database credentials
- Private configuration files
🧪 Current Project Scope
The current version focuses on the librarian side of the system.
It includes:
- Librarian authentication
- Book management
- Book search
- Book location information
- Borrowing
- Returning
- Reservations
- Transaction history
- Library map
- Recommendations
- Dashboard statistics
- Analytics
The system currently uses a software-based shelf location approach and does not require physical RFID devices.
🔮 Future Enhancements
Possible future improvements include:
- 👥 Student/User accounts
- 📜 Individual user borrowing history
- 👨‍💼 Librarian management
- 🔑 Role-based access control
- 📧 Email notifications
- ⏰ Automated overdue reminders
- 📱 QR-based book identification
- 🏷️ Barcode scanning
- 🤖 Advanced recommendation models
- ☁️ Cloud deployment
- 📊 Advanced analytics
- 🔔 Real-time notifications
- 📚 Personalized recommendations
- 📍 More detailed visual library mapping

🎓 Project Objective
The main objective of this project is to provide a centralized software solution for managing library books and everyday circulation activities.
Instead of relying on multiple manual processes, the system brings book management, locating, borrowing, returning, reservations, recommendations, and analytics together in one platform.
The project also demonstrates the integration of:
- Frontend development
- Backend development
- REST APIs
- Database management
- Authentication
- Data processing
- Recommendation logic
- Software-based library mapping
👩‍💻 Author
Sowmya Saketha Patnala
B.E. Computer Science Engineering (AI & ML)
📄 License
This project is developed for educational and academic purpose
