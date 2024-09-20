<?php
include 'includes/header.php';
?>
<style>
    <?php include "style.css"; ?>
</style>

<section class="vh-130 gradient-custom">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card bg-dark text-white">
                    <div class="card-body p-5 text-center">
                        <div class="mb-md-5 mt-md-4 pb-5">
                            <h2 class="fw-bold mb-2 text-uppercase">Sign in</h2>
                            <p class="text-white-50 mb-5">Please enter your login and password!</p>
                            <form action="<?php echo ROOT; ?>signin" method="post">
                                <div class="form-group form-white mb-4">
                                    <input id="my-input" type="text" name="username"
                                        class="form-control form-control-lg" placeholder="Username" />
                                </div>
                                <div class="form-group form-white mb-4">
                                    <input id="password" type="password" name="password"
                                        class="form-control form-control-lg" placeholder="Password" />
                                </div>
                                <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a>
                                </p>
                                <?php if (isset($_GET['msg'])): ?>
                                    <?php if ($_GET['msg'] === 'fail-login'): ?>
                                        <div id="alert" class="alert alert-danger" role="alert">
                                            This user have been banned, contact admin (abi) for more information
                                        </div>
                                    <?php elseif ($_GET['msg'] === 'failed-login'): ?>
                                        <div id="alert" class="alert alert-danger" role="alert">
                                            Username or Password incorrect.
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
                            </form>
                            <div class="d-flex justify-content-center text-center mt-4 pt-1">
                                <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                                <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                                <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
                            </div>
                        </div>

                        <div>

                            <p class="mb-0">Don't have an account? <a href="<?php echo ROOT; ?>signup"
                                    class="text-white-50 fw-bold">Sign Up</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
include 'includes/footer.php';
?>
