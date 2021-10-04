<?php
/* Smarty version 3.1.39, created on 2021-10-01 21:32:57
  from 'C:\xampp\htdocs\TPE\templates\rollsList.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_6157626928fd48_03862133',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '54c27537dc3ee3774691f655f2d66520027da911' => 
    array (
      0 => 'C:\\xampp\\htdocs\\TPE\\templates\\rollsList.tpl',
      1 => 1633116772,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:templates/header.tpl' => 1,
    'file:templates/footer.tpl' => 1,
  ),
),false)) {
function content_6157626928fd48_03862133 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:templates/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<ul>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['rolls']->value, 'roll');
$_smarty_tpl->tpl_vars['roll']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['roll']->value) {
$_smarty_tpl->tpl_vars['roll']->do_else = false;
?>
        <li>
            <?php echo $_smarty_tpl->tpl_vars['roll']->value->roll;?>
:  <?php echo $_smarty_tpl->tpl_vars['roll']->value->description;?>

        </li>
    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</ul>

<form action="createChampion" method="POST">
    <input type="text" name="description" id="description">
    <textarea name="history" id="" cols="30" rows="10"></textarea>
    <input type="submit" value="Enviar">
</form>

<?php $_smarty_tpl->_subTemplateRender("file:templates/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
