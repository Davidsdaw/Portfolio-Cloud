# Tablas de ayuda
 
## Nombres de servicios y atributos comunes
 
| Servicio              | serviceName                  | Atributos comunes                       |
| --------------------- | ---------------------------- | --------------------------------------- |
| Kubernetes/OpenShift  | `containers-kubernetes`      | `serviceInstance`, `namespace`          |
| Cloud Object Storage  | `cloud-object-storage`       | `serviceInstance`, `bucket`             |
| VPC Infrastructure    | `is`                         | `resourceType`, `vpcId`, `region`       |
| PostgreSQL            | `databases-for-postgresql`   | `serviceInstance`, `resourceGroupId`    |
| MySQL                 | `databases-for-mysql`        | `serviceInstance`, `resourceGroupId`    |
| Secrets Manager       | `secrets-manager`            | `serviceInstance`                       |
| Key Protect           | `kms`                        | `serviceInstance`                       |
| Container Registry    | `container-registry`         | `namespace`, `region`                   |
| Code Engine           | `codeengine`                 | `resourceGroupId`                       |
| Event Streams (Kafka) | `messagehub`                 | `serviceInstance`                       |
 
---
 
## Número de políticas por servicio
 
| Servicio     | Patrón             | Justificación            |
| ------------ | ------------------ | ----------------------------- |
| Kubernetes   | ✅ 2 políticas      | Necesitan ver workers/cluster |
| COS          | ⚠️ 2 (recomendado) | Mejora UX, no crítico         |
| VPC red      | ✅ 2 políticas      | Necesitan ver contexto de VPC |
| VPC solo VSI | ❌ 1 política       | Solo gestionan VMs            |
| Databases    | ❌ 1 política       | Acceso directo a DB           |
| Secrets/Keys | ❌ 1 política       | Acceso directo a secretos     |
| Registry     | ❌ 1 política       | Acceso directo a imágenes     |
| Code Engine  | ⚠️ 2 (recomendado) | Ver proyectos ayuda           |