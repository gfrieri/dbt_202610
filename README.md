# dbt_202610

Working project for the Data Transformation class during the 2026-10 period.

## Setup

### Create a virtual environment and activate it

```
python -m venv venv
```

```
source venv/scripts/activate # On Windows
```

### Install dbt

```
pip install dbt-bigquery
```

or

```
pip install -r requirements.txt
```

## General dbt commands

#### Run the dbt project

```
dbt run
```

#### Test the dbt project

```
dbt test
```

#### Build ALL the dbt project

```
dbt build
```

#### Generate documentation for the dbt project

```
dbt docs generate
```

#### Serve the documentation for the dbt project

```
dbt docs serve
```
