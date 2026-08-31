@echo off
chcp 65001 > nul
title 2026학년도 오현중학교 교지 원고 수집 시스템

echo ==============================================================
echo   🌸 2026학년도 오현중학교 교지(소식지) 원고 및 사진 수집 웹
echo ==============================================================
echo.
echo [1] 웹 브라우저로 바로 열기 (설치 없이 바로 사용)
echo [2] 로컬 웹 서버 실행 (학교 내 Wi-Fi 네트워크 공유용)
echo.
set /p choice="실행할 번호를 입력하세요 (기본값 1): "

if "%choice%"=="2" (
  echo 웹 서버를 시작합니다...
  if exist "%APPDATA%\Antigravity\bin\agy-node.cmd" (
    "%APPDATA%\Antigravity\bin\agy-node.cmd" server.js
  ) else (
    node server.js
  )
) else (
  echo 브라우저에서 index.html을 엽니다...
  start index.html
)