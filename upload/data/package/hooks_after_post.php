<?php
! defined ( 'P_W' ) && exit ( 'Forbidden' );
 defined('P_W') || exit('Forbidden'); class PostBehaviorHookitem extends PW_HookItem { function run () { $winduid = $this->getVar('winduid'); $winddb = $this->getVar('winddb'); $db_md_ifopen = $this->getVar('db_md_ifopen'); if ($db_md_ifopen) { require_once(R_P.'require/functions.php'); doMedalBehavior($winduid,'continue_thread_post'); doMedalBehavior($winduid,'continue_post',$winddb['lastpost']); $medalservice = L::loadClass('medalservice','medal'); $medalservice->runAutoMedal($winddb,'post',$winddb['postnum'],1); } } } defined('P_W') || exit('Forbidden'); class JobHookitem extends PW_HookItem { function run () { $winduid = $this->getVar('winduid'); $fid = $this->getVar('fid'); require_once(R_P.'require/functions.php'); initJob($winduid,"doPost",array('fid'=>$fid)); } }