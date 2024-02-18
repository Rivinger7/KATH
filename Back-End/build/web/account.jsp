<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <link rel="stylesheet" href="css/account.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    </head>
</head>

<body>
    <section id="container" class="vh-100">
        <div class="container-fluid h-custom">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-md-9 col-lg-6 col-xl-5">
                    <a href="homepage.jsp">
                        <img src="images/header_image/KATH_label.png" class="img-fluid" alt="Sample image">
                    </a>
                </div>
                <!-- Sign in -->
                <div id="sign-in_form" class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                    <form action="./Login" method="post">
                        <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                            <p class="lead fw-normal mb-0 me-3">Login with</p>
                            <button type="button" class="btn btn-primary btn-floating mx-1">
                                <i class="fab fa-facebook-f"></i>
                            </button>

                            <button type="button" class="btn btn-primary btn-floating mx-1">
                                <i class="fab fa-twitter"></i>
                            </button>

                            <button type="button" class="btn btn-primary btn-floating mx-1">
                                <i class="fab fa-linkedin-in"></i>
                            </button>
                        </div>

                        <div class="divider d-flex align-items-center my-4">
                            <p class="text-center fw-bold mx-3 mb-0">Or</p>
                        </div>

                        <!-- Email input -->
                        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
                        <% if (errorMessage != null) {%>
                        <div class="alert alert-danger" role="alert">
                            <%= errorMessage%>
                        </div>
                        <% }%>
                        <div class="form-outline mb-4">
                            <input name="username" type="text" id="form3Example3" class="form-control form-control-lg"
                                   placeholder="Enter a valid email address" />
                            <label class="form-label" for="form3Example3">Email address</label>
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-3">
                            <input name="password" type="password" id="form3Example4" class="form-control form-control-lg"
                                   placeholder="Enter password" />
                            <label class="form-label" for="form3Example4">Password</label>
                        </div>

                        <div class="d-flex justify-content-between align-items-center">
                            <!-- Checkbox -->
                            <div class="form-check mb-0">
                                <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                                <label class="form-check-label" for="form2Example3">
                                    Remember me
                                </label>
                            </div>
                            <a href="#!" class="text-body">Forgot password?</a>
                        </div>

                        <div class="text-center text-lg-start mt-4 pt-2">
                            <button type="submit" value="Login" class="btn btn-primary btn-lg"
                                    style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
                            <p class="small fw-bold mt-2 pt-1 mb-0">
                                Don't have an account? 
                                <a href="#!"onclick="showSignUp()" class=" link-danger">
                                    Register
                                </a>
                            </p>
                        </div>

                    </form>
                </div>
                <!-- Sign up -->
                <div id="sign-up_form" class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                    <form action="./Register" method="POST">
                        <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                            <p class="lead fw-normal mb-0 me-3">Register with</p>
                            <button type="button" class="btn btn-primary btn-floating mx-1">
                                <i class="fab fa-facebook-f"></i>
                            </button>

                            <button type="button" class="btn btn-primary btn-floating mx-1">
                                <i class="fab fa-twitter"></i>
                            </button>

                            <button type="button" class="btn btn-primary btn-floating mx-1">
                                <i class="fab fa-linkedin-in"></i>
                            </button>
                        </div>

                        <div class="divider d-flex align-items-center my-4">
                            <p class="text-center fw-bold mx-3 mb-0">Or</p>
                        </div>

                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <input name="username" type="text" id="form3Example3" class="form-control form-control-lg"
                                   placeholder="Enter a valid email address" />
                            <label class="form-label" for="form3Example3">Email address</label>
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-3">
                            <input name="password" type="password" id="form3Example4" class="form-control form-control-lg"
                                   placeholder="Enter password" />
                            <label class="form-label" for="form3Example4">Password</label>
                        </div>

                        <!-- Confirm Password input -->
                        <div class="form-outline mb-3">
                            <input name="passwordConfirmed" type="password" id="form3Example5" class="form-control form-control-lg"
                                   placeholder="Confirm password" />
                            <label class="form-label" for="form3Example5">Confirm Password</label>
                        </div>

                        <div class="d-flex justify-content-between align-items-center">
                            <!-- Checkbox -->
                            <!-- <div class="form-check mb-0">
                                <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                                <label class="form-check-label" for="form2Example3">
                                    Remember me
                                </label>
                            </div> -->
                            <!-- <a href="#!" class="text-body">Forgot password?</a> -->
                        </div>

                        <div class="text-center text-lg-start mt-4 pt-2">
                            <button type="submit" class="btn btn-primary btn-lg" style="padding-left: 2.5rem; padding-right: 2.5rem;">
                                Register
                            </button>
                            <p class="small fw-bold mt-2 pt-1 mb-0">
                                Already have an account? 
                                <a href="#!" onclick="showSignIn()" class="link-danger">
                                    Login
                                </a>
                            </p>
                        </div>

                    </form>
                </div>

            </div>
        </div>
    </section>

    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script> -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            document.getElementById("sign-in_form").style.display = "block";
            document.getElementById("sign-up_form").style.display = "none";
        });

        function showSignUp() {
            document.getElementById("sign-in_form").style.display = "none";
            document.getElementById("sign-up_form").style.display = "block";
        }

        function showSignIn() {
            document.getElementById("sign-up_form").style.display = "none";
            document.getElementById("sign-in_form").style.display = "block";
        }
    </script>
</body>

</html>