# FastAPI DevOps Demo 🚀

A professional-grade FastAPI application demonstrating a complete DevOps lifecycle, including automated testing, multi-stage Docker builds, and CI/CD integration.

## 🛠 Features
- **FastAPI**: Modern, high-performance web framework for building APIs.
- **Pytest**: Automated unit testing for reliable deployments.
- **Multi-Stage Docker**: Optimized images that separate the build, test, and runtime environments.
- **GitHub Actions**: 
  - **CI/CD Pipeline**: Automatically tests and pushes Docker images to GHCR (GitHub Container Registry).
  - **Docs Pipeline**: Automatically deploys project documentation to GitHub Pages.

---

## 📁 Project Structure
```text
fastapi-devops-demo/
├── .github/workflows/  # Automation pipelines (CI/CD & Docs)
├── app/               # FastAPI application & tests
├── docs/              # Jekyll documentation source
├── Dockerfile         # Multi-stage container recipe
└── requirements.txt   # Python dependencies
```

---

## 🚀 Local Development

### 1. Setup Environment
```bash
python -m venv venv

# Windows
.\venv\Scripts\activate

# Linux/Mac
source venv/bin/activate

pip install -r requirements.txt
```

### 2. Run Tests
```bash
python -m pytest
```

### 3. Run Application
```bash
uvicorn app.main:app --reload
```

View the API at `http://localhost:8000`.

---

## 🐳 Docker Deployment

To build the production-ready image locally:
```bash
docker build -t fastapi-devops-demo .
```

To run the container:
```bash
docker run -p 8000:8000 fastapi-devops-demo
```

---

## 📦 CI/CD & Artifacts
- **Docker Images**: Hosted on GitHub Container Registry (GHCR).
- **Documentation**: Hosted on GitHub Pages.

---

## 📝 Pro Tips
1. **Replace Placeholders**: Search and replace `YOUR_USERNAME` with your actual GitHub username so the links work.
2. **Add Status Badges**: Once your actions are running:
   - Go to your **Actions** tab
   - Select **CI/CD Pipeline**
   - Click the **three dots (...)** in the top right → **Create status badge**
   - Copy the Markdown and paste it at the top of your README

---

**Created as part of the John Bryce DevOps Task.**