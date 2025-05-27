# day2_internship

# DevOps Internship - Task 2: Simple Jenkins CI/CD Pipeline



## Tools Used
* **Jenkins:** For continuous integration and continuous delivery[cite: 3].
* **Docker:** For containerizing the application and creating reproducible environments[cite: 3].
* **Git & GitHub:** For version control and hosting the repository, enabling webhook integration.
* **Localtunnel:**  Used to expose the local Jenkins instance to the public internet, allowing GitHub webhooks to trigger builds.

## Project Structure
The repository contains the following structure:

├── Dockerfile
├── Jenkinsfile
├── index.js
├── package.json
└── README.md


## Application Details
The application is a simple Node.js web server that listens on port `3000` and serves a basic "Hello World" message.


* **Run Docker Container:** Stops any existing container, removes it, and then runs a new container from the newly built image, mapping port 80 on the host to port 3000 in the container.
    * `docker stop my-app-container || true`
    * `docker rm my-app-container || true`
    * `docker run -d --name my-app-container -p 80:3000 my-devops-app:latest`



## Outcome
<img width="1278" alt="Screenshot 2025-05-27 at 7 41 27 PM" src="https://github.com/user-attachments/assets/fd3c2a83-2459-46a0-a553-bc3f097ea6ce" />
<img width="1440" alt="Screenshot 2025-05-27 at 7 40 38 PM" src="https://github.com/user-attachments/assets/dd43e023-746f-4055-993e-5040870f4f6f" />
<img width="1440" alt="Screenshot 2025-05-27 at 7 40 28 PM" src="https://github.com/user-attachments/assets/fd043b56-8f41-4b63-96e3-b8dcf80af83e" />

