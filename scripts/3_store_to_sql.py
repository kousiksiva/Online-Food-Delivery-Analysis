import pandas as pd
from sqlalchemy import create_engine

# Load cleaned data
df = pd.read_csv("data/cleaned_data.csv")
print("CSV loaded shape:", df.shape)

# MySQL connection (WITH DATABASE NAME)
engine = create_engine(
    "mysql+mysqlconnector://root:kousik9944A%40@localhost/food_delivery_db"
)


# Store data (recreate table)
df.to_sql(
    name="food_delivery_orders",
    con=engine,
    if_exists="replace",
    index=False
)

print("✅ Data inserted successfully")
