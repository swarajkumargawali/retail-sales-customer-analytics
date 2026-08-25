from pathlib import Path
import urllib.request

DATA_DIR = Path("data")
DATA_DIR.mkdir(exist_ok=True)

url = "https://raw.githubusercontent.com/zpio/datasets/main/sample_superstore.csv"
out = DATA_DIR / "Sample-Superstore.csv"

print("Downloading public Superstore CSV mirror...")
urllib.request.urlretrieve(url, out)
print(f"Saved to: {out.resolve()}")
print("For your final README, cite Tableau as the primary dataset source.")
