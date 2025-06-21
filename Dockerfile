# Usa una imagen base de Python
FROM python:3.10-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los requirements y luego el código
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código
COPY . .
# Comando para exponer el puerto
EXPOSE 8000
# Comando para ejecutar el servidor Django
CMD ["python", "paginaa/manage.py", "runserver", "0.0.0.0:8000"]
