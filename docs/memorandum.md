# 备忘录

## 开发环境

### 安装uv

访问[uv官网](https://docs.astral.sh/uv/)，在操作系统上安装uv。

### 初始化项目

第一次初始化项目时，需要执行以下命令：

```bash
uv init
```

一旦初始化后，就不需要再次执行。

### 虚拟环境

#### 创建虚拟环境

```bash
uv venv
```

#### 使用虚拟环境

```bash
uv venv activate
```

### 同步项目软件包的依赖

```bash
uv sync
```

### 保存当前安装的依赖版本

```bash
uv pip freeze > requirements.txt
```

## 服务

### 启动服务

```bash
uv run uvicorn main:app --reload
```

## 格式化代码

### Ruff

对于 vscode，可以使用 [vscode 插件](https://github.com/astral-sh/ruff-vscode)