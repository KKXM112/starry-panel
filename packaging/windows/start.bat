@echo off
chcp 65001 > nul
cd /d "%~dp0"
title 满天星面板 Starry Panel

echo ========================================
echo   满天星面板 Starry Panel (Windows 单机版)
echo ========================================
echo.
echo [i] 启动后请在浏览器访问: http://localhost:5700
echo [i] 首次使用需要初始化管理员账号
echo [i] 按 Ctrl+C 或关闭本窗口即可停止服务
echo.

if not exist starry-server.exe (
  echo [x] 未找到 starry-server.exe，请确认本脚本和 exe 在同一目录
  pause
  exit /b 1
)

starry-server.exe

echo.
echo [i] 服务已停止
pause
