#\!/bin/bash

echo "🚀 Deploying Dualog Drive to production..."

# Create tarball excluding unnecessary files
echo "📦 Creating deployment package..."
tar --exclude='__pycache__' \
    --exclude='*.pyc' \
    --exclude='venv' \
    --exclude='node_modules' \
    --exclude='*.log' \
    --exclude='server.pid' \
    --exclude='dualog_drive.db' \
    --exclude='temp' \
    --exclude='test_ship' \
    --exclude='dualog-drive-deployment.tar.gz' \
    -czf dualog-drive-deployment.tar.gz .

# Transfer to server
echo "📤 Transferring to server..."
scp dualog-drive-deployment.tar.gz root@93.188.232.42:/opt/dualog-drive/

# Execute deployment on server
echo "🔧 Deploying on server..."
ssh root@93.188.232.42 << 'ENDSSH'
cd /opt/dualog-drive
tar -xzf dualog-drive-deployment.tar.gz
systemctl restart dualog-drive
sleep 3
systemctl status dualog-drive --no-pager
ENDSSH

# Cleanup
rm dualog-drive-deployment.tar.gz

echo "✅ Deployment complete\!"
EOF < /dev/null