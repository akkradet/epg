#!/bin/bash

git add . && git commit -m "auto update at %date:~-4,4%-%date:~-10,2%-%date:~-7,2% %time:~0,2%:%time:~3,2% ICT" && git push