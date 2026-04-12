# Self-Healing Infrastructure with Docker and NGINX

## Overview
This project implements a self-healing infrastructure mechanism using Docker, NGINX, and cron-based automation.

The system continuously monitors service health and automatically restores failed services, ensuring higher availability without manual intervention.

---

## Problem
In production environments, service failures can lead to downtime if not detected and handled quickly. Manual recovery is inefficient and increases system unavailability.

---

## Solution
A lightweight self-healing mechanism was implemented to:
- Monitor service health at regular intervals
- Detect failure conditions automatically
- Restart failed services without human intervention

---

## Architecture
- NGINX running inside a Docker container
- Cron job executing periodic health checks
- Bash script handling detection and recovery
- Logging mechanism for tracking recovery events

---

## Key Features
- Automated service monitoring
- Self-healing using Bash scripting
- Cron-based scheduled checks (every minute)
- Containerized deployment using Docker
- Logging for recovery verification

---

## Project Structure
self-healing-docker-nginx-setup/
├── Dockerfile
├── self_heal.sh
├── self_heal.cron
├── README.md
└── screenshots/


---

## How It Works
1. NGINX runs inside a Docker container  
2. A cron job executes every minute  
3. The script checks if NGINX is running  
4. If the service is down, it is automatically restarted  
5. Logs are generated to track recovery events  

---

## Setup & Execution

### Build Docker Image
```bash
docker build -t self-healing-nginx .

```
Run Container
docker run -d -p 8080:80 --name self-heal-app self-healing-nginx

Access Application
http://localhost:8080

Self-Healing Test
Step 1: Stop NGINX manually
docker exec -it self-heal-app service nginx stop

Step 2: Wait for cron execution (~1 minute)

Step 3: Verify recovery
Refresh browser → service restored

Check logs:
docker exec -it self-heal-app cat /var/log/self_heal.log
