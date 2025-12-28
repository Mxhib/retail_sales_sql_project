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
I made sure to separate raw data, cleaning logic, and analysis into different SQL files so the entire workflow can be re-run from scratch in a clean and organized way, incase i needed to go back and check on something

**Database Setup**

I created a dedicated schema in PostgreSQL to keep this project isolated.

All SQL scripts were written and executed from VS Code using a PostgreSQL extension.

Tables were created explicitly so data types and structure were fully controlled.

**1️ Loading Raw Data**

-I loaded the CSV into a staging table inside PostgreSQL.

-The raw dataset was kept unchanged to preserve data integrity.

-This mirrors how raw data is handled in real data workflows.

**2️ Cleaning & Validation**

- I created a cleaned, analysis-ready table from the raw data.

- Rows with missing or invalid critical values were removed.

- I ran validation checks to ensure:

      -no unexpected NULL values,

      -no negative values where they don’t make sense,

      -revenue calculations were correct.

**Analysis Performed**

**1. Exploratory Analysis**

- Total number of transactions

- Number of unique customers

- Available product categories

**2. Sales on a Specific Date**

- Retrieved all transactions for a given day

- Calculated transaction count and total revenue for that date

**3. Product & Category Analysis**

- Total revenue by category

- Transaction count by category

-  Total units sold by product category

- Average order value per category

**4. Customer Analysis**

- Total spend per customer

- Top customers by total spending

- Top customers by transactions frequency

- Identification of high-value customers using HAVING

**5. Time-Based Analysis**

- Monthly sales trends

- Day-of-week sales patterns

- Hour-of-day sales behavior

- Identification of peak sales periods

**6. Key Performance Indicators (KPIs)**

- Total revenue

- Average order value (AOV)

- Total number of orders

- Average items per order

- Revenue per customer

**Why I Built It This Way**

I intentionally structured this project to reflect how SQL is used in practice:

- Raw data is preserved

- Cleaning and validation come before analysis

- Queries are grouped by purpose

- Results are interpreted, not just calculated

This project helped me practice both my technical SQL skills and analytical thinking when it comes to looking at 
different metrics for buisnesses to come up with appropriate queries to ask questions.





