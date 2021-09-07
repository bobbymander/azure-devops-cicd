from locust import HttpUser, task

class PredictApp(HttpUser):
    @task
    def predict(self):
        self.client.get("/predict")
