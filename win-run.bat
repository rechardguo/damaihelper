@echo off

REM set conda path
set "CONDA_PATH=C:\ProgramData\miniconda3\Library\bin"
set "PATH=%CONDA_PATH%;%PATH%"

echo %PATH%
REM Step 1: 创建 conda 虚拟环境 python3.12 命名为 joker
call conda create --name joker python=3.12 -y

REM Step 2: 激活虚拟环境
call conda activate joker

REM Step 3: 安装依赖包
pip install -r requirements.txt

REM Step 4: 运行 gui.pys
python ticket_script.py

REM Step 5: 保持命令行窗口打开，直到用户关闭
pause
