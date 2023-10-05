# ใช้รูปภาพของ Nginx เป็นฐาน
FROM nginx:latest

# คัดลอกไฟล์ HTML และ JavaScript เข้าไปใน Docker container
COPY index.html /usr/share/nginx/html/

# Expose port 80 ของ Nginx
#EXPOSE 5000

# เริ่ม Nginx ในรูปแบบที่สร้างจาก Dockerfile
CMD ["nginx", "-g", "daemon off;", "--port", "8081"]