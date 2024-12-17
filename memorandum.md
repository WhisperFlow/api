# 备忘录

## 虚拟环境

### 生成虚拟环境

```bash
python -m venv .venv
```

### 使用虚拟环境(Windows PowerShell)

```bash
.venv\Scripts\Activate.ps1
```
---
## pip 保存依赖版本

### 保存当前安装的依赖版本

```bash
pip freeze > requirements.txt
```

### 安装当前版本

```bash
pip install -r requirements.txt
```

---
## 服务

### 启动服务

```bash
uvicorn main:app --reload
```

---

## 格式化代码

## Ruff

对于 vscode，可以使用 vscode 插件: https://github.com/astral-sh/ruff-vscode