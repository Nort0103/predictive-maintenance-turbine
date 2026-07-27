# 1. Choose the base operating system (A lightweight version of Python 3.10)
FROM python:3.12-slim

# 2. Set the working directory inside the virtual container
WORKDIR /app

# 3. Copy the "shopping list" into the container
COPY requirements.txt .

# 4. Install the required libraries from the list
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of your project files (like the .joblib model) into the container
COPY . .

# 6. Run a quick test to prove the AI model loads inside the container
CMD ["python", "-c", "import joblib; model = joblib.load('random_forest_rul_model.joblib'); print('Success! The Turbine AI is alive inside Docker!')"]