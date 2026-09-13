const express = require('express');
const app = express();
const PORT = process.env.PORT || 5000;

app.get('/api/health', (req, res) => {
  res.json({
    status: 'Healthy',
    message: 'DevOps Microservice Backend Operational',
    timestamp: new Date()
  });
});

app.listen(PORT, () => {
  console.log(`Backend service running on port ${PORT}`);
});