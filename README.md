# Employee & Task Management with WebSocket Messaging

A simple **Employee Task Management System** built using **Laravel** with **real-time WebSocket chat** for instant communication between employees.

---

## 🔗 Live Demo
[View Application](https://cyan-goldfinch-221104.hostingersite.com/home)

**Login Credentials:**
- Email: `shivam@mail.com`  or `john@mail.com`
- Password: `123456789`

> WebSocket chat works only in local setup.

---

## 🧩 Features
- Single user role: **Employee**
- Add, edit, and delete tasks  
- Assign and track task progress  
- Real-time messaging using WebSockets  
- Simple and clean UI built with Laravel Blade

---

## ⚙️ Local Installation

```bash
# 1. Clone the project
git clone <your-repo-url>
cd <project-folder>

# 2. Install dependencies
composer install
npm install

# 3. Setup environment
cp .env.example .env
php artisan key:generate

# 4. Run migrations
php artisan migrate --seed

# 5. Start Laravel server
php artisan serve

# 6. Start WebSocket server
node server.js
