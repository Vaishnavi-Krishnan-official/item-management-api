# Item Management REST API

## Description
This is a simple Java Spring Boot REST API built to manage a collection of items.
The application uses in-memory storage (ArrayList) and does not use a database.

## Technologies Used
- Java 17
- Spring Boot
- Maven

## How to Run the Application
1. Clone the repository
2. Make sure Java and Maven are installed
3. Run the following command:
   mvn spring-boot:run
4. Application will start on:
   http://localhost:8081

## API Endpoints

### Add Item
- URL: /api/items
- Method: POST
- Request Body:
  {
  "name": "Laptop",
  "description": "Gaming laptop"
  }

### Get Item by ID
- URL: /api/items/{id}
- Method: GET

## Notes
- Input validation is enabled
- Data is stored using ArrayList
- This project is created as part of a sample backend task
