{if $admin}
    {include file="templates/Admin/adminHeader.tpl" }

{elseif $logged}
    {include file="templates/headerLogout.tpl"}

{else}
    {include file="templates/header.tpl"}
{/if}

<h1 class="text-center"> ¡ATENCION! </h1>
<p class="text-center lead"> Has dejado el formulario sin completar.
Tristemente, no podemos trabajar sin informacion
¡Completalo y vuelve a intentarlo!</p>

<img src="{BASE_URL}/img/blitz.png " class="rounded mx-auto d-block">

{include file="templates/footer.tpl"}