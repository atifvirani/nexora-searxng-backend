# 🚀 NEXORA SearXNG Backend for Render

This folder contains the headless SearXNG backend configuration ready to deploy on **[Render.com](https://render.com)** as a free Docker Web Service.

## 📁 Files
- `Dockerfile`: Pulls the official SearXNG image, injects our settings, and configures port 8080.
- `settings.yml`: Pre-configured with:
  - Standalone mode (`limiter: false` — no Redis required)
  - `formats: [html, json]` enabled for fast API consumption
  - `image_proxy: true` for image search thumbnails
  - Google Autocomplete enabled
  - Robust engines configured (DuckDuckGo, Brave, Bing, Wikipedia, GitHub, etc.)

## 🌐 How to Deploy to Render in 3 Steps:

1. **Push this code to GitHub** (either as part of your main NEXORA repo or as a standalone repo with these 2 files).
2. Go to **[dashboard.render.com](https://dashboard.render.com)** -> **New +** -> **Web Service**.
   - Connect your GitHub repository.
   - **Environment / Runtime**: `Docker`
   - If deploying from the main NEXORA repo, set **Root Directory**: `searxng`.
   - **Environment Variables**:
     - Key: `PORT`, Value: `8080`
   - **Health Check Path**: `/healthz`
   - **Instance Type**: `Free`
3. Click **Deploy Web Service**.
   - Once deployed, copy your Render URL (e.g., `https://your-service-name.onrender.com`).
