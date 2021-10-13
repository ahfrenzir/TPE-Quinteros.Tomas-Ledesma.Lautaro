{include file="templates/header.tpl"}


<div class="d-flex justify-content-evenly">
    <div class="p-2 bd-highlight">
        <h2>Registrarse</h2>
        <form method="POST" action="registrarse" class="form">
            <div class="mb-3">
                <input placeholder="Ingrese su usuario" type="text" name="user" required>
            </div>
            <div class="mb-3">
                <input placeholder="Ingrese su contraseña" type="password" name="password" id="password" required>
            </div>
            <div class="mb-3">
                <input type="submit" class="btn-crearcuenta" value="Crear cuenta">
            </div>
        </form>
        <h3>{$error}</h3>
    </div>
</div>

{include file='templates/footer.tpl'}