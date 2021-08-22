# docker-ztj1993-pypi-build-upload

这是一个 python pypi 包构建和发布工具。

## 相关链接
- [GitHub](https://github.com/ztj1993/docker-pypi-build-upload)
- [DockerHub](https://hub.docker.com/r/ztj1993/pypi-build-upload)

## 环境变量
- 发布仓库：`TWINE_REPOSITORY=pypi`
- 用户名称：`TWINE_USERNAME=`
- 用户密码：`TWINE_PASSWORD=`

## 使用教程
```
docker run -it --rm -v $PWD:/app ztj1993/pypi-build-upload:latest
docker run -it --rm -v $PWD:/app ztj1993/pypi-build-upload:latest
```

## 项目构建
```
docker build -t ztj1993/pypi-build-upload:latest .
```

## 更新日志

> 2021-08-22

- 迁移并重构项目
- 精简项目

> 2019-09-04

- 优化了变量定义
- 优化了脚本执行
- 优化了包生成及上传

> 2019-09-03

- 初始构建
- 使用 python:3.7-alpine 基础镜像
