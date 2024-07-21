Here's the README file in Markdown format demonstrating the Git merge example:

```markdown
# Git Merge Example

This README demonstrates various Git merge scenarios, including fast-forward merges, auto-merges, and resolving conflicts.

## 1. Demonstrate Fast-Forward Auto Merge

### Initial Commit: Add Basic ETL Pipeline Structure

Create a file named `etl_pipeline.py` with the following content:

```python
# ETL Pipeline
def extract_data():
    print("Extracting data from source")

def transform_data():
    print("Transforming data")

def load_data():
    print("Loading data to destination")

def main():
    extract_data()
    transform_data()
    load_data()

if __name__ == "__main__":
    main()
```

Commit the changes:

```bash
$ git add etl_pipeline.py
$ git commit -m "Initial commit: Add basic ETL pipeline structure"
```

### Add Error Handling to ETL Pipeline

Modify `etl_pipeline.py`:

```python
# ETL Pipeline
def extract_data():
    try:
        print("Extracting data from source")
    except Exception as e:
        print(f"Error in extraction: {e}")

def transform_data():
    try:
        print("Transforming data")
    except Exception as e:
        print(f"Error in transformation: {e}")

def load_data():
    try:
        print("Loading data to destination")
    except Exception as e:
        print(f"Error in loading: {e}")

def main():
    extract_data()
    transform_data()
    load_data()

if __name__ == "__main__":
    main()
```

Commit the changes:

```bash
$ git add etl_pipeline.py
$ git commit -m "Add error handling to ETL pipeline"
```

### Create and Switch to Feature Branch

```bash
$ git checkout -b feature/add-logging
```

### Make Changes in the Feature Branch

Add logging to the ETL pipeline. Modify `etl_pipeline.py`:

```bash
$ git add etl_pipeline.py
$ git commit -m "import logging package"

$ git add etl_pipeline.py
$ git commit -m "init logger in pipeline"
```

Final version of `etl_pipeline.py`:

```python
# ETL Pipeline
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

def extract_data():
    try:
        logger.info("Extracting data from source")
    except Exception as e:
        logger.error(f"Error in extraction: {e}")

def transform_data():
    try:
        logger.info("Transforming data")
    except Exception as e:
        logger.error(f"Error in transformation: {e}")

def load_data():
    try:
        logger.info("Loading data to destination")
    except Exception as e:
        logger.error(f"Error in loading: {e}")

def main():
    logger.info("Starting ETL pipeline")
    extract_data()
    transform_data()
    load_data()
    logger.info("ETL pipeline completed")

if __name__ == "__main__":
    main()
```

Commit the changes:

```bash
$ git add etl_pipeline.py
$ git commit -m "Add logging to ETL pipeline"
```

### Merge Feature Branch into Main

```bash
$ git checkout main
$ git merge feature/add-logging
```

## 2. Demonstrate Fast-Forward with Auto Commit

### Create and Switch to New Feature Branch

```bash
$ git checkout -b feature/add-data-validation
```

Add a new function to `etl_pipeline.py`:

```python
def validate_data(data):
    logger.info("Validating data")
    # Add your validation logic here
    return True
```

Commit the changes:

```bash
$ git add etl_pipeline.py
$ git commit -m "Add validate_data function"
```

### Create Config File in Main Branch

Switch to main branch:

```bash
$ git checkout main
```

Create a new file called `config.py`:

```python
# Configuration file
DATABASE_URL = "postgresql://user:password@localhost:5432/mydb"
API_KEY = "your-api-key-here"
```

Commit the changes:

```bash
$ git add config.py
$ git commit -m "Add config file"
```

### Merge Feature Branch into Main

```bash
$ git merge feature/add-data-validation
```

## 3. Demonstrate Git Conflicts

### Create and Switch to New Feature Branch

```bash
$ git checkout main
$ git checkout -b feature/update-config
```

Update `config.py`:

```python
# Configuration file
DATABASE_URL = "postgresql://user:password@localhost:5432/production_db"
API_KEY = "production-api-key-here"
LOG_LEVEL = "INFO"
```

Commit the changes:

```bash
$ git add config.py
$ git commit -m "Update config for production"
```

### Make Changes in Main Branch

Switch to main branch:

```bash
$ git checkout main
```

Update `config.py`:

```python
# Configuration file
DATABASE_URL = "postgresql://user:password@localhost:5432/mydb"
API_KEY = "your-api-key-here"
DEBUG_MODE = True
```

Commit the changes:

```bash
$ git add config.py
$ git commit -m "Add debug mode to config"
```

### Attempt to Merge Feature Branch into Main

```bash
$ git merge feature/update-config
```

This will result in a merge conflict. Resolve the conflict by editing `config.py`:

```python
# Configuration file
DATABASE_URL = "postgresql://user:password@localhost:5432/production_db"
API_KEY = "production-api-key-here"
LOG_LEVEL = "INFO"
DEBUG_MODE = True
```

Commit the resolved conflict:

```bash
$ git add config.py
$ git commit -m "Resolve merge conflict in config.py"
```

This README demonstrates various Git merge scenarios, including fast-forward merges, auto-merges, and resolving conflicts.
```

Would you like me to explain or break down any part of this README?