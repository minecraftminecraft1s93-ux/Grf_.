<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Do you want to be my girlfriend?</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            height: 100vh;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }
        h1 {
            color: #333;
            font-size: 3.2em;
            margin-bottom: 25px;
            text-align: center;
        }
        .bears {
            border-radius: 25px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
            margin: 20px 0;
            max-width: 90%;
        }
        .buttons {
            margin-top: 35px;
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
            justify-content: center;
        }
        button {
            padding: 18px 55px;
            font-size: 1.3em;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        button:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }
        .btn-red {
            background: #e74c3c;
            color: white;
        }
        .btn-green {
            background: #27ae60;
            color: white;
        }
    </style>
</head>
<body>
    <h1>Do you want to be my girlfriend?</h1>
    
    <img
        src="https://media.tenor.com/sSbr1al2-KQAAAAC/so-cute.gif"
        alt="Bears hugging"
        class="bears"
        width="480">
    
    <div class="buttons">
        <button class="btn-red" onclick="alert('Okay… we can still be friends 💔')">
            Can we still be friends? 💔
        </button>
        <button class="btn-green" onclick="window.location.href='forever.jsp'">
            Yes I want 💕
        </button>
    </div>
</body>
</html>