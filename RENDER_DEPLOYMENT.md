# Render.com Deployment Guide

## Step 1: Push to GitHub (if not already done)

Your code is already on GitHub at: https://github.com/prabhu5211/Chatiafy

## Step 2: Sign Up for Render

1. Go to https://render.com
2. Click "Get Started for Free"
3. Sign up with GitHub (recommended)

## Step 3: Create a New Web Service

1. Click "New +" button in the top right
2. Select "Web Service"
3. Connect your GitHub account if not already connected
4. Select your repository: `prabhu5211/Chatiafy`
5. Click "Connect"

## Step 4: Configure the Service

Fill in these settings:

- **Name**: `chatify` (or any name you prefer)
- **Region**: Choose closest to you
- **Branch**: `master`
- **Root Directory**: Leave empty (or `.`)
- **Runtime**: `Node`
- **Build Command**: `npm install && npm run build`
- **Start Command**: `npm start`
- **Instance Type**: `Free`

## Step 5: Add Environment Variables

Click "Advanced" and add these environment variables:

```
MONGO_URI=mongodb+srv://prabhukiran0977_db_user:V4brYieQNDg44AnP@cluster0.oxt0gw3.mongodb.net/?appName=Cluster0
NODE_ENV=production
JWT_SECRET=5a88e7a4c447fd7cb2266d18faac9670d851e9121c7ef4a642a37f3753df2370
RESEND_API_KEY=re_gRG9LHpq_NUWxnHfmGvZJDjW9vZFmAKvE
EMAIL_FROM=onboarding@resend.dev
EMAIL_FROM_NAME=Chatify
CLIENT_URL=https://chatify.onrender.com
CLOUDINARY_CLOUD_NAME=dpx28dlc5
CLOUDINARY_API_KEY=129341945995989
CLOUDINARY_API_SECRET=qYFjeEqwuXmvZC7dqT1USkDNPMI
ARCJET_KEY=ajkey_01kajffpejfwmttvp474z81r82
ARCJET_ENV=production
```

**Note**: Update `CLIENT_URL` with your actual Render URL after deployment!

## Step 6: Deploy

1. Click "Create Web Service"
2. Wait 5-10 minutes for the build to complete
3. Your app will be live at: `https://your-app-name.onrender.com`

## Step 7: Update CLIENT_URL

1. After deployment, copy your Render URL
2. Go to Environment tab in Render dashboard
3. Update `CLIENT_URL` to your actual URL
4. Save changes (it will auto-redeploy)

## Done! 🎉

Your Chatify app is now live with full WebSocket support!

**Note**: Free tier may spin down after inactivity. First request might take 30-60 seconds to wake up.
