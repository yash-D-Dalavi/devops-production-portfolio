# 🚀 Production-Grade Multi-Container DevOps Cloud Infrastructure

An enterprise-ready, microservices-based cloud deployment architecture built with **Docker Compose**, **Nginx Reverse Proxy**, **PostgreSQL**, **Redis**, **Prometheus**, **Grafana**, and **GitHub Actions CI/CD**.

---

## 🏗️ System Architecture Overview

```
           +-----------------------------------------+
           |      Nginx Reverse Proxy (Port 80)       |
           +--------------------+----------------------+
                                |
        +-----------------------+-----------------------+
        |                                               |
        v                                               v
+-----------------------+                     +-----------------------+
| Frontend UI (Nginx)   |                     | Backend Microservice  |
| (Port 80)             |                     | (Node.js:5000)        |
+-----------------------+                     +-----------+-----------+
                                                           |
                                    +----------------------+----------------------+
                                    |                                             |
                                    v                                             v
                        +-----------------------+                   +-----------------------+
                        | PostgreSQL Database   |                   | Redis Cache Engine    |
                        | (Port 5432)           |                   | (Port 6379)           |
                        +-----------------------+                   +-----------------------+

                              Telemetry & Observability:
                              Prometheus (9090) <---> Grafana (3000)
```

---

## 🛠️ Stack Components

* **Frontend:** Static Responsive Management Dashboard served via Nginx.
* **Backend API:** Node.js Express Microservice exposing `/api/health` telemetry.
* **Database & Caching:** PostgreSQL 16 (Persistent Storage) + Redis 7 (In-Memory Cache).
* **Reverse Proxy:** Production Nginx handling internal service routing and port forwarding.
* **Monitoring & Observability:** Prometheus collecting container metrics + Grafana visualizing real-time health dashboards.
* **Automation Scripts:** `backup.sh` (Database Backup Automation) & `deploy.sh` (Zero-Downtime Deployment).
* **CI/CD Pipeline:** GitHub Actions automated build and validation workflow.

---

## 🚀 Quick Deployment Guide

### Prerequisites
* Docker Desktop & Docker Compose v2+ installed
* Git CLI

### Local Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/yash-D-Dalavi/devops-production-portfolio.git
   cd devops-production-portfolio
   ```

2. Spin up the complete 7-container microservices stack:
   ```bash
   docker compose up -d --build
   ```

3. Access Endpoints:
   * Application Dashboard: `http://localhost`
   * Prometheus Engine: `http://localhost:9090`
   * Grafana Dashboards: `http://localhost:3000` (User: `admin`, Pass: `admin`)

---

## 🔒 Automation & Reliability

* **Database Backup:** Run `./backup.sh` to generate automated PostgreSQL dumps in `./database/backups`.
* **Zero-Downtime Deployment:** Run `./deploy.sh` for auto-pulling main branch, building images, and performing health checks.
