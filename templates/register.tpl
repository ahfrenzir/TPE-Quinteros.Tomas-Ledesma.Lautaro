{include file="templates/header.tpl"}


<div class="d-flex justify-content-evenly">
    <div class="p-2 bd-highlight">
        <h2 class="text-center">Registrarse</h2>
        <form method="POST" action="registrarse" class="form">
            <div class="mb-3 text-center">
                <input placeholder="Ingrese su usuario" type="text" name="user" required>
            </div>
            <div class="mb-3 text-center">
                <input placeholder="Ingrese su contraseña" type="password" name="password" id="password" required>
            </div>
            <div class="mb-3 text-center">
                <input type="submit" class="btn-crearcuenta" value="Crear cuenta">
            </div>
        </form>
        <h3>{$error}</h3>
    </div>
</div>

<img src="{BASE_URL}/img/pingu.png " class="rounded mx-auto d-block">

{include file='templates/footer.tpl'}