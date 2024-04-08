#!/bin/sh

# 启动 global-agent 全局代理
export GLOBAL_AGENT_HTTP_PROXY=$HTTP_PROXY
export GLOBAL_AGENT_HTTPS_PROXY=$HTTPS_PROXY
export GLOBAL_AGENT_NO_PROXY=''; # 根据需要配置

# 需要确保 global-agent 在全局范围内激活
export NODE_OPTIONS='-r global-agent/bootstrap'

# 执行 bundle.js
node /home/node/siteproxy/bundle.js

