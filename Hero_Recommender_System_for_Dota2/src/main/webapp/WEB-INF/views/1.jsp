<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<link href="http://www.dota2.com/public/css/global.css?v=b3379714"
	rel="stylesheet" type="text/css">
<link
	href="http://www.dota2.com/public/css/global_schinese.css?v=gwxd-6E4z4E7"
	rel="stylesheet" type="text/css">
<link
	href="http://www.dota2.com/public/css/publicheader.css?v=n3QrQzPd1_eP"
	rel="stylesheet" type="text/css">
<link href="http://www.dota2.com/public/css/heropedia.css?v=b3379714"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="http://cdn.dota2.com/apps/dota2/javascript/static/jquery-1.7.1.min.js?v=3379714"></script>
<script type="text/javascript">
	$J = jQuery;
</script>
<script type="text/javascript"
	src="http://cdn.steamcommunity.com/public/shared/javascript/shared_global.js?v=b3379714&amp;l=schinese"></script>
<script type="text/javascript"
	src="http://www.dota2.com/public/javascript/heropedia.js?v=b3379714&amp;l=schinese"></script>
<title>Heroes</title>


<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-33822635-2' ]);
	_gaq.push([ '_setSampleRate', '1' ]);
	_gaq.push([ '_setDomainName', 'dota2.com' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>
</head>
<body>
	<center>
		<!-- header bar -->



		<div id="navBarBGRepeat" class="DotaFont">
			<div id="navBarShadow"></div>
			<div id="navBarBG">
				<div id="navBar">
					<div id="navLoginAndLanguage">

						<a
							href="https://steamcommunity.com/oauth/login?client_id=9B2C1229&response_type=token&state=heroes%2F">登录</a>
						&nbsp;|&nbsp;&nbsp;

						<div id="languageSelector" class="DotaFont">
							<a href="javascript:void(0)">语言</a> <img
								style="padding-bottom: 2px;"
								src="http://cdn.dota2.com/apps/dota2/images/header/btn_arrow_down.png"
								width="9" height="4" border="0" /><br />
						</div>


					</div>
					<span class="navItem navItemDotaLogo"> <a
						class="navBarItem DotaFont" href="http://blog.dota2.com/"> <img
							border="0" class="DotaLogo"
							src="http://cdn.dota2.com/apps/dota2/images/nav/logo.png" />
					</a>
					</span> <span class="navItem"> <a class="navBarItem DotaFont"
						href="http://www.dota2.com/watch/">观战<sup>测试</sup></a>
					</span> <span class="navItem"> <a class="navBarItem DotaFont"
						href="http://www.dota2.com/store/">商店(测试版)</a>
					</span> <span class="navItem"> <a class="navBarItem DotaFont"
						href="javascript:void(0)">英雄百科</a>
						<div style="display: none;" class="menuSubItemList">
							<a class="DotaFont" href="http://www.dota2.com/heroes/">英雄</a>
							<a class="DotaFont" href="http://www.dota2.com/items/">物品浏览器</a>
							<a class="DotaFont" href="http://www.dota2.com/workshop/builds">攻略</a>
							<a class="DotaFont"
								href="http://steamcommunity.com/app/570/guides" target="_blank">Steam指南</a>
							<a class="DotaFont" href="http://www.dota2.com/quiz">商店老板的考验</a>
						</div> <img class="dn_arrow"
						src="http://cdn.dota2.com/apps/dota2/images/nav/arrow.png" />
					</span> <span class="navItem"> <a class="navBarItem DotaFont"
						href="http://steamcommunity.com/workshop/dota2/" target="_blank">创意工坊</a>
					</span>
				</div>
			</div>
		</div>
		<script language="javascript">
			function MM_preloadImages() { //v3.0
				var d = document;
				if (d.images) {
					if (!d.MM_p)
						d.MM_p = new Array();
					var i, j = d.MM_p.length, a = MM_preloadImages.arguments;
					for (i = 0; i < a.length; i++)
						if (a[i].indexOf("#") != 0) {
							d.MM_p[j] = new Image;
							d.MM_p[j++].src = a[i];
						}
				}
			}

			function PreloadHeaderImages() {
				//  Preload header rollover images
				//MM_preloadImages(
				//);
			}

			if (document.addEventListener) {
				document.addEventListener("DOMContentLoaded",
						PreloadHeaderImages, false);
			} else if (document.attachEvent) {
				document.attachEvent('onDomContentLoaded', PreloadHeaderImages);
			}
		</script>



		<script language="javascript">
			function closeSubMenu(target) {
				$(target).find('.dn_arrow').attr("src",
						"http://cdn.dota2.com/apps/dota2/images/nav/arrow.png");
				$(target).find('.menuSubItemList').hide();
			}

			function closeAllSubMenus() {
				$('.navItem').each(function() {
					closeSubMenu($(this));
				});
			}

			function openSubMenu(target) {
				closeAllSubMenus();

				$(target)
						.find('.dn_arrow')
						.attr("src",
								"http://cdn.dota2.com/apps/dota2/images/nav/arrow_over.png");

				// Show the sub-menu
				var subItemList = $(target).find('.menuSubItemList');
				if (subItemList.length) {
					var itemTop = $(target).position().top
							+ $(target).outerHeight() - 16;
					var itemLeft = $(target).position().left;
					subItemList.css({
						"top" : itemTop + 'px',
						"left" : itemLeft
					}).fadeIn('fast');
				}
			}

			$(document).ready(function() {
				// Deal with the nav bars
				$('.navItem').each(function() {
					$(this).hover(function() {
						$(this).find('a.navBarItem img.top').animate({
							"opacity" : 1
						}, 100);
						if ($(this).find('.menuSubItemList').length !== 0) {
							openSubMenu(this);
						}
					}, function() {
						$(this).find('a.navBarItem img.top').animate({
							"opacity" : 0
						}, 100);
						if ($(this).find('.menuSubItemList').length !== 0) {
							closeSubMenu(this);
						}
					});
				});

				// Deal with header drop-downs
				var strMenus = '#languageSelector';

				$(strMenus).each(function() {
					$(this).hover(function() {
						//show its submenu
						$(this).find('div').fadeIn('fast');
					}, function() {
						//hide its submenu
						$(this).find('div').hide();
					});
				});
			});
		</script>

		<!-- /header bar -->
		<div id="bodyContainer">
			<div id="centerColOuter_NoCallout">
				<div id="centerColTopShadow">
					<img
						src="http://cdn.dota2.com/apps/dota2/images/heropedia/centercolbox_top_shadow.png"
						width="984" height="25" />
				</div>
				<div id="centerColTop">
					<img
						src="http://cdn.dota2.com/apps/dota2/images/heropedia/centercolbox_top.png"
						width="984" height="9" />
				</div>
				<div id="centerColContainer">
					<div id="centerColContent">
						<div class="redboxOuter">
							<div class="redboxContent">
								<div class="redboxTop"></div>
								<div id="heroPickerInner">
									<div id="heroBioArea">
										<div id="bioBoxFade">
											<img
												src="http://cdn.dota2.com/apps/dota2/images/heropedia/biobox_fade.png"
												width="874" height="26" />
										</div>
										<h2 id="heroBioLoading">正在读取英雄资料...</h2>
										<div style="display: none" id="heroBioDynamic">
											<h1 id="heroBioName"></h1>
											<div class="bioBoxHR"></div>
											<p id="heroBioRoles"></p>
										</div>
									</div>
									<div id="heroFilterArea">
										过滤器&nbsp;&nbsp;&nbsp; <select onChange="updateFilters()"
											id="filterRole" class="filterSelect" name="">
											<option value="">按定位</option>
											<option value="">所有</option>
											<option value="Carry">核心</option>
											<option value="Disabler">控制</option>
											<option value="LaneSupport">对线辅助</option>
											<option value="Initiator">先手</option>
											<option value="Jungler">打野</option>
											<option value="Support">辅助</option>
											<option value="Durable">耐久</option>
											<option value="Nuker">爆发</option>
											<option value="Pusher">推进</option>
											<option value="Escape">逃生</option>
										</select>&nbsp;&nbsp;&nbsp; <select onChange="updateFilters()"
											id="filterAttack" class="filterSelect" name="">
											<option value="">按攻击类型</option>
											<option value="">所有</option>
											<option value="melee">近战</option>
											<option value="ranged">远程</option>
										</select>&nbsp;&nbsp;&nbsp; <select onChange="updateFilters()"
											id="filterName" class="filterSelect noCaps" name="">
											<option value="">英雄名称</option>
											<option value="">所有</option>
											<option value="antimage">敌法师</option>
											<option value="axe">斧王</option>
											<option value="bane">祸乱之源</option>
											<option value="bloodseeker">嗜血狂魔</option>
											<option value="crystal_maiden">水晶室女</option>
											<option value="drow_ranger">卓尔游侠</option>
											<option value="earthshaker">撼地者</option>
											<option value="juggernaut">主宰</option>
											<option value="mirana">米拉娜</option>
											<option value="nevermore">影魔</option>
											<option value="morphling">变体精灵</option>
											<option value="phantom_lancer">幻影长矛手</option>
											<option value="puck">帕克</option>
											<option value="pudge">帕吉</option>
											<option value="razor">剃刀</option>
											<option value="sand_king">沙王</option>
											<option value="storm_spirit">风暴之灵</option>
											<option value="sven">斯温</option>
											<option value="tiny">小小</option>
											<option value="vengefulspirit">复仇之魂</option>
											<option value="windrunner">风行者</option>
											<option value="zuus">宙斯</option>
											<option value="kunkka">昆卡</option>
											<option value="lina">莉娜</option>
											<option value="lich">巫妖</option>
											<option value="lion">莱恩</option>
											<option value="shadow_shaman">暗影萨满</option>
											<option value="slardar">斯拉达</option>
											<option value="tidehunter">潮汐猎人</option>
											<option value="witch_doctor">巫医</option>
											<option value="riki">力丸</option>
											<option value="enigma">谜团</option>
											<option value="tinker">修补匠</option>
											<option value="sniper">狙击手</option>
											<option value="necrolyte">瘟疫法师</option>
											<option value="warlock">术士</option>
											<option value="beastmaster">兽王</option>
											<option value="queenofpain">痛苦女王</option>
											<option value="venomancer">剧毒术士</option>
											<option value="faceless_void">虚空假面</option>
											<option value="skeleton_king">冥魂大帝</option>
											<option value="death_prophet">死亡先知</option>
											<option value="phantom_assassin">幻影刺客</option>
											<option value="pugna">帕格纳</option>
											<option value="templar_assassin">圣堂刺客</option>
											<option value="viper">冥界亚龙</option>
											<option value="luna">露娜</option>
											<option value="dragon_knight">龙骑士</option>
											<option value="dazzle">戴泽</option>
											<option value="rattletrap">发条技师</option>
											<option value="leshrac">拉席克</option>
											<option value="furion">先知</option>
											<option value="life_stealer">噬魂鬼</option>
											<option value="dark_seer">黑暗贤者</option>
											<option value="clinkz">克林克兹</option>
											<option value="omniknight">全能骑士</option>
											<option value="enchantress">魅惑魔女</option>
											<option value="huskar">哈斯卡</option>
											<option value="night_stalker">暗夜魔王</option>
											<option value="broodmother">育母蜘蛛</option>
											<option value="bounty_hunter">赏金猎人</option>
											<option value="weaver">编织者</option>
											<option value="jakiro">杰奇洛</option>
											<option value="batrider">蝙蝠骑士</option>
											<option value="chen">陈</option>
											<option value="spectre">幽鬼</option>
											<option value="doom_bringer">末日使者</option>
											<option value="ancient_apparition">远古冰魄</option>
											<option value="ursa">熊战士</option>
											<option value="spirit_breaker">裂魂人</option>
											<option value="gyrocopter">矮人直升机</option>
											<option value="alchemist">炼金术士</option>
											<option value="invoker">祈求者</option>
											<option value="silencer">沉默术士</option>
											<option value="obsidian_destroyer">殁境神蚀者</option>
											<option value="lycan">狼人</option>
											<option value="brewmaster">酒仙</option>
											<option value="shadow_demon">暗影恶魔</option>
											<option value="lone_druid">德鲁伊</option>
											<option value="chaos_knight">混沌骑士</option>
											<option value="meepo">米波</option>
											<option value="treant">树精卫士</option>
											<option value="ogre_magi">食人魔魔法师</option>
											<option value="undying">不朽尸王</option>
											<option value="rubick">拉比克</option>
											<option value="disruptor">干扰者</option>
											<option value="nyx_assassin">司夜刺客</option>
											<option value="naga_siren">娜迦海妖</option>
											<option value="keeper_of_the_light">光之守卫</option>
											<option value="wisp">艾欧</option>
											<option value="visage">维萨吉</option>
											<option value="slark">斯拉克</option>
											<option value="medusa">美杜莎</option>
											<option value="troll_warlord">巨魔战将</option>
											<option value="centaur">半人马战行者</option>
											<option value="magnataur">马格纳斯</option>
											<option value="shredder">伐木机</option>
											<option value="bristleback">钢背兽</option>
											<option value="tusk">巨牙海民</option>
											<option value="skywrath_mage">天怒法师</option>
											<option value="abaddon">亚巴顿</option>
											<option value="elder_titan">上古巨神</option>
											<option value="legion_commander">军团指挥官</option>
											<option value="ember_spirit">灰烬之灵</option>
											<option value="earth_spirit">大地之灵</option>
											<option value="terrorblade">恐怖利刃</option>
											<option value="phoenix">凤凰</option>
											<option value="oracle">神谕者</option>
											<option value="techies">工程师</option>
											<option value="winter_wyvern">寒冬飞龙</option>
											<option value="arc_warden">天穹守望者</option>
										</select>
									</div>
									<div class="heroColLeft">
										<div id="columnHeader">
											<span id="columnHeaderTextStr">力量</span>
										</div>
										<div class="heroIcons">
											<a id="link_earthshaker" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Earthshaker/"> <img
												id="hover_earthshaker" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_hphover.png?v=3379714" />
												<img id="base_earthshaker" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_sb.png?v=3379714" />
											</a> <a id="link_sven" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Sven/"> <img
												id="hover_sven" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/sven_hphover.png?v=3379714" />
												<img id="base_sven" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/sven_sb.png?v=3379714" />
											</a> <a id="link_tiny" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Tiny/"> <img
												id="hover_tiny" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/tiny_hphover.png?v=3379714" />
												<img id="base_tiny" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/tiny_sb.png?v=3379714" />
											</a> <a id="link_kunkka" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Kunkka/"> <img
												id="hover_kunkka" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_hphover.png?v=3379714" />
												<img id="base_kunkka" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_sb.png?v=3379714" />
											</a> <a id="link_beastmaster" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Beastmaster/"> <img
												id="hover_beastmaster" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_hphover.png?v=3379714" />
												<img id="base_beastmaster" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_sb.png?v=3379714" />
											</a> <a id="link_dragon_knight" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Dragon_Knight/"> <img
												id="hover_dragon_knight" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_hphover.png?v=3379714" />
												<img id="base_dragon_knight" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_sb.png?v=3379714" />
											</a> <a id="link_rattletrap" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Clockwerk/"> <img
												id="hover_rattletrap" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_hphover.png?v=3379714" />
												<img id="base_rattletrap" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_sb.png?v=3379714" />
											</a> <a id="link_omniknight" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Omniknight/"> <img
												id="hover_omniknight" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_hphover.png?v=3379714" />
												<img id="base_omniknight" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_sb.png?v=3379714" />
											</a> <a id="link_huskar" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Huskar/"> <img
												id="hover_huskar" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/huskar_hphover.png?v=3379714" />
												<img id="base_huskar" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/huskar_sb.png?v=3379714" />
											</a> <a id="link_alchemist" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Alchemist/"> <img
												id="hover_alchemist" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_hphover.png?v=3379714" />
												<img id="base_alchemist" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_sb.png?v=3379714" />
											</a> <a id="link_brewmaster" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Brewmaster/"> <img
												id="hover_brewmaster" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_hphover.png?v=3379714" />
												<img id="base_brewmaster" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_sb.png?v=3379714" />
											</a> <a id="link_treant" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Treant_Protector/"> <img
												id="hover_treant" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/treant_hphover.png?v=3379714" />
												<img id="base_treant" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/treant_sb.png?v=3379714" />
											</a> <a id="link_wisp" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Io/"> <img
												id="hover_wisp" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/wisp_hphover.png?v=3379714" />
												<img id="base_wisp" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/wisp_sb.png?v=3379714" />
											</a> <a id="link_centaur" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Centaur_Warrunner/"> <img
												id="hover_centaur" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/centaur_hphover.png?v=3379714" />
												<img id="base_centaur" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/centaur_sb.png?v=3379714" />
											</a> <a id="link_shredder" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Timbersaw/"> <img
												id="hover_shredder" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/shredder_hphover.png?v=3379714" />
												<img id="base_shredder" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/shredder_sb.png?v=3379714" />
											</a> <a id="link_bristleback" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Bristleback/"> <img
												id="hover_bristleback" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_hphover.png?v=3379714" />
												<img id="base_bristleback" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_sb.png?v=3379714" />
											</a> <a id="link_tusk" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Tusk/"> <img
												id="hover_tusk" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/tusk_hphover.png?v=3379714" />
												<img id="base_tusk" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/tusk_sb.png?v=3379714" />
											</a> <a id="link_elder_titan" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Elder_Titan/"> <img
												id="hover_elder_titan" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_hphover.png?v=3379714" />
												<img id="base_elder_titan" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_sb.png?v=3379714" />
											</a> <a id="link_legion_commander" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Legion_Commander/"> <img
												id="hover_legion_commander" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_hphover.png?v=3379714" />
												<img id="base_legion_commander" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_sb.png?v=3379714" />
											</a> <a id="link_earth_spirit" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Earth_Spirit/"> <img
												id="hover_earth_spirit" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_hphover.png?v=3379714" />
												<img id="base_earth_spirit" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_sb.png?v=3379714" />
											</a> <a id="link_phoenix" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Phoenix/"> <img
												id="hover_phoenix" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_hphover.png?v=3379714" />
												<img id="base_phoenix" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_sb.png?v=3379714" />
											</a>
										</div>
										<br clear="left" />
									</div>
									<div class="heroColMiddle">
										<div id="columnHeader">
											<span id="columnHeaderTextAgi">敏捷</span>
										</div>
										<div class="heroIcons">
											<a id="link_antimage" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Anti-Mage/"> <img
												id="hover_antimage" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/antimage_hphover.png?v=3379714" />
												<img id="base_antimage" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/antimage_sb.png?v=3379714" />
											</a> <a id="link_drow_ranger" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Drow_Ranger/"> <img
												id="hover_drow_ranger" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_hphover.png?v=3379714" />
												<img id="base_drow_ranger" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_sb.png?v=3379714" />
											</a> <a id="link_juggernaut" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Juggernaut/"> <img
												id="hover_juggernaut" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_hphover.png?v=3379714" />
												<img id="base_juggernaut" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_sb.png?v=3379714" />
											</a> <a id="link_mirana" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Mirana/"> <img
												id="hover_mirana" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/mirana_hphover.png?v=3379714" />
												<img id="base_mirana" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/mirana_sb.png?v=3379714" />
											</a> <a id="link_morphling" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Morphling/"> <img
												id="hover_morphling" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/morphling_hphover.png?v=3379714" />
												<img id="base_morphling" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/morphling_sb.png?v=3379714" />
											</a> <a id="link_phantom_lancer" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Phantom_Lancer/"> <img
												id="hover_phantom_lancer" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_hphover.png?v=3379714" />
												<img id="base_phantom_lancer" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_sb.png?v=3379714" />
											</a> <a id="link_vengefulspirit" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Vengeful_Spirit/"> <img
												id="hover_vengefulspirit" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_hphover.png?v=3379714" />
												<img id="base_vengefulspirit" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_sb.png?v=3379714" />
											</a> <a id="link_riki" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Riki/"> <img
												id="hover_riki" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/riki_hphover.png?v=3379714" />
												<img id="base_riki" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/riki_sb.png?v=3379714" />
											</a> <a id="link_sniper" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Sniper/"> <img
												id="hover_sniper" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/sniper_hphover.png?v=3379714" />
												<img id="base_sniper" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/sniper_sb.png?v=3379714" />
											</a> <a id="link_templar_assassin" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Templar_Assassin/"> <img
												id="hover_templar_assassin" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_hphover.png?v=3379714" />
												<img id="base_templar_assassin" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_sb.png?v=3379714" />
											</a> <a id="link_luna" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Luna/"> <img
												id="hover_luna" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/luna_hphover.png?v=3379714" />
												<img id="base_luna" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/luna_sb.png?v=3379714" />
											</a> <a id="link_bounty_hunter" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Bounty_Hunter/"> <img
												id="hover_bounty_hunter" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_hphover.png?v=3379714" />
												<img id="base_bounty_hunter" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_sb.png?v=3379714" />
											</a> <a id="link_ursa" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Ursa/"> <img
												id="hover_ursa" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/ursa_hphover.png?v=3379714" />
												<img id="base_ursa" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/ursa_sb.png?v=3379714" />
											</a> <a id="link_gyrocopter" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Gyrocopter/"> <img
												id="hover_gyrocopter" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_hphover.png?v=3379714" />
												<img id="base_gyrocopter" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_sb.png?v=3379714" />
											</a> <a id="link_lone_druid" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Lone_Druid/"> <img
												id="hover_lone_druid" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_hphover.png?v=3379714" />
												<img id="base_lone_druid" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_sb.png?v=3379714" />
											</a> <a id="link_naga_siren" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Naga_Siren/"> <img
												id="hover_naga_siren" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_hphover.png?v=3379714" />
												<img id="base_naga_siren" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_sb.png?v=3379714" />
											</a> <a id="link_troll_warlord" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Troll_Warlord/"> <img
												id="hover_troll_warlord" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_hphover.png?v=3379714" />
												<img id="base_troll_warlord" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_sb.png?v=3379714" />
											</a> <a id="link_ember_spirit" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Ember_Spirit/"> <img
												id="hover_ember_spirit" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_hphover.png?v=3379714" />
												<img id="base_ember_spirit" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_sb.png?v=3379714" />
											</a>
										</div>
										<br clear="left" />
									</div>
									<div class="heroColRight">
										<div id="columnHeader">
											<span id="columnHeaderTextInt">智力</span>
										</div>
										<div class="heroIcons">
											<a id="link_crystal_maiden" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Crystal_Maiden/"> <img
												id="hover_crystal_maiden" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_hphover.png?v=3379714" />
												<img id="base_crystal_maiden" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_sb.png?v=3379714" />
											</a> <a id="link_puck" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Puck/"> <img
												id="hover_puck" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/puck_hphover.png?v=3379714" />
												<img id="base_puck" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/puck_sb.png?v=3379714" />
											</a> <a id="link_storm_spirit" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Storm_Spirit/"> <img
												id="hover_storm_spirit" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_hphover.png?v=3379714" />
												<img id="base_storm_spirit" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_sb.png?v=3379714" />
											</a> <a id="link_windrunner" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Windranger/"> <img
												id="hover_windrunner" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_hphover.png?v=3379714" />
												<img id="base_windrunner" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_sb.png?v=3379714" />
											</a> <a id="link_zuus" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Zeus/"> <img
												id="hover_zuus" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/zuus_hphover.png?v=3379714" />
												<img id="base_zuus" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/zuus_sb.png?v=3379714" />
											</a> <a id="link_lina" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Lina/"> <img
												id="hover_lina" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/lina_hphover.png?v=3379714" />
												<img id="base_lina" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/lina_sb.png?v=3379714" />
											</a> <a id="link_shadow_shaman" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Shadow_Shaman/"> <img
												id="hover_shadow_shaman" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_hphover.png?v=3379714" />
												<img id="base_shadow_shaman" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_sb.png?v=3379714" />
											</a> <a id="link_tinker" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Tinker/"> <img
												id="hover_tinker" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/tinker_hphover.png?v=3379714" />
												<img id="base_tinker" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/tinker_sb.png?v=3379714" />
											</a> <a id="link_furion" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Natures_Prophet/"> <img
												id="hover_furion" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/furion_hphover.png?v=3379714" />
												<img id="base_furion" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/furion_sb.png?v=3379714" />
											</a> <a id="link_enchantress" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Enchantress/"> <img
												id="hover_enchantress" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_hphover.png?v=3379714" />
												<img id="base_enchantress" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_sb.png?v=3379714" />
											</a> <a id="link_jakiro" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Jakiro/"> <img
												id="hover_jakiro" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_hphover.png?v=3379714" />
												<img id="base_jakiro" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_sb.png?v=3379714" />
											</a> <a id="link_chen" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Chen/"> <img
												id="hover_chen" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/chen_hphover.png?v=3379714" />
												<img id="base_chen" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/chen_sb.png?v=3379714" />
											</a> <a id="link_silencer" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Silencer/"> <img
												id="hover_silencer" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/silencer_hphover.png?v=3379714" />
												<img id="base_silencer" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/silencer_sb.png?v=3379714" />
											</a> <a id="link_ogre_magi" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Ogre_Magi/"> <img
												id="hover_ogre_magi" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_hphover.png?v=3379714" />
												<img id="base_ogre_magi" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_sb.png?v=3379714" />
											</a> <a id="link_rubick" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Rubick/"> <img
												id="hover_rubick" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/rubick_hphover.png?v=3379714" />
												<img id="base_rubick" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/rubick_sb.png?v=3379714" />
											</a> <a id="link_disruptor" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Disruptor/"> <img
												id="hover_disruptor" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_hphover.png?v=3379714" />
												<img id="base_disruptor" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_sb.png?v=3379714" />
											</a> <a id="link_keeper_of_the_light" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Keeper_of_the_Light/"> <img
												id="hover_keeper_of_the_light" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_hphover.png?v=3379714" />
												<img id="base_keeper_of_the_light" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_sb.png?v=3379714" />
											</a> <a id="link_skywrath_mage" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Skywrath_Mage/"> <img
												id="hover_skywrath_mage" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_hphover.png?v=3379714" />
												<img id="base_skywrath_mage" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_sb.png?v=3379714" />
											</a> <a id="link_oracle" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Oracle/"> <img
												id="hover_oracle" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/oracle_hphover.png?v=3379714" />
												<img id="base_oracle" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/oracle_sb.png?v=3379714" />
											</a> <a id="link_techies" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Techies/"> <img
												id="hover_techies" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/techies_hphover.png?v=3379714" />
												<img id="base_techies" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/techies_sb.png?v=3379714" />
											</a>
										</div>
										<br clear="left" />
									</div>
									<div class="heroColLeft" style="clear: left">
										<div class="heroIcons">
											<a id="link_axe" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Axe/"> <img
												id="hover_axe" class="heroHoverLarge" style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/axe_hphover.png?v=3379714" />
												<img id="base_axe" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/axe_sb.png?v=3379714" />
											</a> <a id="link_pudge" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Pudge/"> <img
												id="hover_pudge" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/pudge_hphover.png?v=3379714" />
												<img id="base_pudge" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/pudge_sb.png?v=3379714" />
											</a> <a id="link_sand_king" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Sand_King/"> <img
												id="hover_sand_king" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_hphover.png?v=3379714" />
												<img id="base_sand_king" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_sb.png?v=3379714" />
											</a> <a id="link_slardar" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Slardar/"> <img
												id="hover_slardar" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/slardar_hphover.png?v=3379714" />
												<img id="base_slardar" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/slardar_sb.png?v=3379714" />
											</a> <a id="link_tidehunter" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Tidehunter/"> <img
												id="hover_tidehunter" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_hphover.png?v=3379714" />
												<img id="base_tidehunter" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_sb.png?v=3379714" />
											</a> <a id="link_skeleton_king" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Wraith_King/"> <img
												id="hover_skeleton_king" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_hphover.png?v=3379714" />
												<img id="base_skeleton_king" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_sb.png?v=3379714" />
											</a> <a id="link_life_stealer" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Lifestealer/"> <img
												id="hover_life_stealer" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_hphover.png?v=3379714" />
												<img id="base_life_stealer" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_sb.png?v=3379714" />
											</a> <a id="link_night_stalker" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Night_Stalker/"> <img
												id="hover_night_stalker" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_hphover.png?v=3379714" />
												<img id="base_night_stalker" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_sb.png?v=3379714" />
											</a> <a id="link_doom_bringer" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Doom/"> <img
												id="hover_doom_bringer" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_hphover.png?v=3379714" />
												<img id="base_doom_bringer" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_sb.png?v=3379714" />
											</a> <a id="link_spirit_breaker" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Spirit_Breaker/"> <img
												id="hover_spirit_breaker" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_hphover.png?v=3379714" />
												<img id="base_spirit_breaker" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_sb.png?v=3379714" />
											</a> <a id="link_lycan" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Lycan/"> <img
												id="hover_lycan" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/lycan_hphover.png?v=3379714" />
												<img id="base_lycan" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/lycan_sb.png?v=3379714" />
											</a> <a id="link_chaos_knight" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Chaos_Knight/"> <img
												id="hover_chaos_knight" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_hphover.png?v=3379714" />
												<img id="base_chaos_knight" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_sb.png?v=3379714" />
											</a> <a id="link_undying" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Undying/"> <img
												id="hover_undying" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/undying_hphover.png?v=3379714" />
												<img id="base_undying" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/undying_sb.png?v=3379714" />
											</a> <a id="link_magnataur" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Magnus/"> <img
												id="hover_magnataur" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_hphover.png?v=3379714" />
												<img id="base_magnataur" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_sb.png?v=3379714" />
											</a> <a id="link_abaddon" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Abaddon/"> <img
												id="hover_abaddon" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_hphover.png?v=3379714" />
												<img id="base_abaddon" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_sb.png?v=3379714" />
											</a>
										</div>
										<br clear="left" />
									</div>
									<div class="heroColMiddle">
										<div class="heroIcons">
											<a id="link_bloodseeker" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Bloodseeker/"> <img
												id="hover_bloodseeker" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_hphover.png?v=3379714" />
												<img id="base_bloodseeker" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_sb.png?v=3379714" />
											</a> <a id="link_nevermore" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Shadow_Fiend/"> <img
												id="hover_nevermore" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_hphover.png?v=3379714" />
												<img id="base_nevermore" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_sb.png?v=3379714" />
											</a> <a id="link_razor" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Razor/"> <img
												id="hover_razor" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/razor_hphover.png?v=3379714" />
												<img id="base_razor" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/razor_sb.png?v=3379714" />
											</a> <a id="link_venomancer" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Venomancer/"> <img
												id="hover_venomancer" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_hphover.png?v=3379714" />
												<img id="base_venomancer" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_sb.png?v=3379714" />
											</a> <a id="link_faceless_void" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Faceless_Void/"> <img
												id="hover_faceless_void" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_hphover.png?v=3379714" />
												<img id="base_faceless_void" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_sb.png?v=3379714" />
											</a> <a id="link_phantom_assassin" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Phantom_Assassin/"> <img
												id="hover_phantom_assassin" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_hphover.png?v=3379714" />
												<img id="base_phantom_assassin" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_sb.png?v=3379714" />
											</a> <a id="link_viper" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Viper/"> <img
												id="hover_viper" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/viper_hphover.png?v=3379714" />
												<img id="base_viper" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/viper_sb.png?v=3379714" />
											</a> <a id="link_clinkz" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Clinkz/"> <img
												id="hover_clinkz" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_hphover.png?v=3379714" />
												<img id="base_clinkz" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_sb.png?v=3379714" />
											</a> <a id="link_broodmother" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Broodmother/"> <img
												id="hover_broodmother" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_hphover.png?v=3379714" />
												<img id="base_broodmother" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_sb.png?v=3379714" />
											</a> <a id="link_weaver" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Weaver/"> <img
												id="hover_weaver" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/weaver_hphover.png?v=3379714" />
												<img id="base_weaver" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/weaver_sb.png?v=3379714" />
											</a> <a id="link_spectre" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Spectre/"> <img
												id="hover_spectre" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/spectre_hphover.png?v=3379714" />
												<img id="base_spectre" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/spectre_sb.png?v=3379714" />
											</a> <a id="link_meepo" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Meepo/"> <img
												id="hover_meepo" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/meepo_hphover.png?v=3379714" />
												<img id="base_meepo" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/meepo_sb.png?v=3379714" />
											</a> <a id="link_nyx_assassin" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Nyx_Assassin/"> <img
												id="hover_nyx_assassin" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_hphover.png?v=3379714" />
												<img id="base_nyx_assassin" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_sb.png?v=3379714" />
											</a> <a id="link_slark" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Slark/"> <img
												id="hover_slark" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/slark_hphover.png?v=3379714" />
												<img id="base_slark" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/slark_sb.png?v=3379714" />
											</a> <a id="link_medusa" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Medusa/"> <img
												id="hover_medusa" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/medusa_hphover.png?v=3379714" />
												<img id="base_medusa" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/medusa_sb.png?v=3379714" />
											</a> <a id="link_terrorblade" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Terrorblade/"> <img
												id="hover_terrorblade" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_hphover.png?v=3379714" />
												<img id="base_terrorblade" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_sb.png?v=3379714" />
											</a> <a id="link_arc_warden" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Arc_Warden/"> <img
												id="hover_arc_warden" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_hphover.png?v=3379714" />
												<img id="base_arc_warden" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_sb.png?v=3379714" />
											</a>
										</div>
										<br clear="left" />
									</div>
									<div class="heroColRight">
										<div class="heroIcons">
											<a id="link_bane" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Bane/"> <img
												id="hover_bane" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/bane_hphover.png" />
												<img id="base_bane" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/bane_sb.png" />
											</a> <a id="link_lich" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Lich/"> <img
												id="hover_lich" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/lich_hphover.png" />
												<img id="base_lich" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/lich_sb.png" />
											</a> <a id="link_lion" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Lion/"> <img
												id="hover_lion" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/lion_hphover.png" />
												<img id="base_lion" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/lion_sb.png" />
											</a> <a id="link_witch_doctor" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Witch_Doctor/"> <img
												id="hover_witch_doctor" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_hphover.png" />
												<img id="base_witch_doctor" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_sb.png" />
											</a> <a id="link_enigma" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Enigma/"> <img
												id="hover_enigma" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/enigma_hphover.png" />
												<img id="base_enigma" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/enigma_sb.png" />
											</a> <a id="link_necrolyte" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Necrophos/"> <img
												id="hover_necrolyte" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_hphover.png" />
												<img id="base_necrolyte" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_sb.png" />
											</a> <a id="link_warlock" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Warlock/"> <img
												id="hover_warlock" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/warlock_hphover.png" />
												<img id="base_warlock" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/warlock_sb.png" />
											</a> <a id="link_queenofpain" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Queen_of_Pain/"> <img
												id="hover_queenofpain" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_hphover.png" />
												<img id="base_queenofpain" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_sb.png" />
											</a> <a id="link_death_prophet" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Death_Prophet/"> <img
												id="hover_death_prophet" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_hphover.png" />
												<img id="base_death_prophet" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_sb.png" />
											</a> <a id="link_pugna" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Pugna/"> <img
												id="hover_pugna" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/pugna_hphover.png" />
												<img id="base_pugna" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/pugna_sb.png" />
											</a> <a id="link_dazzle" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Dazzle/"> <img
												id="hover_dazzle" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_hphover.png" />
												<img id="base_dazzle" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_sb.png" />
											</a> <a id="link_leshrac" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Leshrac/"> <img
												id="hover_leshrac" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_hphover.png" />
												<img id="base_leshrac" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_sb.png" />
											</a> <a id="link_dark_seer" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Dark_Seer/"> <img
												id="hover_dark_seer" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_hphover.png" />
												<img id="base_dark_seer" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_sb.png" />
											</a> <a id="link_batrider" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Batrider/"> <img
												id="hover_batrider" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/batrider_hphover.png" />
												<img id="base_batrider" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/batrider_sb.png" />
											</a> <a id="link_ancient_apparition" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Ancient_Apparition/"> <img
												id="hover_ancient_apparition" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_hphover.png" />
												<img id="base_ancient_apparition" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_sb.png" />
											</a> <a id="link_invoker" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Invoker/"> <img
												id="hover_invoker" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/invoker_hphover.png" />
												<img id="base_invoker" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/invoker_sb.png" />
											</a> <a id="link_obsidian_destroyer" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Outworld_Devourer/"> <img
												id="hover_obsidian_destroyer" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_hphover.png" />
												<img id="base_obsidian_destroyer" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_sb.png" />
											</a> <a id="link_shadow_demon" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Shadow_Demon/"> <img
												id="hover_shadow_demon" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_hphover.png" />
												<img id="base_shadow_demon" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_sb.png" />
											</a> <a id="link_visage" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Visage/"> <img
												id="hover_visage" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/visage_hphover.png" />
												<img id="base_visage" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/visage_sb.png" />
											</a> <a id="link_winter_wyvern" class="heroPickerIconLink"
												href="http://www.dota2.com/hero/Winter_Wyvern/"> <img
												id="hover_winter_wyvern" class="heroHoverLarge"
												style="display: none;"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_hphover.png" />
												<img id="base_winter_wyvern" class="heroHoverSmall"
												src="http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_sb.png" />
											</a>
										</div>
										<br clear="left" />
									</div>
									<br clear="left" />
								</div>
								<div class="redboxBottom"></div>
							</div>
						</div>
					</div>
				</div>
				<div id="centerColBottom">
					<img
						src="http://cdn.dota2.com/apps/dota2/images/heropedia/centercolbox_bottom.png"
						width="984" height="9" />
				</div>
				<div id="centerColBottomShadow">
					<img
						src="http://cdn.dota2.com/apps/dota2/images/heropedia/centercolbox_bottom_shadow.png"
						width="984" height="25" />
				</div>
			</div>
		</div>
	</center>
</body>
</html>
