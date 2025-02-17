<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<?php echo __('Video'); ?>
		</h1>
		<ol class="breadcrumb">
			<li><?php echo __('Video'); ?></li>
			<li class="active"><a href="/livestream/edit"><?php echo __('Edit'); ?></a></li>
		</ol>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title"><?php echo __('Video Edit'); ?></h3>
					</div>
					<form role="form" method="post" action="<?php echo URL::Base(); ?>livestream/update">
						<div class="box-body">
							<div class="form-group">
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><?php echo __('Title') ?></label>
                                    <input type="text" name="title" value="<?php echo $data['title']; ?>" class="form-control" required>
                                </div>
                                
								<label><?php echo __('Image') ?></label>
								<div id="previewImage" style="width: 100%; height: auto; margin-bottom: 10px;">
									<?php
									$val_hidden_image = '';
									// Image preview edit
									if(!empty($data['image'])) {
										$split_id = str_split($data['image']);
										$path_folder_image = implode('/', $split_id);
										echo '<div style=" position: absolute; width: 20px; height: 20px; left: 186px; margin-top: 4px; background-color: rgb(255, 0, 0); "><center><span style="color: #FFFFFF;cursor: pointer;" onclick="javascript:delPreview();">X</span></center></div><img src="' . URL::Base() . 'uploads/library/' . $path_folder_image . '/' . $data['image'] . '_224x153.' . $data['image_type'] . '">';
										$val_hidden_image = URL::Base() . 'uploads/library/' . $path_folder_image . '/' . $data['image'] . '.' . $data['image_type'] . '';
									} else if(!empty($data['image'])) {
										// Get id image from full url image
										$base_image = basename($data['image']).PHP_EOL;
										if(!empty($base_image)) {
											$ex_base = explode('.', $base_image);
											list($id_image, $file_type) = $ex_base;
										}
										$split_id = str_split($id_image);
										$path_folder_image = implode('/', $split_id);
										$data['image'] = $id_image;
										$data['image_type'] = $file_type;
										echo '<div style=" position: absolute; width: 20px; height: 20px; left: 186px; margin-top: 4px; background-color: rgb(255, 0, 0); "><center><span style="color: #FFFFFF;cursor: pointer;" onclick="javascript:delPreview();">X</span></center></div><img src="' . URL::Base() . 'uploads/library/' . $path_folder_image . '/' . $data['image'] . '_224x153.' . $data['image_type'] . '">';
										$val_hidden_image = URL::Base() . 'uploads/library/' . $path_folder_image . '/' . $data['imagea'] . '.' . $data['image_type'] . '';
									}
									?>
								</div>
								<input type="hidden" name="image" id="image_popup" value="<?php echo $val_hidden_image; ?>" class="form-control">
								<input type="hidden" name="image_old" value="<?php echo $val_hidden_image; ?>" class="form-control">
								<a href="javascript:open_popup_img()"><button type="button" class="btn btn-block btn-default" id="image_popup_btn" style="width:200px"><?php echo __('Browse'); ?></button></a>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1"><?php echo __('Embed Video') ?></label>
								<input type="text" name="embed" value="<?php echo $data['embed']; ?>" class="form-control" required>
								<input type="hidden" name="id" value="<?php echo $data['id']; ?>">
							</div>
							
						</div>
						<!-- /.box-body -->
						<div class="box-footer">
							<button type="submit" class="btn btn-primary"><?php echo __('Save'); ?></button>
						</div>
					</form>
					<!-- /.box-header -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
