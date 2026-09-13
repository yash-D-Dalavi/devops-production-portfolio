# ?? Production-Grade Multi-Container DevOps Cloud Infrastructure

An enterprise-ready, microservices-based cloud deployment architecture built with **Docker Compose**, **Nginx Reverse Proxy**, **PostgreSQL**, **Redis**, **Prometheus**, **Grafana**, and **GitHub Actions CI/CD**.

---

## ??? System Architecture Overview

`	ext
               +-----------------------------------------+
               |        Nginx Reverse Proxy (Port 80)     |
               +--------------------+--------------------+
                                    |
            +-----------------------+-----------------------+
            |                                               |
            v                                               v
+-----------------------+                       +-----------------------+
|  Frontend UI (Nginx)  |                       |  Backend Microservice |
|       (Port 80)       |                       |      (Node.js:5000)   |
+-----------------------+                       +-----------+-----------+
                                                            |
                                        +-------------------+-------------------+
                                        |                                       |
                                        v                                       v
                            +-----------------------+               +-----------------------+
                            | PostgreSQL Database   |               |   Redis Cache Engine  |
                            |      (Port 5432)      |               |      (Port 6379)      |
                            +-----------------------+               +-----------------------+

                                  Telemetry & Observability:
                                  Prometheus (9090) <---> Grafana (3000)

