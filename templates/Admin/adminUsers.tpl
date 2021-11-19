{include file="templates/Admin/adminHeader.tpl"}

<h2 class="text-center"> Lista de usuarios</h2>

<ul class="list-group ">
    {foreach from=$users item=$user}
        <li class="list-group-item text-center">
            {$user->user} | 
            {if $user->admin == '1'}
                Admin
                <button type="button" class="btn btn-outline-danger"> <a href="changeAdmin/{$user->user}">Quitar Permisos</a></button>
                {else}
                    Usuario estandar
                    <button type="button" class="btn btn-outline-danger"> <a href="changeAdmin/{$user->user}">Otorgar permisos</a></button>
            {/if}
            <button type="button" class="btn btn-outline-danger"> <a href="deleteUser/{$user->id}">Borrar</a></button>
        </li>
    {/foreach}

{include file="templates/footer.tpl"}