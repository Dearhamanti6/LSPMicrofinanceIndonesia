<link href="<?=URL::Base() ?>/assets/dflip/css/dflip.min.css" rel="stylesheet" type="text/css">

  <!-- Icons Stylesheet -->
<link href="<?=URL::Base() ?>/assets/dflip/css/themify-icons.min.css" rel="stylesheet" type="text/css">
<div class="content-wrapper">
	<section class="content-header">
		<h1>
			<?php echo __('Newsroom News Detail'); ?>
		</h1>
		<ol class="breadcrumb">
			<li><?php echo __('Newsroom'); ?></li>
			<li class="active"><a href="/news"><?php echo __('News'); ?></a></li>
		</ol>
	</section>
	
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-body">
						<table class="table">
                            <tr>
								<td width="15%"><b><?php echo __('Title'); ?></b></td>
								<td width="5px">:</td>
								<td><?php echo $data['detail']['title']; ?></td>
							</tr>
							<tr>
                                <td width="15%"><b><?php echo __('Description'); ?></b></td>
                                <td width="5px">:</td>
                                <td><?php echo $data['detail']['description']; ?></td>
                            </tr>
							<tr>
								<td width="15%"><b><?php echo __('Images'); ?></b></td>
								<td width="5px">:</td>
								<td>
									<?php
									if(!empty($data['detail']['images'][0])) {
										$split_id = str_split($data['detail']['images'][0]['image_id']);
										$path_folder_image = implode('/', $split_id);
										echo '<img src="' . URL::Base() . 'uploads/library/' . $path_folder_image . '/' . $data['detail']['images'][0]['image_id'] . '_300x206.' . $data['detail']['images'][0]['image_type'] . '" />';
									}
									?>
								</td>
							</tr>
							<tr>
								<td width="15%"><b><?php echo __('Detail'); ?></b></td>
								<td width="5px">:</td>
								<td><?php echo str_replace('<!--PAGE_SEPARATOR-->', '<br><b><center><--PAGE_SEPARATOR--></center></b></br></br>', $data['detail']['detail']); ?></td>
							</tr>
						</table>
					</div>
					<div class="col-xs-12" style="padding-bottom:30px">
						<!--Normal FLipbook-->
						<div class="_df_book" height="500" webgl="true" backgroundcolor="teal"
								source="<?=URL::Base() ?><?php echo $data['detail']['path']; ?>"
								id="df_manual_book">
						</div>

					</div>
					<div class="box-footer">
						<a href="javascript:history.go(-1);"><button type="button" class="btn btn-info"><?php echo __('Back'); ?></button></a>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<!-- jQuery  -->
<script src="<?=URL::Base() ?>/assets/dflip/js/libs/jquery.min.js" type="text/javascript"></script>
<!-- Flipbook main Js file -->
<script src="<?=URL::Base() ?>/assets/dflip/js/dflip.min.js" type="text/javascript"></script>
