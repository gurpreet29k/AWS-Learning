
---

## Example User Data Script (`setup-apache.sh`)

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Welcome to my Apache Web Server on AWS EC2</h1>" > /var/www/html/index.html
