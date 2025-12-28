# retail_sales_sql_project

Hello, My name is Mohib and I built this project to practice and demonstrate real-world SQL data analysis using PostgreSQL and VS Code.

Instead of just writing a few standalone queries, I wanted to simulate how an analyst would actually work with data in a database:

load raw data,

clean and validate it,

and then answer meaningful business questions.

The focus of this project is clarity, correctness, and explainability, not just writing SQL that “works”.


**Tools & Technologies**

PostgreSQL – used as the main relational database

VS Code – used to write and run SQL scripts

SQL – for data cleaning, aggregation, and analysis

Git & GitHub – version control with logical commits by analysis section

I used PostgreSQL with VS Code because it let me work with real database data while keeping everything organized in one place. Writing my SQL in VS Code made it easier to structure the project step by step and keep track of my work as I went.

**Project Structure**

retail_sales_sql_project/
│
├── data/
│   └── raw/
│       └── retail_sales_raw.csv
│
├── sql/
│   ├── 01_schema.sql        -- schema setup
│   ├── 02_load_data.sql     -- load raw CSV into PostgreSQL
│   ├── 03_cleaning.sql      -- clean and validate data
│   └── 04_analysis.sql      -- analysis, KPIs, and insights
│
└── README.md

I made sure to separate raw data, cleaning logic, and analysis into different SQL files so the entire workflow can be re-run from scratch in a clean and organized way, incase i needed to go back and check on something

**Database Setup**

I created a dedicated schema in PostgreSQL to keep this project isolated.

All SQL scripts were written and executed from VS Code using a PostgreSQL extension.

Tables were created explicitly so data types and structure were fully controlled.





