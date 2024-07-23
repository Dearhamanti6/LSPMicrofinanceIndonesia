<div class="box-body">
	<table class="table table-bordered">
		<!-- List isi artikel -->
		<tr>
			<th style="width:50px;text-align:center;"><?php echo __('No'); ?></th>
			<th style="width:210px;text-align:center;"><?php echo __('Title Category Magazine'); ?></th>
			<th colspan="2" style="width:20%;text-align:center;"><?php echo __('Actions'); ?></th>
		</tr>
		<?php
		if(!empty($data['list'])) {
			$c_bg_list = 1;
			$bg_list = '';
			$no = 1;
			foreach($data['list'] as $v_list) {
				// Background color
				if($c_bg_list % 2 == 0) {
					$bg_list = '';
				} else {
					$bg_list = 'style="background-color: #ECF0F5;"';
				}
				echo '
					<tr ' . $bg_list . '>
						<td align="center">'.$no++.' </td>
						<td>
							<strong>' . $v_list['title'] . '</strong>
						</td>
						<td>
							<a href="' . URL::base() .'magazine/form_category/' . $v_list['id'] . '"><button class="btn btn-block btn-warning btn-xs">' . __('Edit') . '</button></a> </br>
							<a href="javascript:del_confirm(' . $v_list['id'] . ')"><button class="btn btn-block btn-danger btn-xs">' . __('Delete') . '</button></a> </br></br>
							
						</td>
					</tr>
				';
				$c_bg_list++;
			}
		}
		?>
	</table>
</div>