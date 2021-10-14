{include file="templates/header.tpl"}


<div class="d-flex justify-content-evenly">
    <div class="p-2 bd-highlight">
        <h2 class="text-center"> Inicio de sesión</h2>
        <form class=form action="verify" method="POST" >
            <div class="mb-3">
                <input placeholder="Ingrese su usuario" type="text" name="user" required>
            </div>
            <div class="mb-3">
                <input placeholder="Ingrese su contraseña" type="password" name="password" id="password" required>
            </div>
            <div class="mb-3">
                <input type="submit" class="btn-submit" value="Iniciar sesión">
            </div>
        </form>
        <h4 class="alerta">{$error}</h4>
    </div>
</div>

{include file='templates/footer.tpl'}