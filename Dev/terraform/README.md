# ☁️ OmarFinance Infra – Terraform Backend (Lambda + DynamoDB + API Gateway)

This folder defines the backend infrastructure for OmarFinance using Terraform. It includes:

- ✅ An auto-generated S3 bucket (for storing remote Terraform state)
- ✅ A Lambda function for handling loan requests
- ✅ A DynamoDB table for storing loans
- ✅ An HTTP API Gateway to expose the Lambda

---

## 📦 Prerequisites

- Running AWS Control Tower ATF setup

📁 Step 1: Zip Lambda Code
cd ../lambda
npm install
zip -r ../lambda.zip .
cd ..

## 📄 License

MIT © 2025 Omar Din
