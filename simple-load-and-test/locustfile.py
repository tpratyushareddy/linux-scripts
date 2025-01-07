# Author: Pratyusha 


from locust import HttpUser, task, between 

class MyUser(HttpUser):
# Will wait 1 to 3 mins between tasks 
   wait_time = between(1, 3)

   def load_homepage(self):
       self.client.get("/")  # Simulates a GET request to the homepage
