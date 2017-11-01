
<div class="container">

	<div class="row">

		<!-- would be to display sidebar -->

		<div class="col-md-3">
			<%@include file="./shared/sidebar.jsp"%>
		</div>

		<!-- would be to display all product list -->
		<div class="col-md-9">

			<div class="row">




				<c:if test="${userClickListProducts == true}">
					<div class="col-lg-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a>
							</li>
							<li class="breadcrumb-item active">All Products</li>
						</ol>

					</div>
				</c:if>

				<c:if test="${userClickCategoryProducts == true}">
					<div class="col-lg-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
							<li class="breadcrumb-item active">Category</li>
							<li class="breadcrumb-item active">${category.name}</li>
						</ol>


					</div>
				</c:if>












			</div>


		</div>

	</div>
</div>

