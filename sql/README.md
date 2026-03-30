
# BigQuery Utils by Select-Distinct

Production-ready SQL patterns and utilities for Google BigQuery. 

## 📖 Featured Tutorials
* [BigQuery: Find Duplicates Using QUALIFY, WHERE and HAVING](https://www.selectdistinct.co.uk/2026/02/12/finding-duplicates-using-where-having-qualify/) - A deep dive into efficient deduplication.

## 🚀 Performance Comparison
| Feature | `DISTINCT` | `GROUP BY` | `QUALIFY` |
| :--- | :---: | :---: | :---: |
| **Control** | Low | Medium | **High** |
| **Speed** | Fast | Moderate | **Optimal** |

## 🛠 Available Utilities
* **[Deduplication](./sql/deduplication/find_duplicates.sql)**: Scripts to identify and remove duplicate records using window functions.

---
Built with ❤️ by [Select-Distinct](https://www.selectdistinct.co.uk)
