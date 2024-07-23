<div class="content-wrapper">
	<section class="content-header">
		<h1>
			<?php echo __('List Category'); ?>
		</h1>
		<ol class="breadcrumb">
			<li><?php echo __('Magazine'); ?></li>
			<li class="active"><a href="/magazine/category"><?php echo __('Category'); ?></a></li>
		</ol>
	</section>
	
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-body">
						<a href="<?php echo URL::base(); ?>magazine/form_category"><button type="button" style="width:150px" class="btn btn-success btn-sm"><?php echo __('Add New Data'); ?></button></a>
					</div>
				</div>
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title"><?php echo $data['count_all'] . ' ' . __('Data Found'); ?></h3>
						<div class="box-tools" style="float: right;">
							<form method="post" action="<?php echo URL::Base(); ?>magazine/category">
								<div class="input-group" style="width: 150px;">
									<input type="text" name="search" class="form-control input-sm pull-right" placeholder="<?php echo __('Search'); ?>" value="<?php echo !empty($data['search']) ? $data['search'] : ''; ?>">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<?php 
					echo !empty($data['pagination']) ? $data['pagination'] : '';
					if($data['version']=='lite'){
						include('lite_template.php');
					}else{
						include('full_template.php');
					}
					echo !empty($data['pagination']) ? $data['pagination'] : ''; 
					?>
				</div>
			</div>
		</div>
	</section>
</div>
