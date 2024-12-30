# 使用官方的 Python 镜像
FROM python:3.12-bookworm

# 设置工作目录
WORKDIR /app

# 复制项目文件到工作目录
COPY . /app

# 安装 uv 工具
RUN pip install uv

# 初始化项目（如果需要）
RUN uv init || true

# 创建虚拟环境
RUN uv venv

# 激活虚拟环境并安装依赖
RUN uv venv && .venv/bin/activate && uv sync

# 暴露应用的端口（假设应用运行在8000端口）
EXPOSE 8000

# 启动服务
CMD ["uv", "run", "uvicorn main:app --host 0.0.0.0 --port 8000"]
