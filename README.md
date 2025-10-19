# Delaware Bathrooms - Public Static Site

**Version:** 1.0.0  
**Last Updated:** October 19, 2025 at 11:05 AM UTC-04:00  
**Status:** Phase 1 - Setup & Infrastructure

---

## 📋 Overview

This repository contains the **static public website** for Delaware Bathrooms, generated automatically from the admin CMS.

**Architecture:**
- **Admin/CMS:** Runs locally on developer machine (SvelteKit)
- **Static Site:** This repository (pure HTML/CSS/JS)
- **Hosting:** AWS Amplify (free tier)
- **Deployment:** Automatic on Git push

---

## 🏗️ Project Structure

```
delawarebathrooms-public/
├── index.html              # Home page
├── services/               # Services pages (to be generated)
├── projects/               # Project portfolio (to be generated)
├── blog/                   # Blog posts (to be generated)
├── gallery.html            # Photo gallery (to be generated)
├── contact.html            # Contact page (to be generated)
├── assets/                 # Static assets
│   ├── css/               # Stylesheets
│   ├── js/                # JavaScript
│   └── images/            # Static images
├── media/                  # Generated media files
│   └── uploads/           # Copied from CMS
├── sitemap.xml            # SEO sitemap (to be generated)
├── robots.txt             # SEO robots file (to be generated)
└── amplify.yml            # AWS Amplify build configuration
```

---

## 🚀 Deployment

### **Automatic Deployment:**
1. Admin generates static site from CMS
2. Commits and pushes to this repository
3. AWS Amplify detects push via webhook
4. Amplify builds and deploys (1-2 minutes)
5. Public site updated on CDN

### **Manual Deployment:**
```bash
# From admin CMS (local machine)
npm run generate-static
git add .
git commit -m "Update: [description]"
git push origin main
```

---

## 📊 Phase Status

### ✅ Phase 1: Setup & Infrastructure (Current)
- [x] GitHub repository created
- [x] Basic static site structure
- [ ] AWS Amplify connected
- [ ] Deployment pipeline tested

### ⏳ Future Phases:
- Phase 2: Data Extraction Layer (3-4 hours)
- Phase 3: HTML Template Engine (4-5 hours)
- Phase 4: Static Site Generator Core (3-4 hours)
- Phase 5: Admin UI for Generation (2-3 hours)
- Phase 6: GitHub Integration (2-3 hours)
- Phase 7: Contact Form Integration (1-2 hours)
- Phase 8: Testing & Optimization (2-3 hours)
- Phase 9: Documentation & Training (1-2 hours)

---

## 🔗 Related Repositories

- **Admin CMS:** [delawarebathrooms](https://github.com/bicentennial/delawarebathrooms) (private)
- **Public Site:** This repository (public)

---

## 📝 Notes

- This site is **generated automatically** - do not edit files manually
- All content comes from the admin CMS database
- Media files are copied from the CMS media service
- Deployment is manual (admin-triggered) for full control

---

## 💰 Hosting Cost

**AWS Amplify Free Tier:**
- Build minutes: 1,000/month
- Hosting: 15 GB served/month
- Data transfer: 15 GB/month

**Expected Cost:** $0-5/month (likely free)

---

**Version:** 1.0.0  
**Last Updated:** October 19, 2025 at 11:05 AM UTC-04:00  
**Status:** Phase 1 - Infrastructure Setup
