<!-- BEGIN: main -->

<ul class="nav nav-tabs">
<!-- BEGIN: group_info -->
  <li class="{BLOCK_INFO.active}"><a data-toggle="tab" href="#block-news-groups-{BLOCK_INFO.bid}">{BLOCK_INFO.title}</a></li>
<!-- END: group_info -->
</ul>
<div class="tab-content">
<!-- BEGIN: group_content -->
	<ul id="block-news-groups-{BLOCK_INFO.bid}" class="tab-pane fade {BLOCK_INFO.active} in list-group">
		<!-- BEGIN: loop -->
		<li class="list-group-item">
			<!-- BEGIN: img -->
			<a href="{ROW.link}" title="{ROW.title}"><img src="{ROW.thumb}" alt="{ROW.title}" width="{ROW.blockwidth}" class="img-thumbnail"/></a>
			<!-- END: img -->
			<a href="{ROW.link}" title="{ROW.title}">{ROW.title}</a>
		</li>
		<!-- END: loop -->
	</ul>
<!-- END: group_content -->
</div>
<!-- END: main -->

<!-- BEGIN: grid -->
<link rel="stylesheet" type="text/css"	href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/nvsystems/global.block_shops_multi_tabs.css" />
<link href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/owl.carousel.min.css" rel="stylesheet" type="text/css"/>
<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/owl.carousel.min.js"></script>
<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/shops.js"></script>
<div class="panel panel-nvs-default">
	<div class="heading">	
		<h2 class="title-head pull-left">
			{NVS_TITLE}
		</h2>
		<ul class="nvs-nav nvs-tabs pull-right">
			<!-- BEGIN: group_info -->
			  <li class="{BLOCK_INFO.active}"><a data-toggle="tab" href="#block-news-groups-{BLOCK_INFO.bid}">{BLOCK_INFO.title}</a></li>
			<!-- END: group_info -->
		</ul>
	</div>
	<div class="panel-body">
		<div class="row">

			<div class="tab-content">
			<!-- BEGIN: group_content -->
				<div id="block-news-groups-{BLOCK_INFO.bid}" class="tab-pane fade {BLOCK_INFO.active} in col-lg-24 col-md-24 margin-top-lg">
					<div class="owl-custom-nav"></div>
					<div class="widget-area news_carousel_{BLOCK_INFO.bid} owl-carousel owl-theme owl-loaded">
						
						<!-- BEGIN: loop -->
						<div class="owl-stage-outer">
							<div class="owl-stage" style="transition: all 0.25s ease 0s">
								<div class="owl-item">
									<div class="items">
										<div class="inner">
											<div class="thumb-area">
												<div class="post-format"><i class="fa fa-text"></i></div>
												<div class="col-md-24 items item_{BLOCK_INFO.bid}">
													<!-- BEGIN: img -->
													<a href="{ROW.link}" title="{ROW.title}"><img src="{ROW.thumb}" style="width:{ROW.blockwidth}px;height:{ROW.blockheight}px;"  alt="{ROW.title}" class="thumbnail" /></a>
													<!-- END: img -->
													<div class="nvs_info_pro">
														<!-- BEGIN: new -->
														<span class="label nvs_label-success nvs_newday">{LANG.newday}</span>
														<!-- END: new -->
														<!-- BEGIN: discounts -->
														<span class="label nvs_label-danger">-{PRICE.discount_percent}{PRICE.discount_unit}</span>
														<!-- END: discounts -->
														<!-- BEGIN: point -->
														<span class="label label-info" title="{point_note}">+{point}</span>
														<!-- END: point -->
														<!-- BEGIN: gift -->
														<span class="label label-success">+<em class="fa fa-gift fa-lg">&nbsp;</em></span>
														<!-- END: gift -->
													</div>
													<!-- BEGIN: product_code -->
													<p class="label label-default">{ROW.product_code}</p>
													<!-- END: product_code -->
													<!-- BEGIN: price -->
													<p class="nvs_price">
														<!-- BEGIN: discounts -->
														<span class="nvs_money show">{PRICE.sale_format} {PRICE.unit}</span>
														<span class="nvs_discounts_money">{PRICE.price_format} {PRICE.unit}</span> 
														<!-- END: discounts -->

														<!-- BEGIN: no_discounts -->
														<span class="nvs_money">{PRICE.price_format} {PRICE.unit}</span> 
														<!-- END: no_discounts -->
													</p>
													<!-- END: price -->
													<!-- BEGIN: contact -->
													<span class="nvs_money">{LANG.price_contact}</span>
													<!-- END: contact -->
													<p><a href="{ROW.link}" title="{ROW.title}">{ROW.title}</a></p>
													<div class="clearfix">
														<!-- BEGIN: order -->
														<a href="javascript:void(0)" id="{ROW.id}" title="{ROW.title}" onclick="cartorder(this, {GROUP_REQUIE}, '{ROW.link}')"><button type="button" class="btn btn-primary btn-xs">{LANG.add_product}</button></a>
														<!-- END: order -->
														<!-- BEGIN: product_empty -->
														<button class="btn btn-danger disabled btn-xs">{LANG.product_empty}</button>
														<!-- END: product_empty -->

														<!-- BEGIN: wishlist -->
														<a href="javascript:void(0)" title="{ROW.title}" ><button type="button" onclick="wishlist({ROW.id}, this)" class="btn btn-primary btn-xs <!-- BEGIN: disabled -->disabled<!-- END: disabled -->">{LANG.wishlist}</button></a>
														<!-- END: wishlist -->
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END: loop -->
					</div>
					
				</div>
				<script>
				$('.news_carousel_{BLOCK_INFO.bid}').owlCarousel({
						nav: true,
						navText: [ '', '' ],
						navContainer: '.owl-custom-nav',
						navClass: [ 'owl-prev', 'owl-next' ],	
					loop:true,
					margin:10,
					dots: false,
					autoplay: true,
					responsive:{
							0:{
						items:1
							},
							575:{
						items:2
							},
							1000:{
						items:4
							}
					}
				});	
				</script>
			<!-- END: group_content -->
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="idmodals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">{LANG.add_product}</h4>
			</div>
			<div class="modal-body">
				<em class="fa fa-spinner fa-spin">&nbsp;</em>
			</div>
		</div>
	</div>
</div>


<!-- END: grid -->