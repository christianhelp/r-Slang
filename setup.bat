@echo off

:: Deletes python environment if present
if exist env\ rmdir /s /q env

:: (Re)creates python environment and installs project package requirements
python -m venv %cd%\env
call .\env\Scripts\activate
pip install PyQt6
call .\env\Scripts\deactivate.bat