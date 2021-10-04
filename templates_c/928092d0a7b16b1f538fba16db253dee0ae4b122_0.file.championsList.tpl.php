<?php
/* Smarty version 3.1.39, created on 2021-10-01 21:33:07
  from 'C:\xampp\htdocs\TPE\templates\championsList.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61576273aba561_95868935',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '928092d0a7b16b1f538fba16db253dee0ae4b122' => 
    array (
      0 => 'C:\\xampp\\htdocs\\TPE\\templates\\championsList.tpl',
      1 => 1633116785,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:templates/header.tpl' => 1,
    'file:templates/footer.tpl' => 1,
  ),
),false)) {
function content_61576273aba561_95868935 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:templates/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<ul>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['champions']->value, 'champion');
$_smarty_tpl->tpl_vars['champion']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['champion']->value) {
$_smarty_tpl->tpl_vars['champion']->do_else = false;
?>
        <li>
            <?php echo $_smarty_tpl->tpl_vars['champion']->value->name;?>
, <?php echo $_smarty_tpl->tpl_vars['champion']->value->description;?>

        </li>
    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</ul>

<form action="createChampion" method="POST">
    <input type="text" name="name" id="name">
    <input type="text" name="description" id="description">
    <textarea name="history" id="" cols="30" rows="10"></textarea>
    <select name="id_roll" id="">
        <option value="1">Mago</option>
        <option value="2">Luchador</option>
        <option value="3">Asesino</option>
        <option value="4">Tanque</option>
        <option value="5">Tirador</option>
        <option value="6">Soporte</option>
    </select>
    <input type="submit" value="Enviar">
</form>

<?php $_smarty_tpl->_subTemplateRender("file:templates/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
