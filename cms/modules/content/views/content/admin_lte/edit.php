<div class="content-wrapper">
	<section class="content-header">
		<h1>
			<?php echo ucfirst($data['main']); ?>
		</h1>
		<ol class="breadcrumb">
			<li><?php echo ucfirst($data['main']); ?></li>
		</ol>
	</section>
	
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title"><?php echo __('Edit Data'); ?></h3>
					</div>
					<form role="form" method="post" action="<?php echo URL::Base(); ?>content/update/<?php echo $data['main']; ?>/<?php echo $data['table']; ?>">
						<div class="box-body">
							<?php
							if(!empty($data['errors'])) {
								?>
								<div class="alert alert-danger alert-dismissable">
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									<h4><i class="icon fa fa-ban"></i> <?php echo __('Alert!'); ?></h4>
									<?php
									foreach($data['errors'] as $v_errors) {
										echo ucfirst($v_errors) . '</br>';
									}
									?>
								</div>
								<?php
							}
							?>
							<div class="form-group">
								<label><?php echo __('Content') ?></label>
								<textarea class="form-control f_tinymce" rows="15" name="detail" minlength="3"><?php echo !empty($data['detail']['detail']) ? $data['detail']['detail'] : ''; ?></textarea>
							</div>
                            
						</div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary"><?php echo __('Update Data'); ?></button>
							<a href="<?php echo URL::Base(); ?>content/organisasi"><button type="button" class="btn btn-danger"><?php echo __('Cancel'); ?></button></a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</div>