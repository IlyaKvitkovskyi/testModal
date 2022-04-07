<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="google-site-verification" content="Jvu3W2xBaK-Rty_LMAe2j7fvBg8UiB9dVB4wIhZcqjI" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $home_page; ?>" />
<meta property="og:image" content="<?php echo !empty($og_image) ? $og_image : $logo; ?>" />
<meta property="og:site_name" content="<?php echo $name; ?>" />
<meta name="it-rating" content="it-rat-67ca58780fb2bcef6a953819ca9c3a08" />
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="preload" as="style" />
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<style>
<?php if(($config_main_menu_selection =='1') && ($menu_open_special == '1')) { ?>
@media (min-width: 992px) {.product-special #column-left {margin-top: <?php echo($left_menu * 40) - 40; ?>px;}}
<?php } ?>
<?php if(($config_main_menu_selection =='1') && ($menu_open_information == '1')) { ?>
@media (min-width: 992px) {[class*=information-information-] #column-left {margin-top: <?php echo($left_menu * 40) - 40; ?>px;}}
<?php } ?>
<?php if(($config_main_menu_selection =='1') && ($menu_open_search == '1')) { ?>
@media (min-width: 992px) {.product-search #column-left {margin-top: <?php echo($left_menu * 40) - 40; ?>px;}}
<?php } ?>
<?php if(($config_main_menu_selection =='1') && ($menu_open_manufacturer == '1')) { ?>
@media (min-width: 992px) {.product-manufacturer #column-left {margin-top: <?php echo($left_menu * 40) - 40; ?>px;}}
<?php } ?>
<?php if(($config_main_menu_selection =='1') && ($menu_open_category == '1')) { ?>
@media (min-width: 992px) {[class*=product-category-] #column-left {margin-top: <?php echo($left_menu * 40) - 40; ?>px;}}
<?php } ?>
<?php if(($config_main_menu_selection =='1') && ($general_menu_on_off =='1')) { ?>
@media (min-width: 992px) {#menu-header-open {min-height: <?php echo($left_menu * 40) + 8; ?>px;}}
<?php } ?>
<?php if(($config_main_menu_selection =='1') && ($general_menu_on_off =='1')) { ?>
@media (min-width: 992px) {#menu-header-open {min-height: <?php echo($left_menu * 40) + 8; ?>px;}}
<?php } ?>
@font-face {font-display:swap;font-family: "Roboto Condensed";src: url('catalog/view/theme/newstore/stylesheet/fonts/RobotoCondensed-Regular.ttf');font-style: normal;font-weight:400;}
@font-face{font-display:swap;font-family:'FontAwesome';src:url('catalog/view/theme/newstore/font-awesome/fonts/fontawesome-webfont.eot?v=4.7.0');src:url('catalog/view/theme/newstore/font-awesome/fonts/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'),url('catalog/view/theme/newstore/font-awesome/fonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'),url('catalog/view/theme/newstore/font-awesome/fonts/fontawesome-webfont.woff?v=4.7.0') format('woff'),url('catalog/view/theme/newstore/font-awesome/fonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'),url('catalog/view/theme/newstore/font-awesome/fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');font-weight:normal;font-style:normal}
@font-face {font-display:swap;src: url('catalog/view/theme/newstore/stylesheet/fonts/RobotoCondensed-Bold.ttf');font-weight:600;}
@font-face {font-display:swap;font-family:'Marck Script';src: url('catalog/view/theme/newstore/stylesheet/fonts/MarckScriptRegular.ttf');}
</style>
<?php echo $cssnewstore ;?>
<?php if($minifycss){?>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php } ?>
<?php if ($config_ns_themes_custom_bg_mode) { ?>
	<?php if ($config_themes_custom_bg_img_preview) { ?>
		<style>body {background:url('image/<?php echo $config_themes_custom_bg_img_preview; ?>')<?php if ($config_themes_custom_bg_repeat) { echo $config_themes_custom_bg_repeat; } ?> <?php if ($config_themes_custom_bg_attachment) { echo $config_themes_custom_bg_attachment; } ?> <?php if ($config_themes_custom_bg_position) { echo $config_themes_custom_bg_position; } ?>;}</style>
	<?php } ?>
<?php } elseif($config_ns_themes_custom_bg_mode_color !='') { ?>
		<style>body {background-color: <?php echo $config_ns_themes_custom_bg_mode_color; ?>;}</style>
<?php } ?>
<?php if ($config_on_off_shopping_cart_hover =='1') { ?>
<style>
#cart:hover .dropdown-menu{
	display:block;
}
#cart:hover  .dropdown-menu:before{
	content: "";
	position: absolute;
	top: -7px;
	width: 100%;
	height: 9px;
	background: transparent;
}
#cart:hover .car-down{
	-webkit-transform: rotate(-180deg);
	transform: rotate(-180deg);
}
</style>
<?php } ?>
<?php if (isset($nst_data['header_bg_mode']) && ($nst_data['header_bg_mode'] == '1')){ ?>
	<?php if ($nst_data['header_bg_img']) { ?>
		<style>header {margin-bottom:10px;background:url('image/<?php echo $nst_data['header_bg_img']; ?>')<?php if ($nst_data['header_bg_repeat']) { echo $nst_data['header_bg_repeat']; } ?> <?php if ($nst_data['header_bg_position']) { echo $nst_data['header_bg_position']; } ?>;}</style>
	<?php } ?>
<?php } elseif(isset($nst_data['header_bg_mode']) && ($nst_data['header_bg_mode'] == '0')){?>
	<?php if($nst_data['header_bg_mode_color'] !='') { ?>
		<style>header {margin-bottom:10px;background-color: <?php echo $nst_data['header_bg_mode_color']; ?>;}</style>
	<?php } ?>
<?php } ?>
<?php if(isset($nst_data['defaut_display_view'])){?>
<script>
if (localStorage.getItem('display') === null) {
localStorage.setItem('display', '<?php echo $nst_data['defaut_display_view'];?>');
}
</script>
<?php } ?>
<?php if(isset($nst_data['nsfullwidth']) && ($nst_data['nsfullwidth'] == 1)){?>
<style>
@media (max-width: 520px) {
.product-slider .owl-item .item {margin:0px 5px;}
.product-slider {margin:0px -5px;}
}
@media (min-width: 1360px){
.container { width: calc(100% - 20px);}
header .col-md-3.logo-top {width:20%;}
header .col-md-3.menu-box {width:20%;}
header .col-md-9.hidden-xs.hidden-sm.clearfix {width:80%;}
header .phone-box.col-md-3.col-md-push-4 {left: 42%;}
header .phone-box.col-md-3.col-md-push-5 {left: 48%;}
header .box-search.col-md-4.col-md-pull-2 {width:42%;right:13%}
header .box-search.col-md-4.col-md-pull-5 {width:42%;right:38%}
header .box-search.col-md-5.col-md-pull-4 {width:48%;right:32%}
header .box-search.col-md-5.col-md-pull-1 {width:48%;right:7%}
header .col-md-9.col-md-push-3 {width:80%;left:20%}
header .box-cart.col-md-2.col-md-push-4 {width:13%;left:42%}
header .box-cart.col-md-1.col-md-push-5{width:7%;left:48%}
.breadcrumb.col-lg-offset-3, .breadcrumb.col-md-offset-3 {margin-left: 20.4%;}
.container .sw-80 {width: 80%;}
.container .sw-20 {width: 20%;}
#content.col-md-9 {width: 80%;}
#column-left.col-md-3,#column-right.col-md-3{ width:20%;}
}
</style>
<?php } else { ?>
<style>
.product-grid.grid4.col-1 .actions .cart .btn-general {
	padding:7.5px 6px;
}
.product-grid.grid4.col-1 .actions .cart i {
	display:none;
}
.product-grid.grid4.col-lg-1-5 .actions .cart .btn-general {
	padding:7.5px 6px;
}
.product-grid.grid4.col-lg-1-5 .actions .cart i {
	display:none;
}
</style>
<?php } ?>
<style>
.sticker-ns.popular .fa{ color:<?php echo $config_change_color_icon_sticker_popular;?> }
.sticker-ns.popular{ background: <?php echo $config_change_background_sticker_popular;?> none repeat scroll 0 0; color:<?php echo $config_change_color_text_sticker_popular;?>; }
.sticker-ns.special .fa{ color:<?php echo $config_change_color_icon_sticker_special;?> }
.sticker-ns.special { background: <?php echo $config_change_background_sticker_special;?> none repeat scroll 0 0; color:<?php echo $config_change_color_text_sticker_special;?>; }
.sticker-ns.bestseller .fa{ color:<?php echo $config_change_color_icon_sticker_topbestseller;?> }
.sticker-ns.bestseller { background: <?php echo $config_change_background_sticker_topbestseller;?> none repeat scroll 0 0; color:<?php echo $config_change_color_text_sticker_topbestseller;?>; }
.sticker-ns.newproduct .fa{ color:<?php echo $config_change_color_icon_sticker_newproduct;?> }
.sticker-ns.newproduct{ background: <?php echo $config_change_background_sticker_newproduct;?> none repeat scroll 0 0; color:<?php echo $config_change_color_text_sticker_newproduct;?>; }
</style>
<?php echo $jsnewstore; ?>
<?php if($minifyjs){?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>"></script>
<?php } ?>
<?php } ?>
<script>
function init(elem, options){
elem.addClass('countdownHolder');
$.each(['Days','Hours','Minutes','Sec'],function(i){
var clas;
if (this=='Days') {clas="<?php echo $days; ?>";}
if (this=='Hours') {clas="<?php echo $hours; ?>";}
if (this=='Minutes') {clas="<?php echo $minutes; ?>";}
if (this=='Sec') {clas="<?php echo $sec; ?>";}
out_timer = "";
out_timer += '<span class="count'+this+'">';
out_timer += '<span class="num-time">';
out_timer += '<span class="position"><span class="digit static">0</span></span>';
out_timer += '<span class="position"><span class="digit static">0</span></span>';
out_timer += '</span>';
out_timer += '<span class="time_productany">'+clas+'</span>';
out_timer += '</span>';
$(out_timer).appendTo(elem);
});
}
var button_shopping = "<?php echo $button_shopping; ?>";
var button_checkout = "<?php echo $button_checkout; ?>";
var link_checkout = "<?php echo $checkout; ?>";
var link_newstorecheckout = "<?php echo $newstorecheckout; ?>";
var text_showmore = '<?php echo $text_showmore?>';
var color_schem = '<?php echo $color_schem?>';
var loading_masked_img = '<img src="catalog/view/theme/newstore/image/ring-alt-'+ color_schem +'.svg" />';
function loading_masked(action) {
if (action) {
$('.loading_masked').html(loading_masked_img);
$('.loading_masked').show();
} else {
$('.loading_masked').html('');
$('.loading_masked').hide();
}
}
function creatOverlayLoadPage(action) {
if (action) {
$('#messageLoadPage').html(loading_masked_img);
$('#messageLoadPage').show();
} else {
$('#messageLoadPage').html('');
$('#messageLoadPage').hide();
}
}
</script>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>


    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-954174926"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-954174926');
</script>
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '1016455338822408');
  fbq('track', 'PageView');
</script>


 <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TWXZDCS');</script>

<script type="text/JavaScript" charset="UTF-8" src="https://paylate.com.ua/js/start.js"></script>
<link rel="stylesheet" href="https://paylate.com.ua/js/credit.css">
<script type="text/JavaScript" charset="UTF-8" src="https://paylate.com.ua/js/jquery.maskedinput.min.js"></script>

<script>

    var pl_options = {

        pl_type: 2,

        pl_n1: "Три платежа",

        pl_n2: "Шесть платежей",

        pl_n3: "Десять платежей",

        pl_bc: "#4e6bb2",

    };

</script>
	<script src="https://cdn.gravitec.net/storage/6aa407d44056bac026dc5f30deda7edc/client.js" async></script>
<?php if(isset($hbannerpc[$lang_id]['image'])){ ?><style>.htop-b-pc img {margin:0 auto;}</style><?php } ?>
<?php if(isset($hbannermob[$lang_id]['image']) && ($hbannermob[$lang_id]['image'] !='')){ ?><style>.htop-b-mob img {margin:0 auto;}
<?php if(isset($main_menu_fix_mobile) && ($main_menu_fix_mobile == 1)) { ?>.htop-b-mob{padding-top:50px;}<?php } ?>
<?php if(isset($main_menu_fix_mobile) && ($main_menu_fix_mobile == 1)) { ?>header.pad-top{padding-top:5px;}<?php } ?></style><?php } ?>
</head>
<body class="<?php echo $class; ?>">
	<!--modal_start-->

    <style>
      /* Reset Styles */
      .bg_popup {
        box-sizing: border-box;
      }

      .bg_popup * {
        box-sizing: inherit;
      }   
      /* /.Reset Styles */

      /*Modal Window*/
      #bg_popup {
        position: fixed;
        z-index: 99999;
        background: rgba(0, 0, 0, 0.8);
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        display: none;
      }

      #popup {
        display: flex;
        flex-direction: column;
        background: #fff;
        border-radius: 20px;
        width: 730px;
        margin: 15% auto;
        padding: 30px 40px 25px 40px;
        position: relative;
      }

      .header-popup {
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin-bottom: 5px;
      }

      .link {
        cursor: pointer;
        outline: none;
        border: none;
        text-align: center;
        display: block;
        width: 200px;
        padding: 10px 50px 10px 50px;
        background-color: #2b8cdb;
        color: #fff;
        border-radius: 25px;
        font-weight: 400;
        font-size: 24px;
        line-height: 36px;
        font-family: 'Roboto Condensed', sans-serif;
      }

      .setCookie {
        border: none;
        background: none;
      }

      .img {
        width: 83px;
        height: 65px;
      }

      .bg-svg {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100px;
        height: 92px;
        background: rgba(195, 198, 197, 0.5);
        border-radius: 10px;
      }

      .span {
        position: absolute;
        right: 40px;
        top: 50px;
        width: 22px;
        height: 22px;
      }

      .span:before,
      .span:after {
        box-sizing: inherit;
        position: absolute;
        left: 15px;
        content: ' ';
        height: 33px;
        width: 2px;
        background-color: #000 !important;
      }
      .span:before {
        background-color: #000 !important;
        transform: rotate(45deg);
      }
      .span:after {
        background-color: #000 !important;
        transform: rotate(-45deg);
      }

      .text-popup {
        font-family: 'Roboto Condensed', sans-serif;
        font-weight: 400;
        font-size: 24px;
        line-height: 36px;
        color: #333333;
        width: 500px;
      }

      .body-wrapper {
        display: flex;
        justify-content: space-between;
        align-items: center;

        border-bottom: 3px solid #337ab7;
        margin-bottom: 20px;
      }

      .wrap-link {
        display: flex;
        justify-content: center;
      }

      .popup-title {
        font-weight: 700;
        font-size: 30px;
        line-height: 45px;
        color: #333333;
      }

      @media (max-width: 768px) {
        #popup {
          width: 500px;
          padding: 10px 30px 15px 30px;
        }

        .span {
          top: 35px;
        }

        .span:before,
        .span:after {
          height: 25px;
        }

        .popup-title {
          font-size: 25px;
          line-height: 35px;
        }

        .text-popup {
          font-size: 18px;
          line-height: 25px;
          margin-left: 10px;
        }

        .bg-svg {
          height: 75px;
        }

        .link {
          font-size: 18px;
          line-height: 30px;
          padding-left: 30px;
          padding-right: 30px;
        }
      }

      @media (max-width: 525px) {
        #popup {
          width: 400px;
          padding: 10px 20px 10px 20px;
        }

        .body-wrapper {
          flex-direction: column;
          justify-content: center;
          border-bottom: 2px solid #337ab7;
        }

        .span {
          right: 25px;
          top: 30px;
        }

        .span:before,
        .span:after {
          height: 25px;
        }

        .popup-title {
          font-weight: 600;
          font-size: 22px;
          line-height: 30px;
        }

        .text-popup {
          font-size: 16px;
          line-height: 20px;
          margin-left: 0;
          width: 300px;
        }

        .bg-svg {
          width: 80px;
        }

        .link {
          font-size: 16px;
          line-height: 25px;
          padding-left: 10px;
          padding-right: 10px;
        }
      }

      @media (max-width: 412px) {
        #popup {
          width: 315px;
          padding: 15px;
        }

        .span {
          right: 20px;
          top: 30px;
        }

        .span:before,
        .span:after {
          height: 20px;
        }

        .popup-title {
          font-weight: 600;
          font-size: 22px;
          line-height: 30px;
        }

        .text-popup {
          font-size: 14px;
          line-height: 18px;
          width: 250px;
        }

        .link {
          font-size: 14px;
          line-height: 20px;
          width: 150px;
        }
      }

      /* /.Modal Window */
    </style>

    <div id="bg_popup" class="bg_popup">
      <div id="popup" class="popup">
        <div class="header-popup">
          <span class="popup-title"><?=$text_modal_title ?></span>
          <a
            class="setCookie close"
            href="#"
            title="Закрыть"
            onclick="document.getElementById('bg_popup').style.display='none'; return false;"
          >
            <span class="span"></span>
          </a>
        </div>

        <div class="body-wrapper">
          <div class="bg-svg">
            <img class="img" src="https://pancer.com.ua/image/catalog/danger.svg" alt="danger-icon" />
          </div>
          <p class="text-popup">
            <?=$text_modal_text ?>
          </p>
        </div>
        <div class="wrap-link">
          <button
            id="setCookie"
            class="setCookie"
            onclick="document.getElementById('bg_popup').style.display='none'; return false;"
          >
            <a class="link" onclick="location.href='https://pancer.com.ua/<?=($lang === 'ua')?'ua/':'' ?>kontakty'"><?=$text_modal_button ?></a>
          </button>
        </div>
      </div>
    </div>

    <script>
      document.addEventListener('DOMContentLoaded', function () {
        const createItemInLocalStorage = (currentDate) => {
          const cookieBox = document.querySelectorAll('.setCookie');
          document.querySelector('.bg_popup').style.display = 'block';

          cookieBox.forEach((setCookie) => {
            setCookie.addEventListener('click', function (e) {
              let date = new Date(currentDate);
              date.setTime(date.getTime() + 60 * 20000);

              localStorage.setItem('expiresAt', date);

              document.querySelector('.bg_popup').style.display = 'none';
            });
          });
        };

        const expiresAtValue = localStorage.getItem('expiresAt');
        let currentDate = new Date();

        if (!expiresAtValue) {
          createItemInLocalStorage(currentDate);
        } else {
          const expiresDate = new Date(expiresAtValue);
          if (expiresDate - currentDate < 0) {
            createItemInLocalStorage(currentDate);
          }
        }
      });
    </script>
  

<!--modal_end-->
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1016455338822408&ev=PageView&noscript=1" alt=""/></noscript>
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TWXZDCS" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<?php if(isset($hbannerpc[$lang_id]['image']) && ($hbannerpc[$lang_id]['image'] !='')){ ?>
<div class="htop-b-pc hidden-xs hidden-sm" <?php if(isset($nst_data['hbannerpc'][$lang_id]['bg']) && ($nst_data['hbannerpc'][$lang_id]['bg'] !='')){ ?>style="background:<?php echo $nst_data['hbannerpc'][$lang_id]['bg'];?>"<?php } ?>>
<a href="<?php echo !empty($nst_data['hbannerpc'][$lang_id]['link']) ? $nst_data['hbannerpc'][$lang_id]['link'] : 'javascript:void(0)'; ?>">
	<img src="<?php echo $hbannerpc[$lang_id]['image'];?>" alt="" class="img-responsive" />
</a>
</div>
<?php } ?>
<?php if(isset($hbannermob[$lang_id]['image']) && ($hbannermob[$lang_id]['image'] !='')){ ?>
<div class="htop-b-mob visible-xs visible-sm" <?php if(isset($nst_data['hbannermob'][$lang_id]['bg']) && ($nst_data['hbannermob'][$lang_id]['bg'] !='')){ ?>style="background:<?php echo $nst_data['hbannermob'][$lang_id]['bg'];?>"<?php } ?>>
<a href="<?php echo !empty($nst_data['hbannermob'][$lang_id]['link']) ? $nst_data['hbannermob'][$lang_id]['link'] : 'javascript:void(0)'; ?>">
	<img src="<?php echo $hbannermob[$lang_id]['image'];?>" class="img-responsive" />
</a>
</div>
<?php } ?>
<p id="back-top"><a rel="nofollow" class="btn btn-default" href="#top"><i class="fa fa-chevron-up" style="font-size:18px;"></i></a></p>
<nav id="top" class="<?php if(isset($main_menu_fix_mobile) && ($main_menu_fix_mobile == 1)) { ?><?php if($show_h_wishlist == 1 || $show_h_compare == 1){ ?>fix-left-nav<?php } else { ?>hidden-xs hidden-sm<?php } ?><?php } ?>">
  <div class="container">
  <?php if(!empty($header_nav_menu_links)) { ?>
	<div class="pull-left">
		<div class="btn-group box-question">
			<button data-toggle="dropdown" type="button" class="visible-xs visible-sm btn btn-link"><i class="fa fa-bars"></i></button>
			<ul class="dropdown-menu dropdown-menu-left header-nav-links ">
				<?php foreach($header_nav_menu_links as $header_nav_menu_link) { ?>
					<li><button <?php if(($header_nav_menu_link['popup']=='1') && ($header_nav_menu_link['link'] !='')){ ?> onclick="$('.side-collapse').toggleClass('in'); banner_link_open('<?php echo $header_nav_menu_link['link']; ?>')" <?php } elseif(($header_nav_menu_link['popup']=='0') && ($header_nav_menu_link['link'] !='')) { ?>onclick="location='<?php echo $header_nav_menu_link['link']; ?>'" <?php } ?> type="button" class="btn btn-link"><?php if(!empty($header_nav_menu_link['icon_image'])){?><i class="<?php echo $header_nav_menu_link['icon_image'];?>"></i> <?php } ?><?php echo $header_nav_menu_link['title'][$lang_id]; ?></button></li>
				<?php  } ?>
			</ul>
		</div>
	</div>
	<?php } ?>
	<div class="pull-right">
	<div class="pull-right <?php if(isset($main_menu_fix_mobile) && ($main_menu_fix_mobile == 1)) { ?>hidden-xs hidden-sm<?php } ?>">
		<div class="btn-group box-account">
				<button data-toggle="dropdown" type="button" class="dropdown-toggle btn btn-link">
				<i class="fa fa-user-circle-o"></i>
				<?php if ($logged) { ?>
				<?php echo '<b>'.$first_name.' '.$last_name.'</b>';?>
				<?php } else { ?>
				<span class="hidden-xs hidden-sm"><?php echo $text_account; ?></span><i class="fa fa-caret-down"></i>
				<?php } ?>
				</button>
			<ul class="dropdown-menu dropdown-menu-right">
				<?php if ($logged) { ?>
				<li><a rel="nofollow" href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a rel="nofollow" href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				<li><a rel="nofollow" href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
				<li><a rel="nofollow" href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
				<li><a rel="nofollow" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
				<?php } else { ?>
				<li><a rel="nofollow" href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
				<li><a rel="nofollow" href="javascript:void(0)" id="login-popup" data-load-url="index.php?route=common/login_modal"><?php echo $text_login; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
	<div class="pull-right box-currency <?php if(isset($main_menu_fix_mobile) && ($main_menu_fix_mobile == 1)) { ?>hidden-xs hidden-sm<?php } ?>">
		<?php echo $currency; ?>
	</div>
	<div class="pull-right box-language <?php if(isset($main_menu_fix_mobile) && ($main_menu_fix_mobile == 1)) { ?>hidden-xs hidden-sm<?php } ?>">
		<?php echo $language; ?>
	</div>
	<?php if(isset($show_h_wishlist) && ($show_h_wishlist == 1)){?>
	<div class="pull-right box-wishlist">
		<a rel="nofollow" class="btn btn-link" href="<?php echo $wishlist; ?>" id="wishlist-total"><i class="fa fa-heart-o fa-fw"></i> <?php echo $text_wishlist; ?></a>
	</div>
	<?php } ?>
	<?php if(isset($show_h_compare) && ($show_h_compare == 1)){?>
	<div class="pull-right box-compare">
		<a rel="nofollow" class="btn btn-link" href="<?php echo $compare; ?>"  id="compare-total"><i class="fa fa-balance-scale" aria-hidden="true"></i> <?php echo $text_compare; ?></a>
	</div>
	<?php } ?>
	</div>
  </div>
</nav>
<header <?php if(isset($main_menu_fix_mobile) && ($main_menu_fix_mobile == 1)) { ?>class="pad-top"<?php } ?>>
  <div class="container">
    <div class="row vertical-align">
		<div class="col-xs-12 col-sm-12 col-md-3 text-center text-left-md logo-top">
			<div id="logo">
			<?php if ($logo) { ?>
				<?php if ($home == $home_page) { ?>
				  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
				<?php } else { ?>
				  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
				<?php } ?>
			  <?php } else { ?>
				<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
			  <?php } ?>
			</div>
		</div>
		<div class="phone-box col-xs-12 col-sm-12 col-md-3 <?php if(isset($swap_header_blocks) && ($swap_header_blocks =='1')){?><?php if(isset($type_shop_cart) && ($type_shop_cart =='1')) { ?>col-md-push-5<?php } else { ?>col-md-push-4<?php } ?><?php } ?> text-xs-center text-sm-center text-md-center">
			<div id="phone">
				<div class="contact-header">
					<div class="dropdown-toggle">
						<?php foreach($config_phones_array as $result_hp) { ?>
							<div class="additional-tel dth">
							<?php if(!empty($result_hp['type'])){?>
								<a <?php echo $result_hp['type']?>>
								<?php if($result_hp['icon_phone'] !=''){ ?>
									<div class="icon-image"><img src="<?php echo $result_hp['icon_phone'];?>" alt="<?php echo $result_hp['phone'];?>" /></div>
									<?php } elseif($result_hp['icon'] !=''){ ?>
									<div class="icon-image"><i class="<?php echo $result_hp['icon'];?>"></i></div>
								<?php } ?>
								<?php echo $result_hp['phone']?></a>
							<?php } else { ?>
								<?php if($result_hp['icon_phone'] !=''){ ?>
									<div class="icon-image"><img src="<?php echo $result_hp['icon_phone'];?>" alt="<?php echo $result_hp['phone'];?>" /></div>
									<?php } elseif($result_hp['icon'] !=''){ ?>
									<div class="icon-image"><i class="<?php echo $result_hp['icon'];?>"></i></div>
								<?php } ?>
								<?php echo $result_hp['phone']?>
							<?php } ?>
							</div>
						<?php } ?>
						<?php if(!empty($header_phones_dropdown) || $arbitrary_text[$lang_id]['text']) { ?>
							<span class="drop-icon-info"><i class="car-down fa fa-angle-down"></i></span>
						<?php } ?>
					</div>
					<?php if(!empty($header_phones_dropdown) || $arbitrary_text[$lang_id]['text']) { ?>
					<ul class="dropdown-menu drop-contacts">
						<?php if(isset($arbitrary_text[$lang_id]['text']) && (!empty($arbitrary_text[$lang_id]['text']))){ ?>
						<li class="info-contact">
							<?php echo html_entity_decode($arbitrary_text[$lang_id]['text'], ENT_QUOTES, 'UTF-8');?>
						</li>
						<li class="line-contact"></li>
						<?php } ?>
						<?php if(!empty($header_phones_dropdown)) { ?>
							<?php foreach($header_phones_dropdown as $result_ddh) { ?>
								<li>
								<?php if(!empty($result_ddh['type'])){?>
									<a <?php echo $result_ddh['type']?>>
										<?php if($result_ddh['icon_phone'] !=''){ ?>
										<div class="icon-image"><img src="<?php echo $result_ddh['icon_phone'];?>" alt="<?php echo $result_ddh['phone'];?>" /></div>
										<?php } elseif($result_ddh['icon'] !=''){ ?>
										<div class="icon-image"><i class="<?php echo $result_ddh['icon'];?>"></i></div>
										<?php } ?>
										<?php echo html_entity_decode($result_ddh['phone'], ENT_QUOTES, 'UTF-8');?>
									</a>
									<?php } else { ?>
										<div>
										<?php if($result_ddh['icon_phone'] !=''){ ?>
											<div class="icon-image"><img src="<?php echo $result_ddh['icon_phone'];?>" alt="<?php echo $result_ddh['phone'];?>" /></div>
											<?php } elseif($result_ddh['icon'] !=''){ ?>
											<div class="icon-image"><i class="<?php echo $result_ddh['icon'];?>"></i></div>
											<?php } ?>
											<?php echo html_entity_decode($result_ddh['phone'], ENT_QUOTES, 'UTF-8');?>
										</div>
									<?php } ?>
								</li>
							<?php } ?>
						<?php } ?>
					</ul>
					<?php } ?>
					<div class="text_after_phone"><?php echo $text_after_phone;?></div>
				</div>
			</div>
		</div>
		<div class="box-cart <?php if(isset($main_menu_fix_mobile) && ($main_menu_fix_mobile == 1)) { ?>hidden-xs<?php } ?> col-xs-12 <?php if(isset($type_shop_cart) && ($type_shop_cart =='1')) { ?>col-sm-4 col-sm-push-8 col-md-1 col-md-push-5 <?php } else { ?>col-xs-12 col-sm-4 col-md-2 col-md-push-4 col-sm-push-8<?php } ?>"><?php echo $cart; ?></div>
		<div class="box-search <?php if(isset($main_menu_fix_mobile) && ($main_menu_fix_mobile == 1)) { ?>hidden-xs<?php } ?> col-xs-12 <?php if(isset($type_shop_cart) && ($type_shop_cart =='1')) { ?>col-sm-8 col-sm-pull-4 col-md-5 <?php if(isset($swap_header_blocks) && ($swap_header_blocks =='1')){?> col-md-pull-4<?php } else { ?>col-md-pull-1<?php } ?><?php } else { ?> col-sm-8 col-md-4 <?php if(isset($swap_header_blocks) && ($swap_header_blocks =='1')){?> col-md-pull-5 col-sm-pull-4<?php } else { ?>col-sm-pull-4 col-md-pull-2<?php } ?><?php } ?> search-top"><?php echo $search; ?></div>
	</div>
  </div>
	<?php if($config_main_menu_selection =='0') { ?>
		<?php require DIR_TEMPLATE . "newstore/template/common/menu_h.tpl"; ?>
	<?php } ?>
	<?php if($config_main_menu_selection =='1') { ?>
		<?php require DIR_TEMPLATE . "newstore/template/common/menu_v.tpl"; ?>
	<?php } ?>

<?php if(isset($main_menu_fix_mobile) && ($main_menu_fix_mobile == 1)) { ?>
<div class="page-no-scroll-bg"></div>
<div class="hidden-md hidden-lg">
	<nav id="menu-mobile-ns" class="<?php if(isset($type_mobile_menu) && ($type_mobile_menu == '1')){ ?>navmenu navmenu-default navmenu-fixed-left offcanvas <?php } else { ?>menu-collapse-down<?php } ?>">
		<div class="collapse navbar-collapse navbar-type2-collapse">
		  <ul class="nav navbar-nav">
			<?php if(isset($type_mobile_menu) && ($type_mobile_menu == '1')){ ?>
			<li><button class="close-menu" data-toggle="offcanvas" data-target="#menu-mobile-ns.navmenu.offcanvas" data-canvas="body"><?php echo $text_category; ?><i class="fa fa-close"></i></button></li>
			<?php } ?>
			<?php foreach ($items as $item) { ?>
				<li><a href="<?php echo $item['href']; ?>" rel="nofollow"><?php echo $item['name'][$lang_id]; ?>
					<?php if ($item['children']) { ?><span class="show-sc-mobile" data-toggle="collapse"><i class="fa fa-plus plus"></i></span><?php } ?>
						<?php if($item['thumb']){?>
							<img alt="<?php echo $item['name'][$lang_id]; ?>" class="mobile-menu-icon" src="<?php echo$item['thumb']?>"/>
						<?php } ?>
						<?php if($item['sticker_parent'] !='0'){?>
							<?php if($item['sticker_parent'] =='new') { ?>
								<span class="cat-label cat-label-label1"><?php echo $item['sticker_parent'];?></span>
							<?php } elseif($item['sticker_parent'] =='sale') { ?>
								<span class="cat-label cat-label-label2"><?php echo $item['sticker_parent'];?></span>
							<?php } else { ?>
								<span class="cat-label cat-label-label3"><?php echo $item['sticker_parent'];?></span>
							<?php } ?>
						<?php } ?>
					</a>
					<?php if($item['type']=="html"){?>
						<div class="collapse mob-submenu-list">
							<div class="mob-html-block">
								<?php echo html_entity_decode($item['html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
							</div>
					   </div>
					<?php } ?>
					<?php if(!empty($item['children']) && ($item['type']!='html')) { ?>
						<div class="collapse mob-submenu-list">
							<ul class="list-unstyled">
								<?php foreach ($item['children'] as $child) { ?>
									<li>
										<a href="<?php echo $child['href']; ?>" rel="nofollow"><?php echo $child['name']; ?>
											<?php if (!empty($child['children'])) { ?><span class="show-sc-mobile" data-toggle="collapse"><i class="fa fa-plus plus"></i></span><?php } ?>
											<?php if(isset($child['sticker_category']) && ($child['sticker_category'] !='0')){?>
												<?php if($child['sticker_category'] =='new') { ?>
													<span class="cat-label cat-label-label1"><?php echo $child['sticker_category'];?></span>
												<?php } elseif($child['sticker_category'] =='sale') { ?>
													<span class="cat-label cat-label-label2"><?php echo $child['sticker_category'];?></span>
												<?php } else { ?>
													<span class="cat-label cat-label-label3"><?php echo $child['sticker_category'];?></span>
												<?php } ?>
											<?php } ?>
										</a>
											<?php if (!empty($child['children'])) { ?>
												<div class="collapse mob-submenu-list-3lev">
													<ul class="list-unstyled">
														<?php foreach ($child['children'] as $subchild) { ?>
															<?php if($item['type']=="freelink"){ ?>
																<li><a href="<?php echo $subchild['link']; ?>"> - <?php echo $subchild['title']; ?></a></li>
															<?php } else { ?>
																<li><a href="<?php echo $subchild['href']; ?>"> - <?php echo $subchild['name']; ?></a></li>
															<?php } ?>
														<?php } ?>
													</ul>
												</div>
											<?php } ?>
									</li>
								<?php } ?>
							</ul>
						</div>
					<?php } ?>

				</li>
			<?php } ?>

		  </ul>
		</div>
	</nav>
</div>
<script><!--
$("#menu-mobile-ns .show-sc-mobile").click(function () {
	$(this).siblings(".collapsible").toggle();
	$(this).toggleClass("open-sc-mobile");
	$(this).parent().next().toggleClass("in");
});
--></script>
<script>
/*!
 * Jasny Bootstrap v3.1.3 (http://jasny.github.io/bootstrap)
 * Copyright 2012-2014 Arnold Daniels
 * Licensed under Apache-2.0 (https://github.com/jasny/bootstrap/blob/master/LICENSE)
 */
if("undefined"==typeof jQuery)throw new Error("Jasny Bootstrap's JavaScript requires jQuery");+function(a){"use strict";function b(){var a=document.createElement("bootstrap"),b={WebkitTransition:"webkitTransitionEnd",MozTransition:"transitionend",OTransition:"oTransitionEnd otransitionend",transition:"transitionend"};for(var c in b)if(void 0!==a.style[c])return{end:b[c]};return!1}void 0===a.support.transition&&(a.fn.emulateTransitionEnd=function(b){var c=!1,d=this;a(this).one(a.support.transition.end,function(){c=!0});var e=function(){c||a(d).trigger(a.support.transition.end)};return setTimeout(e,b),this},a(function(){a.support.transition=b()}))}(window.jQuery),+function(a){"use strict";var b=function(c,d){this.$element=a(c),this.options=a.extend({},b.DEFAULTS,d),this.state=null,this.placement=null,this.options.recalc&&(this.calcClone(),a(window).on("resize",a.proxy(this.recalc,this))),this.options.autohide&&a(document).on("click",a.proxy(this.autohide,this)),this.options.toggle&&this.toggle(),this.options.disablescrolling&&(this.options.disableScrolling=this.options.disablescrolling,delete this.options.disablescrolling)};b.DEFAULTS={toggle:!0,placement:"auto",autohide:!0,recalc:!0,disableScrolling:!0},b.prototype.offset=function(){switch(this.placement){case"left":case"right":return this.$element.outerWidth();case"top":case"bottom":return this.$element.outerHeight()}},b.prototype.calcPlacement=function(){function b(a,b){if("auto"===e.css(b))return a;if("auto"===e.css(a))return b;var c=parseInt(e.css(a),10),d=parseInt(e.css(b),10);return c>d?b:a}if("auto"!==this.options.placement)return void(this.placement=this.options.placement);this.$element.hasClass("in")||this.$element.css("visiblity","hidden !important").addClass("in");var c=a(window).width()/this.$element.width(),d=a(window).height()/this.$element.height(),e=this.$element;this.placement=c>=d?b("left","right"):b("top","bottom"),"hidden !important"===this.$element.css("visibility")&&this.$element.removeClass("in").css("visiblity","")},b.prototype.opposite=function(a){switch(a){case"top":return"bottom";case"left":return"right";case"bottom":return"top";case"right":return"left"}},b.prototype.getCanvasElements=function(){var b=this.options.canvas?a(this.options.canvas):this.$element,c=b.find("*").filter(function(){return"fixed"===a(this).css("position")}).not(this.options.exclude);return b.add(c)},b.prototype.slide=function(b,c,d){if(!a.support.transition){var e={};return e[this.placement]="+="+c,b.animate(e,350,d)}var f=this.placement,g=this.opposite(f);b.each(function(){"auto"!==a(this).css(f)&&a(this).css(f,(parseInt(a(this).css(f),10)||0)+c),"auto"!==a(this).css(g)&&a(this).css(g,(parseInt(a(this).css(g),10)||0)-c)}),this.$element.one(a.support.transition.end,d).emulateTransitionEnd(350)},b.prototype.disableScrolling=function(){var b=a("body").width(),c="padding-"+this.opposite(this.placement);if(void 0===a("body").data("offcanvas-style")&&a("body").data("offcanvas-style",a("body").attr("style")||""),a("body").css("overflow","hidden"),a("body").width()>b){var d=parseInt(a("body").css(c),10)+a("body").width()-b;setTimeout(function(){a("body").css(c,d)},1)}},b.prototype.show=function(){if(!this.state){var b=a.Event("show.bs.offcanvas");if(this.$element.trigger(b),!b.isDefaultPrevented()){this.state="slide-in",this.calcPlacement();var c=this.getCanvasElements(),d=this.placement,e=this.opposite(d),f=this.offset();-1!==c.index(this.$element)&&(a(this.$element).data("offcanvas-style",a(this.$element).attr("style")||""),this.$element.css(d,-1*f),this.$element.css(d)),c.addClass("canvas-sliding").each(function(){void 0===a(this).data("offcanvas-style")&&a(this).data("offcanvas-style",a(this).attr("style")||""),"static"===a(this).css("position")&&a(this).css("position","fixed"),"auto"!==a(this).css(d)&&"0px"!==a(this).css(d)||"auto"!==a(this).css(e)&&"0px"!==a(this).css(e)||a(this).css(d,0)}),this.options.disableScrolling&&this.disableScrolling();var g=function(){"slide-in"==this.state&&(this.state="slid",c.removeClass("canvas-sliding").addClass("canvas-slid"),this.$element.trigger("shown.bs.offcanvas"))};setTimeout(a.proxy(function(){this.$element.addClass("in"),this.slide(c,f,a.proxy(g,this))},this),1)}}},b.prototype.hide=function(){if("slid"===this.state){var b=a.Event("hide.bs.offcanvas");if(this.$element.trigger(b),!b.isDefaultPrevented()){this.state="slide-out";var c=a(".canvas-slid"),d=(this.placement,-1*this.offset()),e=function(){"slide-out"==this.state&&(this.state=null,this.placement=null,this.$element.removeClass("in"),c.removeClass("canvas-sliding"),c.add(this.$element).add("body").each(function(){a(this).attr("style",a(this).data("offcanvas-style")).removeData("offcanvas-style")}),this.$element.trigger("hidden.bs.offcanvas"))};c.removeClass("canvas-slid").addClass("canvas-sliding"),setTimeout(a.proxy(function(){this.slide(c,d,a.proxy(e,this))},this),1)}}},b.prototype.toggle=function(){"slide-in"!==this.state&&"slide-out"!==this.state&&this["slid"===this.state?"hide":"show"]()},b.prototype.calcClone=function(){this.$calcClone=this.$element.clone().html("").addClass("offcanvas-clone").removeClass("in").appendTo(a("body"))},b.prototype.recalc=function(){if("none"!==this.$calcClone.css("display")&&("slid"===this.state||"slide-in"===this.state)){this.state=null,this.placement=null;var b=this.getCanvasElements();this.$element.removeClass("in"),b.removeClass("canvas-slid"),b.add(this.$element).add("body").each(function(){a(this).attr("style",a(this).data("offcanvas-style")).removeData("offcanvas-style")})}},b.prototype.autohide=function(b){0===a(b.target).closest(this.$element).length&&this.hide()};var c=a.fn.offcanvas;a.fn.offcanvas=function(c){return this.each(function(){var d=a(this),e=d.data("bs.offcanvas"),f=a.extend({},b.DEFAULTS,d.data(),"object"==typeof c&&c);e||d.data("bs.offcanvas",e=new b(this,f)),"string"==typeof c&&e[c]()})},a.fn.offcanvas.Constructor=b,a.fn.offcanvas.noConflict=function(){return a.fn.offcanvas=c,this},a(document).on("click.bs.offcanvas.data-api","[data-toggle=offcanvas]",function(b){var c,d=a(this),e=d.attr("data-target")||b.preventDefault()||(c=d.attr("href"))&&c.replace(/.*(?=#[^\s]+$)/,""),f=a(e),g=f.data("bs.offcanvas"),h=g?"toggle":d.data();b.stopPropagation(),g?g.toggle():f.offcanvas(h)})}(window.jQuery),+function(a){"use strict";var b=function(c,d){this.$element=a(c),this.options=a.extend({},b.DEFAULTS,d),this.$element.on("click.bs.rowlink","td:not(.rowlink-skip)",a.proxy(this.click,this))};b.DEFAULTS={target:"a"},b.prototype.click=function(b){var c=a(b.currentTarget).closest("tr").find(this.options.target)[0];if(a(b.target)[0]!==c)if(b.preventDefault(),c.click)c.click();else if(document.createEvent){var d=document.createEvent("MouseEvents");d.initMouseEvent("click",!0,!0,window,0,0,0,0,0,!1,!1,!1,!1,0,null),c.dispatchEvent(d)}};var c=a.fn.rowlink;a.fn.rowlink=function(c){return this.each(function(){var d=a(this),e=d.data("bs.rowlink");e||d.data("bs.rowlink",e=new b(this,c))})},a.fn.rowlink.Constructor=b,a.fn.rowlink.noConflict=function(){return a.fn.rowlink=c,this},a(document).on("click.bs.rowlink.data-api",'[data-link="row"]',function(b){if(0===a(b.target).closest(".rowlink-skip").length){var c=a(this);c.data("bs.rowlink")||(c.rowlink(c.data()),a(b.target).trigger("click.bs.rowlink"))}})}(window.jQuery),+function(a){"use strict";var b=void 0!==window.orientation,c=navigator.userAgent.toLowerCase().indexOf("android")>-1,d="Microsoft Internet Explorer"==window.navigator.appName,e=function(b,d){c||(this.$element=a(b),this.options=a.extend({},e.DEFAULTS,d),this.mask=String(this.options.mask),this.init(),this.listen(),this.checkVal())};e.DEFAULTS={mask:"",placeholder:"_",definitions:{9:"[0-9]",a:"[A-Za-z]",w:"[A-Za-z0-9]","*":"."}},e.prototype.init=function(){var b=this.options.definitions,c=this.mask.length;this.tests=[],this.partialPosition=this.mask.length,this.firstNonMaskPos=null,a.each(this.mask.split(""),a.proxy(function(a,d){"?"==d?(c--,this.partialPosition=a):b[d]?(this.tests.push(new RegExp(b[d])),null===this.firstNonMaskPos&&(this.firstNonMaskPos=this.tests.length-1)):this.tests.push(null)},this)),this.buffer=a.map(this.mask.split(""),a.proxy(function(a){return"?"!=a?b[a]?this.options.placeholder:a:void 0},this)),this.focusText=this.$element.val(),this.$element.data("rawMaskFn",a.proxy(function(){return a.map(this.buffer,function(a,b){return this.tests[b]&&a!=this.options.placeholder?a:null}).join("")},this))},e.prototype.listen=function(){if(!this.$element.attr("readonly")){var b=(d?"paste":"input")+".mask";this.$element.on("unmask.bs.inputmask",a.proxy(this.unmask,this)).on("focus.bs.inputmask",a.proxy(this.focusEvent,this)).on("blur.bs.inputmask",a.proxy(this.blurEvent,this)).on("keydown.bs.inputmask",a.proxy(this.keydownEvent,this)).on("keypress.bs.inputmask",a.proxy(this.keypressEvent,this)).on(b,a.proxy(this.pasteEvent,this))}},e.prototype.caret=function(a,b){if(0!==this.$element.length){if("number"==typeof a)return b="number"==typeof b?b:a,this.$element.each(function(){if(this.setSelectionRange)this.setSelectionRange(a,b);else if(this.createTextRange){var c=this.createTextRange();c.collapse(!0),c.moveEnd("character",b),c.moveStart("character",a),c.select()}});if(this.$element[0].setSelectionRange)a=this.$element[0].selectionStart,b=this.$element[0].selectionEnd;else if(document.selection&&document.selection.createRange){var c=document.selection.createRange();a=0-c.duplicate().moveStart("character",-1e5),b=a+c.text.length}return{begin:a,end:b}}},e.prototype.seekNext=function(a){for(var b=this.mask.length;++a<=b&&!this.tests[a];);return a},e.prototype.seekPrev=function(a){for(;--a>=0&&!this.tests[a];);return a},e.prototype.shiftL=function(a,b){var c=this.mask.length;if(!(0>a)){for(var d=a,e=this.seekNext(b);c>d;d++)if(this.tests[d]){if(!(c>e&&this.tests[d].test(this.buffer[e])))break;this.buffer[d]=this.buffer[e],this.buffer[e]=this.options.placeholder,e=this.seekNext(e)}this.writeBuffer(),this.caret(Math.max(this.firstNonMaskPos,a))}},e.prototype.shiftR=function(a){for(var b=this.mask.length,c=a,d=this.options.placeholder;b>c;c++)if(this.tests[c]){var e=this.seekNext(c),f=this.buffer[c];if(this.buffer[c]=d,!(b>e&&this.tests[e].test(f)))break;d=f}},e.prototype.unmask=function(){this.$element.unbind(".mask").removeData("inputmask")},e.prototype.focusEvent=function(){this.focusText=this.$element.val();var a=this.mask.length,b=this.checkVal();this.writeBuffer();var c=this,d=function(){b==a?c.caret(0,b):c.caret(b)};d(),setTimeout(d,50)},e.prototype.blurEvent=function(){this.checkVal(),this.$element.val()!==this.focusText&&this.$element.trigger("change")},e.prototype.keydownEvent=function(a){var c=a.which;if(8==c||46==c||b&&127==c){var d=this.caret(),e=d.begin,f=d.end;return f-e===0&&(e=46!=c?this.seekPrev(e):f=this.seekNext(e-1),f=46==c?this.seekNext(f):f),this.clearBuffer(e,f),this.shiftL(e,f-1),!1}return 27==c?(this.$element.val(this.focusText),this.caret(0,this.checkVal()),!1):void 0},e.prototype.keypressEvent=function(a){var b=this.mask.length,c=a.which,d=this.caret();if(a.ctrlKey||a.altKey||a.metaKey||32>c)return!0;if(c){d.end-d.begin!==0&&(this.clearBuffer(d.begin,d.end),this.shiftL(d.begin,d.end-1));var e=this.seekNext(d.begin-1);if(b>e){var f=String.fromCharCode(c);if(this.tests[e].test(f)){this.shiftR(e),this.buffer[e]=f,this.writeBuffer();var g=this.seekNext(e);this.caret(g)}}return!1}},e.prototype.pasteEvent=function(){var a=this;setTimeout(function(){a.caret(a.checkVal(!0))},0)},e.prototype.clearBuffer=function(a,b){for(var c=this.mask.length,d=a;b>d&&c>d;d++)this.tests[d]&&(this.buffer[d]=this.options.placeholder)},e.prototype.writeBuffer=function(){return this.$element.val(this.buffer.join("")).val()},e.prototype.checkVal=function(a){for(var b=this.mask.length,c=this.$element.val(),d=-1,e=0,f=0;b>e;e++)if(this.tests[e]){for(this.buffer[e]=this.options.placeholder;f++<c.length;){var g=c.charAt(f-1);if(this.tests[e].test(g)){this.buffer[e]=g,d=e;break}}if(f>c.length)break}else this.buffer[e]==c.charAt(f)&&e!=this.partialPosition&&(f++,d=e);return!a&&d+1<this.partialPosition?(this.$element.val(""),this.clearBuffer(0,b)):(a||d+1>=this.partialPosition)&&(this.writeBuffer(),a||this.$element.val(this.$element.val().substring(0,d+1))),this.partialPosition?e:this.firstNonMaskPos};var f=a.fn.inputmask;a.fn.inputmask=function(b){return this.each(function(){var c=a(this),d=c.data("bs.inputmask");d||c.data("bs.inputmask",d=new e(this,b))})},a.fn.inputmask.Constructor=e,a.fn.inputmask.noConflict=function(){return a.fn.inputmask=f,this},a(document).on("focus.bs.inputmask.data-api","[data-mask]",function(){var b=a(this);b.data("bs.inputmask")||b.inputmask(b.data())})}(window.jQuery),+function(a){"use strict";var b="Microsoft Internet Explorer"==window.navigator.appName,c=function(b,c){if(this.$element=a(b),this.$input=this.$element.find(":file"),0!==this.$input.length){this.name=this.$input.attr("name")||c.name,this.$hidden=this.$element.find('input[type=hidden][name="'+this.name+'"]'),0===this.$hidden.length&&(this.$hidden=a('<input type="hidden">').insertBefore(this.$input)),this.$preview=this.$element.find(".fileinput-preview");var d=this.$preview.css("height");"inline"!==this.$preview.css("display")&&"0px"!==d&&"none"!==d&&this.$preview.css("line-height",d),this.original={exists:this.$element.hasClass("fileinput-exists"),preview:this.$preview.html(),hiddenVal:this.$hidden.val()},this.listen()}};c.prototype.listen=function(){this.$input.on("change.bs.fileinput",a.proxy(this.change,this)),a(this.$input[0].form).on("reset.bs.fileinput",a.proxy(this.reset,this)),this.$element.find('[data-trigger="fileinput"]').on("click.bs.fileinput",a.proxy(this.trigger,this)),this.$element.find('[data-dismiss="fileinput"]').on("click.bs.fileinput",a.proxy(this.clear,this))},c.prototype.change=function(b){var c=void 0===b.target.files?b.target&&b.target.value?[{name:b.target.value.replace(/^.+\\/,"")}]:[]:b.target.files;if(b.stopPropagation(),0===c.length)return void this.clear();this.$hidden.val(""),this.$hidden.attr("name",""),this.$input.attr("name",this.name);var d=c[0];if(this.$preview.length>0&&("undefined"!=typeof d.type?d.type.match(/^image\/(gif|png|jpeg)$/):d.name.match(/\.(gif|png|jpe?g)$/i))&&"undefined"!=typeof FileReader){var e=new FileReader,f=this.$preview,g=this.$element;e.onload=function(b){var e=a("<img>");e[0].src=b.target.result,c[0].result=b.target.result,g.find(".fileinput-filename").text(d.name),"none"!=f.css("max-height")&&e.css("max-height",parseInt(f.css("max-height"),10)-parseInt(f.css("padding-top"),10)-parseInt(f.css("padding-bottom"),10)-parseInt(f.css("border-top"),10)-parseInt(f.css("border-bottom"),10)),f.html(e),g.addClass("fileinput-exists").removeClass("fileinput-new"),g.trigger("change.bs.fileinput",c)},e.readAsDataURL(d)}else this.$element.find(".fileinput-filename").text(d.name),this.$preview.text(d.name),this.$element.addClass("fileinput-exists").removeClass("fileinput-new"),this.$element.trigger("change.bs.fileinput")},c.prototype.clear=function(a){if(a&&a.preventDefault(),this.$hidden.val(""),this.$hidden.attr("name",this.name),this.$input.attr("name",""),b){var c=this.$input.clone(!0);this.$input.after(c),this.$input.remove(),this.$input=c}else this.$input.val("");this.$preview.html(""),this.$element.find(".fileinput-filename").text(""),this.$element.addClass("fileinput-new").removeClass("fileinput-exists"),void 0!==a&&(this.$input.trigger("change"),this.$element.trigger("clear.bs.fileinput"))},c.prototype.reset=function(){this.clear(),this.$hidden.val(this.original.hiddenVal),this.$preview.html(this.original.preview),this.$element.find(".fileinput-filename").text(""),this.original.exists?this.$element.addClass("fileinput-exists").removeClass("fileinput-new"):this.$element.addClass("fileinput-new").removeClass("fileinput-exists"),this.$element.trigger("reset.bs.fileinput")},c.prototype.trigger=function(a){this.$input.trigger("click"),a.preventDefault()};var d=a.fn.fileinput;a.fn.fileinput=function(b){return this.each(function(){var d=a(this),e=d.data("bs.fileinput");e||d.data("bs.fileinput",e=new c(this,b)),"string"==typeof b&&e[b]()})},a.fn.fileinput.Constructor=c,a.fn.fileinput.noConflict=function(){return a.fn.fileinput=d,this},a(document).on("click.fileinput.data-api",'[data-provides="fileinput"]',function(b){var c=a(this);if(!c.data("bs.fileinput")){c.fileinput(c.data());var d=a(b.target).closest('[data-dismiss="fileinput"],[data-trigger="fileinput"]');d.length>0&&(b.preventDefault(),d.trigger("click.bs.fileinput"))}})}(window.jQuery);
</script>
<?php } ?>
</header>