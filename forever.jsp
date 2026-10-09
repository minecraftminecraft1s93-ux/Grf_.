<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>I'll never leave your side</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ff6b6b, #feca57);
        }
        .message {
            font-size: 5em;
            color: white;
            font-weight: bold;
            text-align: center;
            animation: pulse 2s infinite;
            text-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            padding: 20px;
        }
        @keyframes pulse {
            0%   { transform: scale(1); }
            50%  { transform: scale(1.08); }
            100% { transform: scale(1); }
        }
        .music-control {
            position: fixed;
            bottom: 20px;
            right: 20px;
        }
        button {
            border: none;
            padding: 12px 20px;
            border-radius: 30px;
            cursor: pointer;
            font-size: 16px;
            background: white;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        .back {
            position: fixed;
            top: 20px;
            left: 20px;
            background: rgba(255,255,255,0.9);
            color: #333;
            text-decoration: none;
            padding: 10px 18px;
            border-radius: 30px;
            font-size: 14px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
        }
    </style>
</head>
<body>
    <a href="index.jsp" class="back">← Back</a>

    <div class="message">
        I'll never leave your side ❤️
    </div>

    <div class="music-control">
        <button onclick="toggleMusic()" id="musicBtn">
            🎵 Play Music
        </button>
    </div>

    <audio id="musica" loop>
        <source src="cancion.m4a" type="audio/mp4">
        Your browser cannot play this audio.
    </audio>

    <script>
        const musicBtn = document.getElementById("musicBtn");
        const audio = document.getElementById("musica");

        function toggleMusic() {
            if (audio.paused) {
                audio.play()
                    .then(() => {
                        musicBtn.innerHTML = "🎵 Pause Music";
                    })
                    .catch(() => {
                        alert("Could not play the music. Make sure the file cancion.m4a is in the same folder.");
                    });
            } else {
                audio.pause();
                musicBtn.innerHTML = "🎵 Play Music";
            }
        }
    </script>
</body>
</html>