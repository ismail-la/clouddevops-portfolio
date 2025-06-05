# ismail-lahbari Portfolio

🚀 **Personal portfolio website** built with Next.js, TypeScript, Tailwind CSS, shadcn/ui, and an AI-powered chatbot. Showcasing my projects, skills, experience, and contact—all in a modern, responsive design.

---

## ⚙️ DevOps & DevSecOps

- **CI/CD:** Automated build, security scan, and Docker image push using GitHub Actions and Azure Pipelines.
- **Containerization:** Production-ready multi-stage Dockerfile for efficient, secure images.
- **Security:**
  - Node.js dependency audit (`npm audit`) in every pipeline run.
  - Docker image vulnerability scanning with [Trivy](https://github.com/aquasecurity/trivy-action).
  - Vulnerabilities in the base image are ignored or documented using `.trivyignore`.
- **Infrastructure as Code:**
  - Terraform scripts in `/infra/terraform` for cloud provisioning.
- **Best Practices:**
  - No secrets or `.env` files in Docker images.
  - Only production dependencies installed in final image.
  - Automated linting and type-checking (see `.github/workflows/`).

## 🟦 Azure Pipelines

This project includes an [Azure Pipelines](https://azure.microsoft.com/en-us/products/devops/pipelines/) configuration for CI/CD and DevSecOps:

- **Builds and pushes Docker images** to Docker Hub using a secure service connection.
- **Runs security checks**:
  - `npm audit --audit-level=high` for Node.js dependencies.
  - [Trivy](https://github.com/aquasecurity/trivy) scan for Docker image vulnerabilities.
- **Follows best practices**:
  - Only production dependencies in the final image.
  - No secrets or `.env` files in the image.
  - Infrastructure as Code with Terraform (see `/infra/terraform`).

**Pipeline file:**  
`.azure-pipelines.yml`

**Example pipeline steps:**
```yaml
- task: Docker@2
  displayName: "Build and Push Docker Image"
  inputs:
    containerRegistry: "dockerhub-connection"
    repository: "$(dockerId)/$(imageName)"
    command: buildAndPush
    Dockerfile: "Dockerfile"
    buildContext: "$(Build.SourcesDirectory)"
    tags: |
      latest

- script: npm audit --audit-level=high
  displayName: "Audit Node.js dependencies"

- script: |
    curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh
    ./trivy image $(dockerId)/$(imageName):latest --exit-code 1 --severity HIGH,CRITICAL
  displayName: "Scan Docker image with Trivy"
```
**To run the pipeline:**  

- Push to the `devops` branch (see `trigger` in `.azure-pipelines.yml`).
- Monitor results in Azure DevOps.

---

**You can copy-paste this section into your README.md to clearly document your Azure Pipelines DevOps/DevSecOps setup!**
---

## 🌟 Live Demo

[https://ismail-lahbari.vercel.app/](https://ismail-lahbari.vercel.app/)

---

## ✨ Features

- **Modern Tech Stack:** Next.js (App Router), TypeScript, Tailwind CSS, shadcn/ui
- **AI Chatbot:** Floating assistant powered by LLM API
- **Responsive Design:** Mobile-first, dark mode support
- **Animated UI:** Framer Motion for smooth transitions
- **Projects Showcase:** Cards with live demos & GitHub links
- **Experience Timeline:** Roles, companies, and achievements
- **Skills Grid:** Filterable, with tooltips
- **Contact Form:** Next.js API route + SendGrid
- **SEO Optimized:** Metadata, sitemap.xml
- **Deployed on Vercel**

---

## 🛠️ Tech Stack

- **Styling/UI:** Tailwind CSS, shadcn/ui
- **Framework:** Next.js (latest), TypeScript
- **Animation:** Framer Motion
- **AI:** React chatbot widget, LLM API
- **Backend:** Next.js API routes
- **Email:** SendGrid
- **Deployment:** Vercel, Docker, GitHub Actions, Azure Pipelines
- **IaC:** Terraform

## 📁 Folder Structure

```text
/
├─ app/                  # Next.js App Router
│  ├─ layout.tsx
│  └─ page.tsx
├─ components/
│  ├─ Navbar.tsx
│  ├─ HeroSection.tsx
│  ├─ SkillsSection.tsx
│  ├─ ProjectsSection.tsx
│  ├─ ExperienceSection.tsx
│  ├─ AboutSection.tsx
│  ├─ ContactSection.tsx
│  └─ ChatWidget.tsx
├─ lib/
│  └─ constants.ts
├─ public/               # Static assets (images, etc.)
├─ styles/               # Tailwind + shadcn config
│  └─ tailwind.config.js
├─ infra/
│   └─ terraform/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── .github/
│   └── workflows/
│       └── docker-build.yml (CI/CD pipeline)
├── Dockerfile (to containerize portfolio)
├── next.config.js
├── package.json
```

---

## 🚀 Getting Started

1. **Clone the repo:**

   ```bash
   git clone https://github.com/ismail-la/Portfolio-Nextjs-AI.git
   cd Portfolio-Nextjs-AI
   ```

2. **Install dependencies:**

   ```bash
   npm install
   ```

3. **Set up environment variables:**

   ```bash
   cp .env.example .env
   # Fill in your API keys
   ```

4. **Run locally:**

   ```bash
   npm run dev
   ```

5. **Build & Run with Docker:**

   ```bash
   docker build -t portfolio .
   docker run -p 3000:3000 portfolio
   ```

6. **Deploy to Vercel or your cloud provider.**

---

## 📬 Contact

Feel free to reach out via LinkedIn or use the contact form on the website!
