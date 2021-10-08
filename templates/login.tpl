{include file="templates/header.tpl"}

<h2> Inicio De Sesion</h2>
    <form   class=form action="verify" method="POST">
        <input placeholder="Ingrese su usuario" type="text" name="user" required>
        <input placeholder="Ingrese su contraseña" type="password" name="password" id="password" required>
        <input type="submit" class="btn-submit" value= "Iniciar">
    </form>
    <h4 class="alerta">{$error}</h4>

{include file='templates/footer.tpl'}