<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!-- left 大模块 -->
<!-- <style>
	.list_menu_container{display:none;}
</style>  -->
<div class="left_menu">
    <div class="left_menu_one">
       <ul class="left_menu_icon">
       		<shiro:hasPermission name="menu:data:center">
       		<li class="iconbox active" id="dataManage">
           	<a href="${pageContext.request.contextPath}/userStatistics/forwardUserStatistics" target="list">
               <div class="iconimg data2"></div>
               <p class="iconname">数据中心</p>
            </a>
           </li>
           </shiro:hasPermission>
           <shiro:hasPermission name="menu:context:manager">
           <li class="iconbox" id="homeManage">
           	<a href="${pageContext.request.contextPath}/news/forwardNewsInformationList" target="list">
               <div class="iconimg home2"></div>
               <p class="iconname">内容管理</p>
            </a>
           </li>
           </shiro:hasPermission>
           <shiro:hasPermission name="menu:social:manager">
           <li class="iconbox" id="socialityManage">
           	<a href="${pageContext.request.contextPath}/sociality/topicManager/topicIndex" target="list">
               <div class="iconimg social"></div>
               <p class="iconname">社交管理</p>
            </a>
           </li>
           </shiro:hasPermission>
           <shiro:hasPermission name="menu:service:manager">
           <li class="iconbox" id="consultantManage">
				<a href="${pageContext.request.contextPath}/hospital/doctor/consultantAll"  target="list">
					<div class="iconimg business2"></div>
					<p class="iconname">业务管理</p>
				</a>
			</li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:hospital:manager">
           <li class="iconbox" id="hospitalManage">
				<a href="${pageContext.request.contextPath}/hospital/hospitalList/hospitalList"  target="list">
					<div class="iconimg hospital"></div>
					<p class="iconname">医院管理</p>
				</a>
			</li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:use:manager">
			<li class="iconbox" id="applicationManage">
				<a href="${pageContext.request.contextPath}/application/userCallback"  target="list">
					<div class="iconimg application"></div>
					<p class="iconname">应用管理</p>
				</a>
			</li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:user:manger:list">
			<li class="iconbox" id="userManage">
				<a href="${pageContext.request.contextPath}/user/forwardUserList"  target="list">
					<div class="iconimg user"></div>
					<p class="iconname">用户管理</p>
				</a>
			</li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:backstage:manager">
			<li class="iconbox" id="backstageManage">
				<a href="${pageContext.request.contextPath}/login/forwordAccountManageJsp"  target="list">
					<div class="iconimg user"></div>
					<p class="iconname">后台管理</p>
				</a>
			</li>
			</shiro:hasPermission>
           <!-- <li class="iconbox" id="advertisement">
           	<a href="#">
               <div class="iconimg adver"></div>
               <p class="iconname">广告推送</p>
            </a>
           </li>
           <li class="iconbox" id="userFeedback">
           	<a href="#">
               <div class="iconimg user"></div>
               <p class="iconname">用户反馈</p>
            </a>
           </li> -->
       </ul>
    </div>
</div>
<!-- left 小模块-->
<div class="list_menu_container" id="dataDiv">
	<div class="list_menu dataManage">
		<shiro:hasPermission name="menu:user:statistics">
		<h3><i class="iconlist guide positionIicon"></i>用户统计<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li><a href="${pageContext.request.contextPath}/userStatistics/forwardUserStatistics" class="selected" target="list">数据概览</a></li>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:generalize:statistics">
		<h3><i class="iconlist preDate positionIicon"></i>推广统计<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:hospital:table">
			<li ><a href="${pageContext.request.contextPath}/promotStatistics/forwardPromotStatistics" target="list">医院总表</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:hospitalArea:query">
			<li ><a href="${pageContext.request.contextPath}/promotStatistics/forwardHopsitalBindPage" target="list">院区查询</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:realTime:statistics">
		<h3><i class="iconlist preDate positionIicon"></i>实时统计<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:inquiry:statistics">
			<li ><a href="${pageContext.request.contextPath}/lsd/consultant/statistics" target="_blank">问诊统计</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:map:statistics">
			<li ><a href="${pageContext.request.contextPath}/lsd/atlas/statistics" target="_blank">地图统计</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:user:statistics">
			<li ><a href="${pageContext.request.contextPath}/userStatistics/forwardUserStatisticsJsp" target="_blank">用户统计</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:tx:statistics">
			<li ><a href="${pageContext.request.contextPath}/lsd/fetalrate/forwardFetalRateStatisticalGraph" target="_blank">胎心统计</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
	</div>
</div> 
 <div class="list_menu_container" style="display: none;" id="homeDiv">
	<div class="list_menu homeManage">
		<shiro:hasPermission name="menu:information:subscription">
		<h3><i class="iconlist information positionIicon"></i>资讯订阅<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:article:manager">
			<li><a href="${pageContext.request.contextPath}/news/forwardNewsInformationList" class="selected" target="list">文章管理</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:channel:manager">
			<li ><a href="${pageContext.request.contextPath}/news/forwardNewsChanelsList" target="list">频道管理</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:health:guidance">
		<h3><i class="iconlist guide positionIicon"></i>健康指导<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:baby:change">
			<li><a href="${pageContext.request.contextPath}/baby/forwordBaby" target="list">宝宝发育变化</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:weeks:hint">
			<li><a href="javascript:" target="list">孕周健康提示</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:weeks:baby">
			<li><a href="${pageContext.request.contextPath}/baby/forwordBabyStatusImage" target="list">孕周宝宝状态图</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
		<%-- 
		<h3><i class="iconlist preDate positionIicon"></i>孕期管理<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li ><a href="${pageContext.request.contextPath}/pregnancy/findPregAnteExaminationInfoList" target="list">产检管理</a></li> 
			<li ><a href="${pageContext.request.contextPath}/pregnancy/forwardPregAnteExamItemInfo" target="list">产检项目管理</a></li>
		</ul>
		--%>
		<shiro:hasPermission name="menu:player">
		<h3><i class="iconlist play positionIicon"></i>播放器<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li ><a href="${pageContext.request.contextPath}/music/forwordMusic" target="list">电台内容管理</a></li>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:pregnancy:bk">
		<h3><i class="iconlist encyclopedia positionIicon"></i>孕期百科<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:module:label">
			<li ><a href="${pageContext.request.contextPath}/encyclopedia/forwardQuestionClassOrTypeList?type=questionClass" target="list">模块与标签</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:contentLibrary:manager">
			<li><a href="${pageContext.request.contextPath}/encyclopedia/forwardQuestionList" target="list">内容库管理</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:advertising:manager">
		<h3><i class="iconlist information positionIicon"></i>广告管理<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li ><a href="${pageContext.request.contextPath}/advertise/forwardAdvertiseList" target="list">广告列表</a></li>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:antenatal:manager">
		<h3><i class="iconlist information positionIicon"></i>产检管理<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:platform:antenatal:manager">
			<li ><a href="${pageContext.request.contextPath}/chanjian/forwardPlatformchanjian" target="list">平台产检管理</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:hospital:antenatal:manager">
			<li ><a href="${pageContext.request.contextPath}/chanjian/forwardHospitalchanjian" target="list">医院产检管理</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
		
		<h3><i class="iconlist foodbank positionIicon"></i>食物库<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li ><a href="${pageContext.request.contextPath}/food/forwardFoodCategoryList" target="list">食材类型</a></li>
			<li ><a href="${pageContext.request.contextPath}/recipesCategory/recipesCategoryList" target="list">食谱类型</a></li>
			<li ><a href="${pageContext.request.contextPath}/weightRecipes/weightRecipesList" target="list">食谱管理</a></li>
		</ul>
		
	</div>
</div> 
<div class="list_menu_container" style="display: none;" id="socialityDiv">
	<div class="list_menu socialityManage">
		<shiro:hasPermission name="menu:topic">
		<h3><i class="iconlist huati positionIicon"></i>话题组<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:group:manager">
			<li><a href="${pageContext.request.contextPath}/sociality/topicManager/topicIndex" class="selected" target="list">小组管理</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:member:manager">
			<li><a href="${pageContext.request.contextPath}/sociality/userTopicManager/userTopicIndex" target="list">成员管理</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:invitation:manager">
			<li><a href="${pageContext.request.contextPath}/sociality/debatepostManager/debatepostIndex" target="list">帖子管理</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:comment:manager">
			<li><a href="${pageContext.request.contextPath}/sociality/commentManager/commentIndex" target="list">评论管理</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:exchange">
		<h3><i class="iconlist quanzi positionIicon"></i>交流圈<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:circle:manager">
			<li ><a href="${pageContext.request.contextPath}/sociality/group/init" target="list">圈子管理</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:exchange:member:manager">
			<li ><a href="${pageContext.request.contextPath}/group/user/groupinit" target="list">成员管理</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:admin:manager">
			<li ><a href="${pageContext.request.contextPath}/group/admin/groupinit" target="list">管理员管理</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:private:manger">
			<li ><a href="${pageContext.request.contextPath}/sociality/chat/chatIndex" target="list">私信管理</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:diary">
		<h3><i class="iconlist diary positionIicon"></i>宝妈日记 <i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li><a href="${pageContext.request.contextPath}/sociality/diary/init"  target="list">日记管理</a></li>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:others">
		<h3><i class="iconlist guide positionIicon"></i>其他<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:report:center">
			<li ><a href="${pageContext.request.contextPath}/sociality/reprot/debatepost/index" target="list">举报中心</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:recycleBin">
			<li ><a href="${pageContext.request.contextPath}/sociality/recycleManager/recycleDebatepost" target="list">回收站</a></li>
			</shiro:hasPermission>
			<!-- <li ><a href="交流圈-运营管理-账号管理.html">运营管理</a></li> -->
		</ul>
		</shiro:hasPermission>
	</div>
</div>
<div class="list_menu_container" style="display: none;" id="consultantDiv">
	<div class="list_menu consultantManage">
		<shiro:hasPermission name="menu:advisory:manager">
		<h3><i class="iconlist consult positionIicon"></i>咨询管理<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:all:advisory">
			<li ><a href="${pageContext.request.contextPath}/hospital/doctor/consultantAll" class="selected" target="list">全部咨询</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:issue">
			<li ><a href="${pageContext.request.contextPath}/hospital/doctor/problemBase" target="list">问题库</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:my:answer">
			<li ><a href="${pageContext.request.contextPath}/hospital/doctor/myAnswering" target="list">我的解答</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:note:manger">
		<h3><i class="iconlist consult positionIicon"></i>短信管理<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li><a href="${pageContext.request.contextPath}/verified/forwordUserVerifiedCode" target="list">验证码管理</a></li>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:open:user:manager">
		<h3><i class="iconlist consult positionIicon"></i>开放用户管理<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li><a href="${pageContext.request.contextPath}/business/businessFromJsp" target="list">用户列表</a></li>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:note:statistics">
		<h3><i class="iconlist preDate positionIicon"></i>短信统计<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li ><a href="${pageContext.request.contextPath}/sms/forwardSmsStatistics" target="list">医院列表</a></li>
		</ul>
		</shiro:hasPermission>
	</div>
</div>
<%-- <div class="list_menu_container" style="display: none;" id="hospitalDiv">
	<div class="list_menu hospitalManage">
		<h3><i class="iconlist consult positionIicon"></i>医院维护<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li ><a href="${pageContext.request.contextPath}/hospital/doctor/consultantAll" class="selected" target="list">医院列表</a></li>
			<li ><a href="${pageContext.request.contextPath}/hospital/doctor/problemBase" target="list">主页设置</a></li>
		</ul>
		<h3><i class="iconlist consult positionIicon"></i>科室维护<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li><a href="${pageContext.request.contextPath}/verified/forwordUserVerifiedCode" target="list">科室列表</a></li>
		</ul>
	</div>
</div> --%>
<div class="list_menu_container" style="display: none;" id="hospitalDiv">
	<div class="list_menu hospitalManage">
		<shiro:hasPermission name="menu:hospital:maintain">
		<h3><i class="iconlist hospital positionIicon"></i>医院维护<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="query:hospital:list">
			<li ><a href="${pageContext.request.contextPath}/hospital/hospitalList/hospitalList" class="selected" target="list">医院列表</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:index:setting">
			<li ><a href="${pageContext.request.contextPath}/hospital/homepage/basicFunction" target="list">主页设置</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:departments:maintain">
		<h3><i class="iconlist hospital positionIicon"></i>科室维护<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li ><a href="${pageContext.request.contextPath}/hospital/majorList/majorList" target="list">科室列表</a></li>
		</ul>
		</shiro:hasPermission>
	</div>
</div>
<div class="list_menu_container" style="display: none;" id="applicationDiv">
	<div class="list_menu hospitalManage">
		<shiro:hasPermission name="menu:feedback:manager">
		<h3><i class="iconlist hospital positionIicon"></i>反馈管理<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li ><a href="${pageContext.request.contextPath}/application/userCallback" class="selected" target="list">用户反馈</a></li>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:version:manager">
		<h3><i class="iconlist hospital positionIicon"></i>版本更新<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li ><a href="${pageContext.request.contextPath}/application/version/forwardVersion" target="list">版本更新</a></li>
		</ul>
		</shiro:hasPermission>
	</div>
</div>
<div class="list_menu_container" style="display: none;" id="backstageManagerDiv">
	<div class="list_menu hospitalManage">
		<shiro:hasPermission name="menu:account:auth">
		<h3><i class="iconlist hospital positionIicon"></i>账户权限<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:account:manager">
			<li><a href="${pageContext.request.contextPath}/login/forwordAccountManageJsp" class="selected" target="list">账户管理</a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="menu:role">
			<li><a href="${pageContext.request.contextPath}/login/forwordRoleManageJsp" target="list">角色管理</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
	</div>
</div>

<div class="list_menu_container" style="display: none;" id="userDiv">
	<div class="list_menu userManage">
		<shiro:hasPermission name="user:list">
		<h3><i class="iconlist hospital positionIicon"></i>用户管理<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<li ><a href="${pageContext.request.contextPath}/user/forwardUserList" target="list">用户列表</a></li>
		</ul>
		</shiro:hasPermission>
		<shiro:hasPermission name="menu:hospital:manager:list">
		<h3><i class="iconlist hospital positionIicon"></i>医生管理<i class="iconimg arrows positionIicon-r"></i></h3>
		<ul>
			<shiro:hasPermission name="menu:hospital:check">
			<li ><a href="${pageContext.request.contextPath}/doctor/forwardDoctorVerifyList" class="selected" target="list">医生审核</a></li>
			</shiro:hasPermission>
			
			<shiro:hasPermission name="menu:doctor:list">
			<li ><a href="${pageContext.request.contextPath}/doctor/forwardDoctorList" class="selected" target="list">医生列表</a></li>
			</shiro:hasPermission>
			
			<shiro:hasPermission name="menu:clini:crule">
			<li ><a href="${pageContext.request.contextPath}/doctor/forwardClinicRuleList" class="selected" target="list">诊所规则</a></li>
			</shiro:hasPermission>
		</ul>
		</shiro:hasPermission>
	</div>
</div>
<!-- 自动收缩 -->
<!-- <button id="list_menu_btn"><</button> -->
