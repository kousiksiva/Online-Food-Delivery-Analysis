import pandas as pd

# Fetch raw data (CSV simulation)
def fetch_data():
    df = pd.read_csv("data/raw_data.csv")
    print("Raw data loaded successfully")
    print("Shape:", df.shape)
    return df

if __name__ == "__main__":
    fetch_data()
