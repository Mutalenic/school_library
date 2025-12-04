# School Library Management System

A command-line application for managing a school library built with Ruby and Object-Oriented Programming principles. This system allows you to manage books, people (students and teachers), and rental records with an interactive menu-driven interface.

## 📋 Table of Contents

- [About The Project](#about-the-project)
- [Features](#features)
- [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Usage](#usage)
- [Project Structure](#project-structure)
- [OOP Concepts](#oop-concepts)
- [Author](#author)
- [Contributing](#contributing)
- [Show Your Support](#show-your-support)
- [Acknowledgments](#acknowledgments)
- [License](#license)

## About The Project

This is a school library management system that demonstrates Object-Oriented Programming concepts including inheritance, composition, and the decorator pattern. The application provides a user-friendly command-line interface for librarians to manage their book inventory, track people (students and teachers), and maintain rental records.

## Features

- ✅ **Book Management**: Add and list all books in the library
- ✅ **People Management**: Create and list students and teachers
- ✅ **Rental System**: Create rental records and track who borrowed which books
- ✅ **Query Rentals**: List all rentals for a specific person
- ✅ **Decorator Pattern**: Apply decorators to modify how names are displayed (capitalize, trim)
- ✅ **Interactive UI**: Easy-to-use menu-driven command-line interface

## Built With

- Ruby
- Object-Oriented Programming (OOP)
- Decorator Design Pattern

## Getting Started

### Prerequisites

- Ruby (version 2.7 or higher recommended)

Check your Ruby version:
```bash
ruby --version
```

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Mutalenic/school_library.git
```

2. Navigate to the project directory:
```bash
cd school_library
```

### Usage

Run the application with:
```bash
ruby main.rb
```

The application will present you with an interactive menu:
```
Please enter a number to select an option:
1 - List all books
2 - List all people
3 - Create a person (student or teacher)
4 - Create a book
5 - Create a rental
6 - List all rentals for a given person id
7 - Exit
```

Simply enter the number corresponding to your desired action and follow the prompts.

### Live Demo

You can try the live demo on Replit: [Coming Soon]

## Project Structure

```
school_library/
├── main.rb                    # Entry point with menu interface
├── app.rb                     # Main application logic
├── book_class.rb              # Book model
├── person_class.rb            # Person base class
├── student_class.rb           # Student class (inherits from Person)
├── teacher_class.rb           # Teacher class (inherits from Person)
├── classroom_class.rb         # Classroom model
├── rental_class.rb            # Rental records management
├── nameable_class.rb          # Nameable interface
├── decorator.rb               # Base decorator class
├── capitalize_decorator.rb    # Decorator to capitalize names
├── trimmer_decorator.rb       # Decorator to trim names
└── README.md                  # Documentation
```

## OOP Concepts

This project demonstrates several key Object-Oriented Programming concepts:

- **Inheritance**: `Student` and `Teacher` classes inherit from the `Person` base class
- **Composition**: Relationships between books, people, and rentals
- **Decorator Pattern**: Dynamic behavior modification using decorators for name formatting
- **Encapsulation**: Data and methods organized within appropriate classes
- **Polymorphism**: Different types of people (students/teachers) with shared interfaces

## Author

**Nicholas Mutale**

- GitHub: [@mutalenic](https://github.com/Mutalenic)
- Twitter: [@nicomutale](https://twitter.com/nicomutale)
- LinkedIn: [@nicomutale](https://www.linkedin.com/in/nicomutale/)

## Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Mutalenic/school_library/issues).

## Show Your Support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/) for the project inspiration and curriculum

## License

This project is [MIT](./LICENSE) licensed.

---

## Deployment

### Deploy to Replit

This application is configured for easy deployment to Replit:

1. Go to [Replit](https://replit.com)
2. Click "Create Repl" → "Import from GitHub"
3. Paste the repository URL: `https://github.com/Mutalenic/school_library`
4. Click "Import from GitHub"
5. Once imported, click "Run" to start the application
6. Share your Repl link with others!

The app will automatically use the `.replit` configuration file to run `ruby main.rb`.

