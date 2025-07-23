FROM jupyter/datascience-notebook

ENV JUPYTER_TOKEN=123456

# 使用 root 用户安装系统依赖
USER root

# 安装 Ruby、Zsh 及依赖
RUN apt-get update && apt-get install -y \
    ruby-full \
    build-essential \
    libzmq3-dev \
    libssl-dev \
    libreadline-dev \
    libffi-dev \
    git \
    curl \
    zsh \
    && rm -rf /var/lib/apt/lists/*

# 修复权限（非常关键）
RUN mkdir -p /home/jovyan/.local/share/jupyter/runtime && \
    chown -R jovyan:users /home/jovyan/.local

# 可选：强制设置 Jupyter 的运行时目录
ENV JUPYTER_RUNTIME_DIR=/tmp/jupyter/runtime


# 安装 iruby 内核
RUN gem install bundler && \
    gem install iruby && \
    iruby register --force


# conda 设置严格通道优先，并安装指定版本的 xgboost，避免依赖冲突
RUN conda config --add channels conda-forge && \
    conda config --set channel_priority strict && \
    conda install -y mamba -n base -c conda-forge && \
    mamba install -y \
    xgboost=1.7.6 \
    numpy=1.23 \
    pandas=1.5 \
    scikit-learn=1.2 \
    matplotlib=3.7 \
    && mamba clean -afy


USER jovyan
WORKDIR /home/jovyan/work

