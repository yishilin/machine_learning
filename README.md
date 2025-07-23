# 机器学习分步指南

本代码库包含机器学习基本主题的分步指南，以及动手挑战和用于运行 Jupyter 笔记本的预配置 Docker 环境。

## 目的

本代码库的目标是清晰实用地介绍机器学习的基本概念。每个笔记本涵盖一个特定主题，并包含详细的解释、交互式 Python 代码和用于测试您知识的挑战。

## 要求

要运行笔记本，您可以使用本代码库提供的预配置 Docker 环境。请确保您的计算机上已安装 Docker。

## 使用说明

1. 将此代码库克隆或下载到您的本地计算机。

2. 导航到代码库的根目录。

3. 运行以下命令，使用 Jupyter Notebook 启动 Docker 环境：

Jupyter Notebook：http://localhost:8888/

出现问题 `podman up --build ` 容器直接退出的问题，可以用下面的命令解决：

```bash
podman system prune -a -f
podman-compose up --build
```

> 首次运行 Docker Compose 可能需要一段时间。请耐心等待，因为需要安装许多软件包！

4. 打开 Web 浏览器并访问 `http://localhost:8888`。您将看到 Jupyter Notebook 环境以及来自此仓库的笔记本。请不要忘记默认令牌是 123456。

5. 运行每个笔记本中的代码单元，探索概念并完成挑战。
