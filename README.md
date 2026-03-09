# TechnologyCrowd Pty Ltd - Website

Professional consulting website for cloud engineering, software development, and quality engineering services.

---

## 🚀 Quick Deploy (30 minutes)

### Step 1: Update LinkedIn URL
1. Open [index.html](index.html)
2. Find: `YOUR_PROFILE` (around line 158)
3. Replace with your LinkedIn username

### Step 2: Deploy to GitHub Pages

**Option A: Use Deploy Script (Easiest)**
```powershell
.\deploy.ps1
```

**Option B: Manual Commands**
```powershell
cd c:\Development\repositories\technology-crowd-website
git init
git add .
git commit -m "Deploy TechnologyCrowd website"

# First create repository at: https://github.com/new
# Name it: technology-crowd-website

git remote add origin https://github.com/YOUR_USERNAME/technology-crowd-website.git
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages
1. Go to: `https://github.com/YOUR_USERNAME/technology-crowd-website/settings/pages`
2. Source: `Deploy from a branch`
3. Branch: `main` / `/ (root)`
4. Click **Save**

**Live in 2-3 minutes:** `https://YOUR_USERNAME.github.io/technology-crowd-website/`

---

## 🌐 Add Custom Domain (technologycrowd.com.au)

### Buy Domain
- **Australian Registrars:** VentraIP, Crazy Domains, Netregistry
- **Cost:** $15-30 AUD/year

### Configure DNS
Add these records at your domain registrar:

```
Type: A
Name: @
Value: 185.199.108.153
Value: 185.199.109.153
Value: 185.199.110.153
Value: 185.199.111.153

Type: CNAME
Name: www
Value: YOUR_USERNAME.github.io
```

### Add to GitHub Pages
1. Go to repository Settings > Pages
2. Custom domain: `technologycrowd.com.au`
3. Save and wait 24-48 hours

---

## 📧 Set Up Email (contact@technologycrowd.com.au)

**Options:**
- Google Workspace: $9 AUD/month
- Microsoft 365: $8 AUD/month
- Zoho Mail: Free tier available

---

## 🔍 Google Search Console Setup

### 1. Add Property
1. Go to: [search.google.com/search-console](https://search.google.com/search-console)
2. Add property: `technologycrowd.com.au`

### 2. Verify Domain
**Method A: DNS (Recommended)**
- Add TXT record provided by Google to your domain DNS

**Method B: HTML Meta Tag**
- Add verification tag to `<head>` in [index.html](index.html)

### 3. Submit Sitemap
- In Search Console: Sitemaps > Add `sitemap.xml`

---

## 📊 Google Analytics (Optional)

1. Create account: [analytics.google.com](https://analytics.google.com)
2. Get tracking ID (G-XXXXXXXXXX)
3. Add to [index.html](index.html) `<head>`:

```html
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

---

## 💼 Getting Your First Clients

### Week 1: Launch
- [ ] Deploy website with custom domain
- [ ] Set up email
- [ ] Update LinkedIn profile headline and about section
- [ ] Share launch post on LinkedIn

### Week 2: Build Presence
- [ ] Post 3x per week on LinkedIn (technical insights, industry commentary)
- [ ] Message 10 former colleagues/contacts
- [ ] Join 3 Australian tech LinkedIn groups
- [ ] Engage daily (comment on 5-10 posts)

### Week 3: Outreach
- [ ] Create list of 30 target companies (Australian SMBs, 50-500 employees)
- [ ] Find decision makers (CTOs, Engineering Managers)
- [ ] Send 5 personalized messages per day
- [ ] Follow up on responses

### Week 4: Convert
- [ ] Schedule discovery calls
- [ ] Prepare simple proposal template
- [ ] Set pricing (hourly or day rate)
- [ ] Close first client

### LinkedIn Post Template
```
Excited to launch TechnologyCrowd - bringing 20+ years of cloud 
architecture and software delivery expertise to Australian businesses.

If you need senior technical consulting without big-firm overhead, 
let's connect.

→ technologycrowd.com.au

#CloudArchitecture #SoftwareDevelopment #AustralianBusiness
```

### Cold Outreach Template
```
Hi [Name],

I noticed [Company] recently [specific observation - funding, 
job posting, announcement].

I specialize in helping Australian SMBs with cloud architecture 
and software delivery. With 20+ years experience, I focus on 
practical solutions that drive outcomes.

Would it make sense to chat about [specific challenge]?

Best regards,
[Your Name]
TechnologyCrowd
technologycrowd.com.au
```

---

## ✅ Complete Setup Checklist

### Technical
- [ ] Website deployed
- [ ] Custom domain connected
- [ ] SSL certificate active (https://)
- [ ] Email configured (contact@technologycrowd.com.au)
- [ ] Google Search Console verified
- [ ] Sitemap submitted
- [ ] Google Analytics added (optional)

### Content
- [ ] LinkedIn URL updated in website
- [ ] All contact info accurate
- [ ] Mobile responsive tested

### Marketing
- [ ] LinkedIn personal profile optimized
- [ ] LinkedIn company page created
- [ ] Launch post published
- [ ] 10+ connections messaged
- [ ] Active in 2-3 groups
- [ ] Posting 3x per week

---

## 🎨 Customization

### Colors
Edit [styles.css](styles.css):
```css
:root {
  --bg: #0b1220;           /* Background */
  --accent: #6ee7ff;       /* Accent color */
  --accent-2: #8b5cf6;     /* Secondary accent */
}
```

### Contact Form
Currently opens email client. For web form:

**Netlify Forms:**
```html
<form netlify name="contact" method="POST">
```

**Formspree:**
```html
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
```

---

## 🛠️ Alternative Hosting

### Netlify
1. Go to [netlify.com](https://netlify.com)
2. Drag and drop folder
3. Add custom domain

### Vercel
1. Import from GitHub
2. Deploy
3. Add custom domain

### Azure Static Web Apps
```powershell
az staticwebapp create `
  --name technologycrowd `
  --resource-group your-rg `
  --location australiaeast `
  --source https://github.com/YOUR_USERNAME/technology-crowd-website
```

---

## 🐛 Troubleshooting

**deploy.ps1 won't run:**
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\deploy.ps1
```

**GitHub authentication failed:**
- Use Personal Access Token: [github.com/settings/tokens](https://github.com/settings/tokens)
- Select `repo` scope
- Use token as password

**Website not loading:**
- Wait 2-3 minutes after enabling Pages
- Check Settings > Pages for build status
- Clear browser cache

---

## 📈 Success Metrics

**Month 1:**
- Website live with custom domain
- 50+ visits
- 200+ LinkedIn profile views
- 3+ discovery calls

**Month 2:**
- 200+ visits
- 5+ blog posts
- 10+ discovery calls
- 2 proposals sent

**Month 3:**
- 500+ visits
- Google rankings for brand name
- 1st client signed 🎉

---

## 📚 Resources

- [GitHub Pages Docs](https://docs.github.com/pages)
- [Google Search Console](https://search.google.com/search-console)
- [Google Analytics](https://analytics.google.com)
- [Netlify Docs](https://docs.netlify.com)

---

## 📄 License

© 2026 TechnologyCrowd Pty Ltd

---

**Need help?** Open an issue or check the docs above.

---

**Ready to launch your consulting business?** Follow the deployment guide and go live today! 🚀