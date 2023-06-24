gdown 1Uc5wEqzi2gxtGJRyrRKp5gxBoSsBqEzx
mediainfo *.mkv
ffmpeg -i *.mkv -c:v libx265 -crf 28 -preset superfast output.mkv
mediainfo output.mkv
