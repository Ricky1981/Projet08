<?php
/* Smarty version 3.1.39, created on 2021-09-01 11:37:16
  from '/var/www/html/prestashop/admin242cm43pv/themes/default/template/content.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_612f49cccad3a4_61227340',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd8a9448154340f03ed178cbdc7eaa91fa737efa6' => 
    array (
      0 => '/var/www/html/prestashop/admin242cm43pv/themes/default/template/content.tpl',
      1 => 1630403544,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_612f49cccad3a4_61227340 (Smarty_Internal_Template $_smarty_tpl) {
?><div id="ajax_confirmation" class="alert alert-success hide"></div>
<div id="ajaxBox" style="display:none"></div>

<div class="row">
	<div class="col-lg-12">
		<?php if ((isset($_smarty_tpl->tpl_vars['content']->value))) {?>
			<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

		<?php }?>
	</div>
</div>
<?php }
}
