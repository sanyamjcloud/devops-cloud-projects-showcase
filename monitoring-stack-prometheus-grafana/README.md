
# Local DevOps Sandbox (Monitoring Lite Version)

## Overview
This project demonstrates a **local DevOps sandbox** for monitoring using **Prometheus and Grafana** with Docker Compose.  
It provides a quick, hands-on environment to simulate DevOps monitoring workflows.

## Features
- Prometheus metrics monitoring
- Grafana dashboards visualization
- Lightweight, local setup via Docker Compose
- Beginner-friendly and production-ready structure

## Tools & Technologies
- Docker & Docker Compose
- Prometheus
- Grafana

## How to Run Locally

1. Open **PowerShell** or **CMD** in the project folder:
cd "C:\Users\SANYAM JAIN\Documents\devops-cloud-projects\local-devops-sandbox"
docker-compose up -d
Access the tools:
Prometheus: http://localhost:9090
Grafana: http://localhost:3000
Default login: admin / admin
In Grafana:
Add Prometheus as a data source (http://localhost:9090)
Create a simple dashboard panel with query: up
Deliverables
docker-compose.yml
prometheus.yml

Screenshots:
Docker containers running
Prometheus targets dashboard
Grafana dashboard panel
Project Structure

local-devops-sandbox/
├── docker-compose.yml
├── prometheus.yml
└── screenshots/
    ├── 01_docker_containers.png
    ├── 02_prometheus_targets.png
    └── 03_grafana_dashboard.png
