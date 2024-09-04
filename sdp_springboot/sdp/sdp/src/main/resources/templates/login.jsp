<!DOCTYPE html>
<html>
<head>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <style>
        .login {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f2f2f2;
        }

        .login_box {
            width: 400px;
            padding: 40px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 1px 4px 22px -8px #0004;
        }

        .login_box form {
            display: flex;
            flex-direction: column;
        }

        .login_box input {
            margin: 15px 0;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .login_box button {
            padding: 15px 0;
            border: none;
            border-radius: 8px;
            background: #583672;
            color: #fff;
            font-weight: bold;
            box-shadow: 0px 9px 15px -11px rgba(88, 54, 114, 1);
        }

        .login_box .top_link {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <section class="login">
        <div class="login_box">
            <div class="top_link"><a href="home"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYWBMk-fM6D05Ncby8-rsxHCsezC2Z4UKMGg&usqp=CAU" alt=""><br>Return home</br></a></div>
            <form id="login-form" action="/check" method="POST">
                <h3 style="text-align: center;">SIGN IN</h3>
                <input type="text" name="email" placeholder="USERNAME">
                <input type="password" name="password" placeholder="PASSWORD">


    <div class="g-recaptcha" data-sitekey="6LcPh_QoAAAAAM3ghtEurz0WeS_wx-siusjpYkhG"></div>

                <p style="text-align: center;">No account?  <a href="register">Signup</a></p>


    <div id="captchaError" style="color: red; text-align: center;"></div><br><br>

                <button type="submit">LET'S GO</button>
            </form>
        </div>
    </section>


    <script>
        document.getElementById("login-form").addEventListener("submit", function (event) {
            var response = grecaptcha.getResponse();
            if (!response) {
                document.getElementById("captchaError").innerHTML = "reCAPTCHA verification is required.";
                event.preventDefault(); // Prevent the form submission
            }
        });
    </script>

</body>
</html>