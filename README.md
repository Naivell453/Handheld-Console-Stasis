# Handheld-Console-Stasis
A handheld console that has it's own OS, Model and Games (Stasis 2026 Project)

Hardware

The console is built around the Orange Pi Zero 2W (Allwinner H618, quad-core Cortex-A53, 1.5GB RAM). It features a 3.5" ILI9488 SPI display, stereo audio through two MAX98357A I2S amplifiers driving 4Ω 3W speakers, a 5000mAh LiPo battery with USB-C charging, and an MPU-6050 gyroscope for motion controls. Input is handled by 8 tactile push buttons arranged in a GBA-style layout.

Firmware

Built with Buildroot targeting the Orange Pi Zero 3 defconfig, which is compatible with the Zero 2W as both use the Allwinner H618 SoC.
To build:
bashgit clone https://github.com/buildroot/buildroot
cd buildroot
make orangepi_zero3_defconfig
make -j1
Flash output/images/sdcard.img to an SD card using Balena Etcher. The game launches automatically on boot with no password required.

Games

Ball Maze is a 2D physics-based maze game where the gyroscope controls the gravity direction. Rotating the console changes which way the ball falls, and the objective is to guide the ball out of the maze.
Platformer is a 2D side-scrolling platformer controlled with the D-pad and buttons.
FPS is a 3D first-person shooter with gyroscope-assisted aiming, currently in development.

PCB

Designed in EasyEDA and manufactured by JLCPCB. 2-layer through-hole design at 200mm × 90mm. The screen connects via SPI, the gyroscope via I2C, audio via I2S, and all buttons via GPIO pins on the Orange Pi header. Power is provided through an MT3608 boost converter stepping the battery voltage up to 5V.
<img width="807" height="569" alt="Captura de pantalla 2026-04-09 232454" src="https://github.com/user-attachments/assets/edd9cbc3-5675-49be-bcce-7ae9e5bb1497" />
<img width="1302" height="395" alt="Captura de pantalla 2026-04-01 232801" src="https://github.com/user-attachments/assets/476f47a6-599a-47f2-ab52-9ba2795ac451" />
<img width="956" height="79" alt="Captura de pantalla 2026-04-02 114028" src="https://github.com/user-attachments/assets/e30f789b-e30b-43d0-b07d-7bee7b17d874" />
<img width="1061" height="730" alt="Captura de pantalla 2026-05-02 153729" src="https://github.com/user-attachments/assets/1b4f983e-9dd6-458e-875f-53d727af2245" />
