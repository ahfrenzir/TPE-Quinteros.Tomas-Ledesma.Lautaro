{if $logged}
    {include file="templates/headerLogout.tpl"}
    {else}
        {include file="templates/header.tpl"}
{/if}


<div class="d-flex justify-content-evenly">
    <div class="p-2 bd-highlight">
        <h2 class="text-center"> Inicio de sesión</h2>
        <form class=form action="verify" method="POST" >
            <div class="mb-3 text-center">
                <input placeholder="Ingrese su usuario" type="text" name="user" required>
            </div>
            <div class="mb-3 text-center">
                <input placeholder="Ingrese su contraseña" type="password" name="password" id="password" required>
            </div>
            <div class="mb-3 text-center">
                <input type="submit" class="btn-submit" value="Iniciar sesión">
            </div>
        </form>
        <h4 class="alerta text-center">{$error}</h4>
    </div>
</div>

<img src="{BASE_URL}/img/pingu.png " class="rounded mx-auto d-block">

{include file='templates/footer.tpl'}