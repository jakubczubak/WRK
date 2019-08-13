<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
    <a class="navbar-brand mr-1" href="/">WRK Brakes <i class="fas fa-car"></i></a>
    <a class="navbar-brand mr-1" href="/"> </a>



    <ul class="navbar-nav ml-auto " style="margin-left:auto">


        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="far fa-user" style="color: white">  ${remoteUser}</i>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="/user/edit">Settings</a>


            </div>
        </li>
    </ul>
    <form class="navbar-form " method=post action="/logout">
        <button type="submit" class="btn btn-success">Logout <i class="fas fa-sign-out-alt"></i></button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    </form>
</nav>