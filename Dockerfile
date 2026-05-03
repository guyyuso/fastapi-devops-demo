# STAGE 1: Builder
FROM python:3.9-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --user --no-cache-dir -r requirements.txt

# STAGE 2: Tester
FROM builder AS tester
COPY app/ ./app/
ENV PYTHONPATH=/app
# FIX: This line MUST be here for the RUN command below to work
ENV PATH=/root/.local/bin:$PATH
RUN pytest app/test_main.py

# STAGE 3: Runtime
FROM python:3.9-slim AS runtime
WORKDIR /app
# Copy the installed libraries from the builder
COPY --from=builder /root/.local /root/.local
COPY app/ ./app/

# FIX: This line MUST be here so uvicorn can start
ENV PATH=/root/.local/bin:$PATH

EXPOSE 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]