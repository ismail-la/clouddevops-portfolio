# ismail-lahbari Portfolio

<!-- cSpell:ignore lahbari -->

🚀 **Personal portfolio website** built with Next.js, TypeScript, Tailwind CSS, shadcn/ui, and an AI-powered chatbot. Showcasing my projects, skills, experience, and contact—all in a modern, responsive design.

## 🌟 Live Demo

[https://ismail-lahbari.vercel.app/](https://ismail-lahbari.vercel.app/)

---

## ✨ Features

- **Modern Tech Stack:** Next.js (App Router), TypeScript, Tailwind CSS, shadcn/ui
<!-- cSpell:ignore shadcn -->
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
<!-- cSpell:ignore shadcn -->
- **Framework:** Next.js (latest), TypeScript
- **Styling/UI:** Tailwind CSS, shadcn/ui
- **Animation:** Framer Motion
- **AI:** React chatbot widget, LLM API
- **Backend:** Next.js API routes
- **Email:** SendGrid
- **Deployment:** Vercel

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
└─ ├── infra/
│   └── terraform/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── .github/
│   └── workflows/
│       └── deploy.yml (CI/CD pipeline to be created)
│
├── Dockerfile (to containerize portfolio)
├── next.config.js
├── package.json
```

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
   Copy .env.example to .env and fill in your API keys.
   ```

4. **Run locally:**

   ```bash
   npm run dev
   ```

5. **Deploy to Vercel:**

   Push to GitHub and connect to Vercel for instant deployment.

## 📬 Contact

Feel free to reach out via LinkedIn or use the contact form on the website!
