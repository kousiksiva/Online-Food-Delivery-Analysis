"""
2_clean_data.py
Cleans raw food delivery data and saves cleaned version
"""

import pandas as pd

def clean_data():
    df = pd.read_csv("data/raw_data.csv")

    # Remove duplicates
    df.drop_duplicates(inplace=True)

    # Handle missing values
    df.fillna({
        "Customer_Age": df["Customer_Age"].median(),
        "Delivery_Rating": df["Delivery_Rating"].mean(),
        "Cancellation_Reason": "Not Cancelled"
    }, inplace=True)

    # Create age group
    df["Customer_Age_Group"] = pd.cut(
        df["Customer_Age"],
        bins=[0, 25, 35, 45, 60, 100],
        labels=["<25", "25-35", "35-45", "45-60", "60+"]
    )

    df.to_csv("data/cleaned_data.csv", index=False)
    print("Cleaned data saved successfully")
    print("Shape:", df.shape)

if __name__ == "__main__":
    clean_data()
