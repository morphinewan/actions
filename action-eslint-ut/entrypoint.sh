#!/bin/sh

# avoid continuing when errors or undefined variables are present.
set -eu

# checkout submodules
git submodule sync
git submodule update --init

# 安装环境依赖
yarn install

# 测试eslint
yarn lint-ci

# 单体测试
yarn test --ci --testResultsProcessor="jest-junit"