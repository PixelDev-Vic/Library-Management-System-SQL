# Library Management System

A comprehensive Library Management System featuring a hybrid client-server architecture. This project combines a user-friendly Microsoft Access frontend (`LibraryUI.accdb`) with a robust MySQL/MariaDB database backend (`db_librarysystem.sql`), providing an intuitive interface while maintaining the scalability and data integrity of enterprise-grade SQL databases.

This system is ideal for schools, universities, or community libraries requiring a powerful, multi-user platform for managing books, members, and loans.

## 🚀 Core Features

The system provides comprehensive library management functionality:

* **Book Management**: Add, edit, and track all book details including ISBN, title, author, and availability status (Available or On Loan)
* **Member Management**: Maintain detailed records of library members, including department affiliations (e.g., College of Engineering, College of Arts)
* **Loan & Return System**: Track the complete lifecycle of book loans, including loan date, due date, and return date
* **Fine Management**: Automatically calculate and track fines for overdue books with payment status monitoring (Paid/Unpaid)
* **Book Reservations**: Allow members to reserve books that are currently checked out or hold them for pickup
* **Detailed Categorization**: Organize books by physical location (e.g., Filipiniana Section, IT Section) and subject (e.g., Computer Science, Philippine History)

## 💻 Technology Stack

* **Backend (Database)**: MySQL / MariaDB
* **Frontend (UI)**: Microsoft Access (`.accdb`)
* **Database Management**: phpMyAdmin
* **Connectivity**: ODBC (Open Database Connectivity) for Access-MySQL integration

## 🛠️ Prerequisites

Ensure the following software is installed before setting up the project:

1. **MySQL Server**: Install XAMPP or WAMP, which includes Apache, MySQL, and phpMyAdmin
2. **Microsoft Access**: Full version of MS Access 2013 or newer required for form editing and table linking
3. **MySQL ODBC Driver**: Download and install MySQL Connector/ODBC (ensure the version matches your MS Office installation: 32-bit or 64-bit)

## ⚙️ Setup and Installation

### 1. Backend (MySQL Server) Setup

**Step 1.1: Start Services**
1. Launch the XAMPP/WAMP Control Panel
2. Start the **Apache** and **MySQL** services

**Step 1.2: Create Database**
1. Open your web browser and navigate to `http://localhost/phpmyadmin`
2. Click the **Databases** tab
3. Enter `db_librarysystem` in the "Create database" field
4. Click **Create**

**Step 1.3: Import Database Schema**
1. Select the `db_librarysystem` database from the left sidebar
2. Click the **Import** tab
3. Click **Choose File** and select the `db_librarysystem.sql` file
4. Scroll down and click **Go**
5. Wait for the import process to complete

The database will now contain all 8 tables (`book`, `member`, `loan`, etc.) with sample data included.

### 2. Frontend (Microsoft Access) Setup

**Step 2.1: Install ODBC Driver**
Ensure the MySQL ODBC Driver is installed before proceeding.

**Step 2.2: Configure Database Connection**
1. Open `LibraryUI.accdb` with Microsoft Access
2. Navigate to **External Data** > **Linked Table Manager**
3. Select all tables from the list
4. Check **"Always prompt for new location"**
5. Click **OK**

**Step 2.3: Create ODBC Data Source**
1. In the "Select Data Source" window, click **New**
2. Select **MySQL ODBC Driver** from the list
3. Configure the connection with the following details:
   * **Data Source Name**: `MyLibraryConnection` (or any preferred name)
   * **TCP/IP Server**: `localhost` (or `127.0.0.1`)
   * **User**: `root` (unless modified in XAMPP)
   * **Password**: Leave blank (unless set in XAMPP)
   * **Database**: Select `db_librarysystem` from the dropdown
4. Click **Test** to verify the connection
5. Click **OK** on all windows to save

Access will automatically refresh all table links. Close and reopen `LibraryUI.accdb` to ensure all connections are established properly.

## 📋 Database Schema

The system includes the following tables:
* `book` - Book inventory and details
* `member` - Library member information
* `loan` - Active and historical loan records
* `fine` - Overdue fines and payment tracking
* `reservation` - Book reservation queue
* Additional supporting tables for categorization and reporting

## ⚠️ Known Limitations

* **Desktop Application**: This is a Windows desktop application and cannot be accessed via web browsers
* **Server Dependency**: The Access frontend requires a running MySQL server (XAMPP/WAMP services must be active)
* **ODBC Driver Requirement**: Each client computer accessing the system must have the MySQL ODBC driver properly installed and configured
* **Network Considerations**: For multi-user access, ensure proper network configuration and MySQL user permissions

## 📝 License

This project is provided as-is for educational and institutional use.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome. Please ensure all database modifications are documented and tested before submission.

## 📧 Support

For questions or issues, please open an issue in the GitHub repository.
