# cj-app
Go 1.16 - gin 1.7.1

IMPORTANT NOTES:

    1. If the backend require any database please use any IN-MEMORY or SQLLite database Unless mentioned in Questions Otherwise 

PROJECT START STEPS:

    Pre-requisites:
    1. Install need go version 1.1 to be installed in your system.
    2. Keep all the migrations inside the db/migration folder (check the folder for example migrations)
    3. goose to be installed to apply any migrations (if any, follow the version format, get goose using command - `go get -u github.com/pressly/goose/cmd/goose`)


    Steps:
    1. To apply migrations:
        goose -dir db/migration db_type "user:password@host:port/database_name?multiStatements=true&parseTime=true" up
    2. To run this application, do the following:
        2.a. Go to the project root directory.
        2.b. Run the following commands to build the app:
        	- go build -o main . 
        2.c. Run the following command(s) in the terminal/command line to run the app:    
          - ./main
    
    2. Go to http://localhost:8080/hello in your browser to view it.
