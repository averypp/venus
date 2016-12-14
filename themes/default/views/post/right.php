		<!-- 内容右侧 -->
		<div class="content_right">
			
			<dl class="category tag clear">
				<dt><?php echo Yii::t('common','Tags');?></dt>
				<?php foreach((array)$this->_tags as $tag):?>				
				<dd><a href="<?php echo $this->createUrl('tag/index',array('tag'=>$tag->tag_name));?>" title="<?php echo $tag->tag_name;?>"><?php echo $tag->tag_name;?></a></dd>		
				<?php endforeach;?>	
				<dd class="tag_more"><a href="<?php echo $this->createUrl('tag/all');?>"><?php echo Yii::t('common','More');?></a></dd>				
			</dl>
			
			<dl class="category recent_post">
				<dt><?php echo Yii::t('common','Last Articles');?></dt>
				<?php foreach((array)$last_posts as $lp):?>
				<dd><a title="<?php echo CHtml::encode($lp->title);?>" href="<?php echo $this->createUrl('post/view', array('id'=>$lp->id));?>"><?php echo Helper::truncate_utf8_string($lp->title,18);?></a></dd>		
				<?php endforeach;?>					
			</dl>		
		</div>
