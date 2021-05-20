# cj-app
Go 1.16 - gin 1.7.1

IMPORTANT NOTES:

    1. If the backend require any database please use any IN-MEMORY or SQLLite database Unless mentioned in Questions Otherwise 

PROJECT START STEPS:

    Pre-requisites:
    1. Install need go version 1.1 to be installed in your system.
    2. Keep all the migrations inside the db/migration-goose or db/migration-migrate folder (check the respective folder and file name format for example migrations)
    3. goose/golang-migrate to be installed to apply any migrations

    Steps:
    1. To apply migrations via goose, do the following:
        1.a. Go to the project root directory.
        1.b. Run the command `goose -dir db/migration-goose db_type "user:password@host:port/database_name?query" up` (Change the parameters as per your specification)
    2. To apply migrations via golang-migrate, do the following:
        2.a. Go to the project root directory.
        2.b. Run the command `migrate -path db/migration-migrate -database "db_type://user:password@host:port/database_name?query" -verbose up` (Change the parameters as per your specification)
    3. To run this application, do the following:
        2.a. Go to the project root directory.
        2.b. Run the following commands to build the app:
        	- go build -o main . 
        2.c. Run the following command(s) in the terminal/command line to run the app:    
          - ./main
    
    4. Go to http://localhost:8080 in your browser to view it.
