# 📝 Todo App Flutter

A simple and modern Todo List application built with **Flutter**. This project demonstrates the implementation of local database management, state management using Riverpod, clean project architecture, and navigation using Go Router.

## 📸 Preview

> Add screenshots or GIFs here

| Home | Create Task |
|------|-------------|
| Screenshot | Screenshot |

---

# ✨ Features

- ✅ Create a new task
- ✏️ Edit existing task
- 🗑️ Delete task
- ✔️ Mark task as completed
- 📅 Select task date
- ⏰ Select task time
- 📂 Task category
- 💾 Local database using SQLite
- 🎨 Modern Material UI
- ⚡ State Management with Riverpod

---

# 📦 Technologies Used

- Flutter
- Dart
- Riverpod
- SQLite (sqflite)
- Go Router
- Google Fonts
- Flex Color Scheme
- Intl
- Device Preview

---

# 📁 Project Structure

```
lib/
│
├── app/
│   └── todo_app.dart
│
├── config/
│   ├── routes/
│   └── theme/
│
├── data/
│   ├── datasource/
│   ├── models/
│   └── repositories/
│
├── providers/
│
├── screens/
│
├── utils/
│
├── widgets/
│
└── main.dart
```

---

# 🏛 Architecture

This project follows a layered architecture:

```
UI
│
├── Riverpod Provider
│
├── Repository
│
├── DataSource
│
└── SQLite Database
```

Flow:

```
User Action
      │
      ▼
 Riverpod Provider
      │
      ▼
 Repository
      │
      ▼
 DataSource
      │
      ▼
 SQLite Database
```

---

# 🗄 Database

Database used:

**SQLite**

Table:

```
tasks
```

Columns:

| Column | Type |
|---------|------|
| id | Integer |
| title | Text |
| note | Text |
| date | Text |
| time | Text |
| category | Text |
| isCompleted | Integer |

---

# 📚 CRUD Operations

Implemented CRUD functionality:

### Create

- Add new task

### Read

- Get all tasks

### Update

- Edit task
- Update completion status

### Delete

- Delete task

---

# 🎯 State Management

This project uses **Flutter Riverpod**.

Providers implemented include:

- Task Provider
- Task Notifier
- Task State
- Date Provider
- Time Provider
- Category Provider

Benefits:

- Reactive UI
- Better code separation
- Easier state management
- Testable architecture

---

# 🧩 Design Pattern

The project applies several software engineering patterns:

- Repository Pattern
- Singleton Pattern (TaskDatasource)
- Provider Pattern
- Layered Architecture
- State Management Pattern

---

# ⚙️ Main Components

## Data Layer

Responsible for:

- SQLite database
- CRUD operations
- Data mapping

Contains:

- Task Model
- TaskDatasource
- TaskRepository
- TaskRepositoryImpl

---

## Provider Layer

Responsible for:

- Application state
- CRUD interaction
- Business logic

---

## UI Layer

Contains:

- Home Screen
- Create Task Screen
- Reusable Widgets

---

# 📦 Dependencies

```yaml
flutter_riverpod
sqflite
sqflite_common_ffi
go_router
intl
google_fonts
flex_color_scheme
device_preview
gap
font_awesome_flutter
path
```

---

# 🚀 Getting Started

Clone repository

```bash
git clone https://github.com/username/todoapp-flutter.git
```

Go to project

```bash
cd todoapp-flutter
```

Install dependencies

```bash
flutter pub get
```

Run project

```bash
flutter run
```

---

# 📖 What I Learned

Through this project I learned:

- Flutter application structure
- Riverpod State Management
- Repository Pattern
- SQLite Database
- CRUD Operations
- Clean Code
- Navigation using Go Router
- Local Persistence
- Material Design UI
- Widget Reusability

---

# 🔮 Future Improvements

- Authentication
- Cloud Sync (Firebase/Supabase)
- Dark Mode
- Search Task
- Filter by Category
- Notification Reminder
- Task Priority
- Archive Task
- Responsive Layout
- Unit Testing

---

# 👨‍💻 Author

**Muhamad Raihan**

Software Engineer Enthusiast | Flutter Developer

GitHub:
https://github.com/rehanaja

LinkedIn:


Portfolio:


---

# ⭐ Support

If you like this project, don't forget to give it a ⭐ on GitHub!
