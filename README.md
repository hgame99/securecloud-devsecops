# SecureCloud — Azure Cloud Security & DevSecOps Lab

**English | Español**

## English

### Project Overview

SecureCloud is a hands-on Cloud Security and DevSecOps portfolio project developed using Microsoft Azure, Terraform, Linux, and GitHub.

The main objective is to design, deploy, secure, monitor, and automate cloud infrastructure by applying industry-standard security practices.

This project is being developed as a practical learning environment to demonstrate technical skills relevant to Cloud Security Engineering, DevSecOps, and Infrastructure as Code (IaC).

### Project Objectives

- Deploy cloud infrastructure using Terraform.
- Apply Infrastructure as Code (IaC) principles.
- Implement cloud security best practices.
- Automate infrastructure validation and security scanning.
- Build CI/CD pipelines using GitHub Actions.
- Deploy secure containerized applications.
- Implement cloud monitoring and incident detection.

### Technology Stack

| Technology | Purpose |
|---|---|
| Microsoft Azure | Cloud infrastructure |
| Terraform | Infrastructure as Code |
| Ubuntu Linux / WSL | Development environment |
| Azure CLI | Cloud resource management |
| Git & GitHub | Version control |

**Planned Technologies:** Python, FastAPI, Docker, GitHub Actions, Checkov, Trivy, and Azure Monitor.

### Current Infrastructure

The first infrastructure deployment was successfully completed using Terraform.

| Resource | Name | Region | Status |
|---|---|---|---|
| Resource Group | rg-securecloud-dev | East US 2 | Deployed |

### Project Roadmap

- [x] Configure Ubuntu WSL development environment.
- [x] Configure Azure CLI authentication.
- [x] Install and initialize Terraform.
- [x] Define Azure infrastructure using Terraform.
- [x] Deploy the first Azure Resource Group.
- [x] Validate the deployment using Azure CLI.
- [ ] Configure GitHub repository.
- [ ] Implement security scanning with Checkov.
- [ ] Configure CI/CD with GitHub Actions.
- [ ] Develop a Python FastAPI application.
- [ ] Containerize the application with Docker.
- [ ] Deploy the application to Azure.
- [ ] Implement monitoring and security alerts.
- [ ] Document security testing and incident response.

### Security Practices

- Infrastructure is managed through Terraform.
- Terraform state files are excluded from version control.
- Cloud credentials are not hardcoded in Terraform configuration.
- Provider dependencies are tracked using `.terraform.lock.hcl`.
- Infrastructure changes are reviewed before deployment.

### Project Status

**In Development — Phase 1: Infrastructure as Code**

This project is intended for educational purposes and to demonstrate practical Cloud Security and DevSecOps skills.

---

## Español

### Descripción del proyecto

SecureCloud es un proyecto práctico de portafolio profesional enfocado en Cloud Security y DevSecOps, desarrollado utilizando Microsoft Azure, Terraform, Linux y GitHub.

Su objetivo principal es diseñar, desplegar, proteger, monitorear y automatizar infraestructura en la nube, aplicando buenas prácticas de seguridad utilizadas en entornos profesionales.

Este proyecto se desarrolla como un laboratorio de aprendizaje práctico para demostrar competencias técnicas relacionadas con ingeniería de seguridad en la nube, DevSecOps e infraestructura como código (IaC).

### Objetivos del proyecto

- Desplegar infraestructura en Azure utilizando Terraform.
- Aplicar principios de infraestructura como código (IaC).
- Implementar buenas prácticas de seguridad en la nube.
- Automatizar validaciones y análisis de seguridad.
- Construir pipelines CI/CD mediante GitHub Actions.
- Desplegar aplicaciones seguras mediante contenedores.
- Implementar monitoreo y detección de incidentes.

### Tecnologías utilizadas

| Tecnología | Función |
|---|---|
| Microsoft Azure | Infraestructura en la nube |
| Terraform | Infraestructura como código |
| Ubuntu Linux / WSL | Entorno de desarrollo |
| Azure CLI | Administración de recursos |
| Git y GitHub | Control de versiones |

**Tecnologías planificadas:** Python, FastAPI, Docker, GitHub Actions, Checkov, Trivy y Azure Monitor.

### Infraestructura actual

Se completó exitosamente el primer despliegue de infraestructura utilizando Terraform.

| Recurso | Nombre | Región | Estado |
|---|---|---|---|
| Grupo de recursos | rg-securecloud-dev | East US 2 | Desplegado |

### Hoja de ruta del proyecto

- [x] Configurar Ubuntu WSL.
- [x] Configurar la autenticación con Azure CLI.
- [x] Instalar e inicializar Terraform.
- [x] Definir infraestructura Azure mediante Terraform.
- [x] Desplegar el primer grupo de recursos.
- [x] Verificar el despliegue utilizando Azure CLI.
- [ ] Configurar el repositorio GitHub.
- [ ] Implementar análisis de seguridad con Checkov.
- [ ] Configurar CI/CD con GitHub Actions.
- [ ] Desarrollar una aplicación con Python y FastAPI.
- [ ] Crear contenedores con Docker.
- [ ] Desplegar la aplicación en Azure.
- [ ] Implementar monitoreo y alertas de seguridad.
- [ ] Documentar pruebas de seguridad y respuesta a incidentes.

### Prácticas de seguridad

- La infraestructura se administra mediante Terraform.
- Los archivos de estado de Terraform se excluyen del control de versiones.
- Las credenciales de Azure no se escriben directamente en el código.
- Las dependencias del proveedor se registran mediante `.terraform.lock.hcl`.
- Los cambios de infraestructura se revisan antes de su despliegue.

### Estado del proyecto

**En desarrollo — Fase 1: Infraestructura como código**

Este proyecto tiene fines educativos y busca demostrar habilidades prácticas en seguridad de infraestructura cloud y DevSecOps.

---

## License / Licencia

License not yet defined. All rights reserved.

Licencia aún no definida. Todos los derechos reservados.
