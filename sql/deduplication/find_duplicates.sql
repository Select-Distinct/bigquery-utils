
/*
 * Utility: Find and Filter Duplicates
 * Author: Select-Distinct
 * * This pattern uses the QUALIFY clause, which is specific to BigQuery.
 * It allows filtering the results of window functions (like ROW_NUMBER) 
 * without needing a subquery or a common table expression (CTE).
 */

-- 1. Identify all duplicate rows (keeping all versions)
SELECT 
  *,
  COUNT(*) OVER(PARTITION BY unique_id_column) as occurrence_count
FROM `your_project.your_dataset.your_table`
WHERE TRUE
QUALIFY occurrence_count > 1
ORDER BY unique_id_column;

-- 2. Professional Deduplication (Keep only the latest record)
-- Replace 'unique_id_column' with your primary key
-- Replace 'timestamp_column' with your versioning/date column
SELECT 
  *
FROM `your_project.your_dataset.your_table`
WHERE TRUE
QUALIFY ROW_NUMBER() OVER (
  PARTITION BY unique_id_column 
  ORDER BY timestamp_column DESC
) = 1;
