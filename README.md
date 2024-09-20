# IaC - Provisionamento do EKS na AWS com Terraform

## Geral
Este repositório contém a Infraestrutura como Código (IaC) utilizando Terraform para provisionar um cluster Amazon Elastic Kubernetes Service (EKS) juntamente com uma Virtual Private Cloud (VPC) na AWS para o projeto do Tech Challenge. Esta configuração visa criar um ambiente Kubernetes escalável e seguro para rodar aplicações conteinerizadas.

A pipeline de CI/CD é gerenciado pelo GitHub Actions para automatizar o processo de aplicação do Terraform.

## Funcionalidades
- Cluster Amazon EKS: Provisiona um cluster Kubernetes totalmente gerenciado na AWS.
- VPC Personalizada: Cria uma VPC com sub-redes privadas e públicas.
- Auto-escalonamento: Configura grupos de auto-escalonamento para os nós de trabalho, gerenciando a capacidade conforme a demanda.

## Passos para provisionar a infra manualmente:
- Adicionar as credenciais de acesso em `~/.aws/credentials`
- Inicialize o Terraform:
  ```bash
  terraform init
  ```
- Planeje a infraestrutura:
  ```bash
  terraform plan
  ```
- Aplique o plano:
  ```bash
  terraform apply
    ```

