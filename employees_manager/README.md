# Employee Management CLI

This project is a command-line interface (CLI) application for managing employee information.

## Prerequisites

Before running the project, ensure you have the following installed:

- Dart SDK

## Project Structure

- `management_functions.dart`: Contains functions for managing employees.
- `employee.dart`: Defines the `Employee` class and its properties.
- `initial_data.dart`: Contains a function that adds several employees to the system for testing.
- `interface.dart`: Contains a function that creates an interactive CLI that makes the system useful.
- `employees_manager.dart`: The main entry point of the application, where functions are invoked.

## How to Run

1. **Clone the repository:**

    ```bash
    git clone <repository-url>
    cd <repository-folder>
    ```


2. **Run the application:**

    Execute the following command in the project directory:

    ```bash
    dart run
    ```

    You should see the welcome message and be prompted to enter your user ID.

## How to Use the CLI

1. **Enter your user ID:**

    ```text
    please enter your id:
    ```

    - The application will fetch your user information based on the ID provided.

2. **Navigate through the menu options:**

    ```text
    ----------Choose by number----------
    1-Print my info
    2-Add a new employee
    3-Delete an existing employee
    4-Update employee info
    5-Print employee by id
    6-Print all employees
    to exit press enter
    -----------------------------------
    ```

    - **1**: Print your personal information.
    - **2**: Add a new employee (requires 'add' permission).
    - **3**: Delete an existing employee (requires 'delete' permission).
    - **4**: Update employee information (requires 'update' permission).
    - **5**: Print employee information by ID (requires 'read' permission).
    - **6**: Print all employees' information (requires 'read' permission).
    - Press `Enter` without input to exit the application.

## Example Usage

### Adding a New Employee

- Select option `2` from the menu.
- Follow the prompts to enter the new employee's details.

### Deleting an Employee

- Select option `3` from the menu.
- Enter the ID of the employee to be deleted.

### Updating Employee Information

- Select option `4` from the menu.
- Enter the ID of the employee to be updated and follow the prompts.

### Printing Employee Information by ID

- Select option `5` from the menu.
- Enter the ID of the employee whose information you want to print.

### Printing All Employees

- Select option `6` from the menu.


