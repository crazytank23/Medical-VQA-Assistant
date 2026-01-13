@echo off
title Qwen2-VL 医疗诊断助手 (CLI Mode)
color 0A

echo ================================================================
echo       正在启动 Qwen2-VL 医疗多模态诊断系统...
echo       (Medical VQA CLI Demo)
echo.
echo       [使用说明]
echo       1. 等待模型加载完成。
echo       2. 当出现 "User:" 提示符时，输入图片路径和问题。
echo       3. 格式示例: ^<image^>D:\test.jpg^</image^> 这张图有什么异常？
echo       4. 提示: 你可以直接把图片文件拖进这个黑框，路径会自动填入！
echo ================================================================
echo.

:: 1. 激活环境 (根据你的路径)
call D:\anaconda3\Scripts\activate.bat qwen_env

:: 2. 进入项目目录
cd /d D:\damoxing\LLaMA-Factory

:: 3. 启动命令行对话
:: 注意：这里填的是你之前截图里成功的那个 Checkpoint 文件夹名
llamafactory-cli chat ^
    --model_name_or_path D:\Qwen2-VL-2B ^
    --adapter_name_or_path saves/Custom/lora/train_2026-01-09-09-49-47 ^
    --template qwen2_vl ^
    --trust_remote_code True

pause