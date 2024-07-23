<div class="content-wrapper">
	<section class="content-header">
		<h1>
			<?php echo __('Category Magazine'); ?>
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
					<div class="box-header with-border">
						<h3 class="box-title"><?php echo !empty($data['form']) ? $data['form'] : 'Form Category'; ?></h3>
					</div>
					<form role="form" method="post" action="<?php echo URL::Base(); ?>magazine/proces_category">
						<div class="box-body">
							<div class="form-group">
								<label><?php echo __('Title') ?></label>
								<input type="text" name="title" value="<?php echo !empty($data['detail']['title']) ? $data['detail']['title'] : ''; ?>" maxlength="90" placeholder="<?php echo __('Only 90 Characters'); ?>" class="form-control" minlength="3" required>
                                <input type="hidden" name="id" value="<?php echo !empty($data['detail']['id']) ? $data['detail']['id'] : ''; ?>" id="">
                            </div>
						</div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary"><?php echo __('Submit Data'); ?></button>
							<a href="<?php echo URL::Base(); ?>magazine/category"><button type="button" class="btn btn-danger"><?php echo __('Cancel'); ?></button></a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</div>