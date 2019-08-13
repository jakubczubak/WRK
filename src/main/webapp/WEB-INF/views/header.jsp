<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
    <a class="navbar-brand mr-1" href="/">WRK Brake <i class="fas fa-car"></i></a>
    <a class="navbar-brand mr-1" href="/"> </a>

    <span style="margin-left:auto" class="navbar-brand">  <i class="far fa-user" style="color: white"></i> ${remoteUser}</span>
    <form class="navbar-form " method=post action="/logout">
        <button type="submit" class="btn btn-success">Logout <i class="fas fa-sign-out-alt"></i></button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    </form>
</nav>