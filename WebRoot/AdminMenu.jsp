<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Admin Menu</title>
		<meta name="Author" content="Stu Nicholls" />

		<link rel="stylesheet" type="text/css" href="./menu/pro_drop_1.css" />

		<script src="menu/stuHover.js" type="text/javascript">
</script>

	</head>
	<body>
		<ul id="nav">
		<li class="top">
				<a href="./AdminHome.jsp" class="top_link"><span>Home</span> </a>
			</li>
			
			
			
			<li class="top">
				<a href="#nogo22" id="services" class="top_link"><span
					class="down">DrugInfo</span> </a>
				<ul class="sub">
					<li>
						<a href="./AddDrugsDetails.jsp" class="parent"><span>Add DrugsInformation</span> </a>
					</li>
					<li>
						<a href="./viewDrugDetailsAction.do" class="parent"><span>ViewDrugInforamtion</span>
						</a>
					</li>
				</ul>
			</li>
			<li class="top">
				<a href="#nogo22" id="services" class="top_link"><span
					class="down">AllDrugReview</span> </a>
				<ul class="sub">
					
					<li>
						<a href="./viewDrugReviewAction.do" class="parent"><span>ViewAllDrugReview</span>
						</a>
					</li>
				</ul>
			</li>
			
			<li class="top">
				<a href="#nogo22" id="services" class="top_link"><span
					class="down">Reviews</span> </a>
				<ul class="sub">
					
					<li>
						<a href="./drugsReviewAction.do" class="parent"><span>Drug_Reviews</span>
						</a>
					</li>
					<li>
						<a href="./removeStopWordDrugsReviewAction.do" class="parent"><span>RemoveStopWord_Drugs</span>
						</a>
					</li>
					
					<li>
						<a href="./countWordDrugsReviewAction.do" class="parent"><span>Count_Word_DrugsReviews</span>
						</a>
					</li>
					<li>
						<a href="./labelByDrugsReviewAction.do" class="parent"><span>Label_By_DrugsReview</span>
						</a>
					</li>
					<li>
						<a href="./labelByCountDrugsReviewAction.do" class="parent"><span>Label_By_CountWordReviews</span>
						</a>
					</li>
					 <li>
						<a href="./viewDrugSummaryAction.do" class="parent"><span>Summary_of_Drug_Reviews</span>
						</a>
					</li>
				</ul>
			</li>
			<li class="top">
				<a href="#nogo22" id="services" class="top_link"><span
					class="down">Extra_Review</span> </a>
				<ul class="sub">
					
					  <li>
						<a href="./viewGenderDrugSummaryAction.do" class="parent"><span>Gender_By_Reviews</span>
						</a>
					</li>
					 <li>
						<a href="./viewGenderDrugSummaryAction1.do" class="parent"><span>Gender_By_ReviewsRemoveStopWord</span>
						</a>
					</li>
					<li>
						<a href="./viewAgeDrugSummaryAction.do" class="parent"><span>Age_By_Reviews</span>
						</a>
					</li>
					<li>
						<a href="./viewAgeDrugSummaryAction1.do" class="parent"><span>Age_By_ReviewsRemoveStoptWord</span>
						</a>
					</li>
				</ul>
			</li>
			
			
			<li class="top">
				<a href="#nogo22" id="services" class="top_link"><span
					class="down">Experiment</span> </a>
				<ul class="sub">
					
					  <li>
						<a href="./viewExperiemrntDrugReviewAction.do" class="parent"><span>Experiment_DrugReview</span>
						</a>
					</li>
					<li>
						<a href="./labelDrugsReviewAction.do" class="parent"><span>Aspects Identified by Using PAMM</span>
						</a>
					</li>
						<li>
						<a href="./viewGenderDrugSummaryAction2.do" class="parent"><span>Aspects Identified by Using PAMM</span>
						</a>
					</li>
				</ul>
			</li>
				
			<li class="top">
				<a href="#nogo22" id="services" class="top_link"><span
					class="down">Users</span> </a>
				<ul class="sub">
					<li>
						<a href="./viewRegisteredUsersAction.do?user=Request"
							class="parent"><span>RequestedUsers</span> </a>
					</li>
					<li>
						<a href="./viewRegisteredUsersAction.do?user=Active"
							class="parent"><span>RegisteredUsers</span> </a>
					</li>
				</ul>
			</li>

        



			<li class="top">
				<a href="#nogo22" id="services" class="top_link"><span
					class="down">Profile</span> </a>
				<ul class="sub">
					<li>
						<a href="./viewProfileAction.do" class="parent"><span>ViewProfile</span>
						</a>
					</li>
					<li>
						<a href="./ChangePassword.jsp" class="parent"><span>ChangePassword</span>
						</a>

					</li>
				</ul>
			</li>
		
			
			
			<li class="top">
				<a href="./logoutAction.do" class="top_link"><span>Logout</span>
				</a>
			</li>
			
			
			
			
			
			
		</ul>
	</body>
</html>






















