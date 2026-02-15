# 1. اختر نسخة بايثون خفيفة
FROM python:3.9-slim

# 2. حدد مجلد العمل داخل السيرفر
WORKDIR /app

# 3. انسخ ملف المكتبات
COPY requirements.txt .

# 4. طب المكتبات
RUN pip install --no-cache-dir -r requirements.txt

# 5. انسخ باقي ملفات الكود
COPY . .

# 6. الأمر اللي هيشغل السيرفر (لاحظ المنفذ 8080 هو المفضل لجوجل)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]