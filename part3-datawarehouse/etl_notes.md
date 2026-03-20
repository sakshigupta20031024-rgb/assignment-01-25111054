## ETL Decisions (NEED TO MAKE CHANGES- Humanize)

### Decision 1 — Date Format Standardization
Problem:
Dates were in different formats, making time-based analysis difficult.

Resolution:
All dates were converted to YYYY-MM-DD. Additional fields like month and year were extracted and stored in the dim_date table.

### Decision 2 — Category Standardization
Problem:
Product categories had inconsistent formats (e.g., electronics, ELECTRONICS).

Resolution:
All categories were standardized to a uniform format (e.g., Electronics, Clothing, Grocery) to ensure correct grouping and reporting.

### Decision 3 — Handling Missing Values

Problem:
Some records had missing values in important fields like price or quantity.

Resolution:
Incomplete records were removed or corrected to ensure only clean and reliable data was loaded into the warehouse.

