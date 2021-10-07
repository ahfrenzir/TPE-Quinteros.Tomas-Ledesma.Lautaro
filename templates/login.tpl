{include file='templates/header.tpl'}

<h2> Inicio De Sesion</h2>
    <form   class=form action="verify" method="post">
        <input placeholder="email" type="text" name="email" id="email" required>
        <input placeholder="password" type="password" name="email" id="email" required>
        <input type="subit" class="btn-submit" value= "login">
    </form>
    <h4 class="alerta">{$error}</h4>

{include file='templates/footer.tpl'}