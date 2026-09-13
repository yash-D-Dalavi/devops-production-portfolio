# Step 1: Lightweight Node.js base image use kar rahe hain
FROM node:18-alpine

# Step 2: Container ke andar working directory set kar rahe hain
WORKDIR /app

# Step 3: Dependencies install karne ke liye package.json copy kar rahe hain
COPY package.json ./

# Step 4: Production dependencies install kar rahe hain
RUN npm install --only=production

# Step 5: Baki sara backend source code copy kar rahe hain
COPY . .

# Step 6: Backend port 5000 expose kar rahe hain
EXPOSE 5000

# Step 7: Application start karne ki command
CMD ["node", "app.js"]