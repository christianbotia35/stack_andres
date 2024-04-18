import mlflow
import mlflow.sklearn
from sklearn.datasets import load_boston
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

# Load Boston housing dataset
boston = load_boston()
X_train, X_test, y_train, y_test = train_test_split(boston.data, boston.target, test_size=0.2, random_state=42)

# Train a simple linear regression model
model = LinearRegression()
model.fit(X_train, y_train)

# Evaluate the model
y_pred = model.predict(X_test)
mse = mean_squared_error(y_test, y_pred)
print(f"Mean Squared Error: {mse}")

mlflow_url = "http://mlflow-server-service.mlflow:5000"
mlflow.set_tracking_uri(mlflow_url)
mlflow.set_experiment('boston-model')
# Log the model and parameters in MLflow
# with mlflow.start_run():
    # Log parameters
mlflow.log_param("test_size", 0.2)
mlflow.log_param("random_state", 42)

# Log metrics
mlflow.log_metric("mean_squared_error", mse)

# Log model
mlflow.sklearn.log_model(model, "linear_regression_model")
mlflow.end_run()

