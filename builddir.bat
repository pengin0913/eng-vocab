@echo off
:: 設定編碼為 UTF-8，避免中文輸出亂碼
chcp 65001 >nul

echo 正在建立 CEFR 分類子資料夾...
echo ---------------------------------------

:: 定義 CEFR 等級清單
set levels=A1 A2 B1 B2 C1 C2

:: 迴圈建立資料夾（若已存在則略過並提示）
for %%L in (%levels%) do (
    if not exist "%%L" (
        mkdir "%%L"
        echo [已建立] %%L
    ) else (
        echo [已存在] %%L
    )
)

echo ---------------------------------------
echo 所有 CEFR 目錄結構建立完成！
pause