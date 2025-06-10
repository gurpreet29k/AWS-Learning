# AWS-Learning

# 🚀 EC2 Day 1 Learning Journal

**Date:** June 10, 2025  
**Author:** Gurpreet Kaur  
**Topic:** Amazon EC2 – Introduction, Key Pair Setup, and SSH Access

---

## ✅ What I Learned Today

- What Amazon EC2 is and why it's used
- EC2 instance types and their use cases
- EC2 pricing models: On-Demand, Reserved, Spot
- Creating a key pair and understanding `chmod 400`
- Launching an EC2 instance
- Connecting to EC2 via SSH using the terminal

---

## 📌 Key Concepts

### What is EC2?
- EC2 (Elastic Compute Cloud) provides scalable virtual servers in AWS.
- Offers full control over compute resources.
- Supports multiple instance types and OS options.

### EC2 Use Cases
- Web hosting, dev/test environments, machine learning, batch jobs, etc.

### Instance Families
| Family | Optimized For | Examples |
|--------|----------------|----------|
| t3, m6i | General purpose | Web servers, dev |
| c7g    | Compute         | ML inference, API servers |
| r6g    | Memory          | In-memory DBs |
| i4i    | Storage         | NoSQL, data lakes |
| p4d    | GPU             | ML training, HPC |

### Pricing Models
| Model      | Use Case                         | Notes |
|------------|----------------------------------|-------|
| On-Demand  | Unpredictable workloads          | No commitment |
| Reserved   | Steady-state apps (1–3 yrs)      | Up to 72% savings |
| Spot       | Fault-tolerant/batch processing  | Up to 90% savings, can be interrupted |

---

## 🛠️ Hands-On Practice

### Step 1: Create Key Pair

# In AWS Console → EC2 → Key Pairs
# Downloaded key: my-key.pem

### Step 2: Set File Permission
![image](https://github.com/user-attachments/assets/4b17d9de-fe71-4210-b42f-2ca4ba15c6f4)

# chmod 400 my-key.pem

### Step 3: Launch EC2 Instance

# AMI: Amazon Linux 2
# Instance Type: t2.micro
# Key Pair: my-key.pem
# Allow SSH (port 22) in security group

### Step 4: Connect via SSH

# ssh -i my-key.pem ec2-user@<your-ec2-public-ip>

🧠 Interview Notes
      chmod 400: Makes .pem file readable only by owner – required for secure SSH.
      EC2 instances can be scaled, stopped, restarted, or terminated anytime.
      Always select correct region, key pair, and security group when launching.
