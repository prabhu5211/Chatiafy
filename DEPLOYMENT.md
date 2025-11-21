# Vercel Deployment Guide

## Step 1: Push to GitHub

1. Initialize git (if not already done):
```bash
cd chatify
git init
git add .
git commit -m "Initial commit - Chatify app ready for deployment"
```

2. Create a new repository on GitHub and push:
```bash
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git branch -M main
git push -u origin main
```

## Step 2: Deploy to Vercel

1. Go to https://vercel.com and sign in with GitHub
2. Click "Add New Project"
3. Import your GitHub repository
4. Configure the project:
   - **Framework Preset**: Other
   - **Root Directory**: `./` (leave as default)
   - **Build Command**: `npm run build`
   - **Output Directory**: `frontend/dist`
   - **Install Command**: `npm install`

## Step 3: Add Environment Variables

In Vercel project settings, add these environment variables:

```
PORT=3000
MONGO_URI=mongodb+srv://prabhukiran0977_db_user:V4brYieQNDg44AnP@cluster0.oxt0gw3.mongodb.net/?appName=Cluster0
NODE_ENV=production
JWT_SECRET=5a88e7a4c447fd7cb2266d18faac9670d851e9121c7ef4a642a37f3753df2370
RESEND_API_KEY=re_gRG9LHpq_NUWxnHfmGvZJDjW9vZFmAKvE
EMAIL_FROM=onboarding@resend.dev
EMAIL_FROM_NAME=Chatify
CLIENT_URL=https://your-app-name.vercel.app
CLOUDINARY_CLOUD_NAME=dpx28dlc5
CLOUDINARY_API_KEY=129341945995989
CLOUDINARY_API_SECRET=qYFjeEqwuXmvZC7dqT1USkDNPMI
ARCJET_KEY=ajkey_01kajffpejfwmttvp474z81r82
ARCJET_ENV=production
```

**IMPORTANT**: After deployment, update `CLIENT_URL` with your actual Vercel URL!

## Step 4: Deploy

Click "Deploy" and wait for the build to complete.

## Step 5: Update CLIENT_URL

1. After deployment, copy your Vercel URL (e.g., `https://chatify-xyz.vercel.app`)
2. Go to Vercel project settings → Environment Variables
3. Update `CLIENT_URL` to your actual Vercel URL
4. Redeploy the project

## Done! 🎉

Your Chatify app is now live on Vercel!
