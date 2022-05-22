<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="Omar Khalil, John Aziz" />
        <title>Arram | Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="/static/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="/static/ico/loginLogo.png">
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="/dashboard/{{ data.id }}">Arram Group</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <div class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            </div>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/employee/{{ data.id }}">Account</a></li>
                        <li><a class="dropdown-item" href="/settings/{{ data.id }}">Settings</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="/logout">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Menu</div>
                            <a class="nav-link" href="/dashboard/{{ data.id }}">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Daily Report
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                </a>
                                <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                    <nav class="sb-sidenav-menu-nested nav">
                                        <a class="nav-link" href="/add-report/{{ data.id }}">Add a Report</a>                
                                    </nav>
                                </div>
                                <div class="collapse" id="collapseLayouts" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                    <nav class="sb-sidenav-menu-nested nav">
                                        <a class="nav-link" href="/reports/view/{{ data.id }}">View Reports</a>
                                    </nav>
                                </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-book-open"></i>
                                </div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow">
                                    <i class="fas fa-angle-down"></i>
                                </div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Leads
                                        <div class="sb-sidenav-collapse-arrow">
                                            <i class="fas fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/leads/{{ data.id }}">View Leads</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Deals
                                        <div class="sb-sidenav-collapse-arrow">
                                            <i class="fas fa-angle-down"></i>
                                        </div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/deals/{{ data.id }}">View Deals</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">User</div>
                            <a class="nav-link" href="/employee/{{ data.id }}">
                                <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                                Account
                            </a>
                            <a class="nav-link" href="/settings/{{ data.id }}">
                                <div class="sb-nav-link-icon"><i class="fas fa-cogs"></i></div>
                                Settings
                            </a>
                            <a class="nav-link" href="/leads/help">
                                <div class="sb-nav-link-icon"><i class="fas fa-info"></i></div>
                                Help
                            </a>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Edit Lead</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">Employee</li>
                            <li class="breadcrumb-item active">Edit Lead</li>
                        </ol>
                        <div class="container-fluid mt-3">
							<div class="container">
								<div class="main-body">
									<div class="row">
										<div class="card">
											<div class="card-body">
							<form id="form" method="POST" action="/leads/{{ data.id }}/edit/{{ data.lead_id }}">
								<div class="row mb-3 align-items-center">
									<div class="col-sm-3">
										<h6 class="mb-0">Description</h6>
									</div>
									<div class="col-sm-9 text-secondary">
										<textarea id="description" name="description" form="form" class="form-control">{{ data.description}}</textarea>
									</div>
								</div>
								<div class="row mb-3 align-items-center">
									<div class="col-sm-3">
										<h6 class="mb-0">Status</h6>
									</div>
									<div class="col-sm-9 text-secondary">
										<select id="selectBox" class="form-select" id="status" name="status" aria-label="Default select example" onchange="wonStatus();" required>
                                            <option selected value="{{ data.status }}">{{ data.status }}</option>
											<option value="Interested Hold">Interested Hold</option>
                                            <option value="Interested Follow">Interested Follow</option>
                                            <option value="Not Interested">Not Interested</option>
											<option value="Promise Visit">Promise Visit</option>
											<option value="Meeting">Meeting</option>
                                            <option value="Waiting">Waiting</option>
											<option value="EOI">EOI</option>
											<option value="Low Budget">Low Budget</option>
											<option value="Not Interested Now">Not Interested Now</option>
                                            <option value="No Answer">No Answer</option>
											<option value="Pre No Answer">Pre No Answer</option>
                                            <option value="No Answer Hold">No Answer Hold</option>
                                            <option value="No Answer Follow">No Answer Follow</option>
                                            <option value="Not Reached">Not Reached</option>
											<option value="Contact in Future">Contact in Future</option>
											<option value="Lost">Lost</option>
                                            <option value="Won">Won</option>
										</select>
									</div>
								</div>
                                <div id='app'>
                                    <div class="row mb-3 align-items-center">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Next Follow Up</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <div class="flex w-full">
                                                <v-date-picker v-model="date" mode="dateTime" :min-date='new Date()' class="flex-grow">
                                                    <template v-slot="{ inputValue, inputEvents }">
                                                    <input
                                                        id="date next_follow_up"
                                                        name="next_follow_up"
                                                        class="bg-white text-gray-700 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                                                        :value="inputValue"
                                                        v-on="inputEvents"
                                                    />
                                                    </template>
                                                </v-date-picker>
                                            </div>    
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-3 align-items-center">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Second Phone</h6>
                                    </div>
									<div class="col-sm-9 text-secondary">
										<input type="text" id="second_phone" name="second_phone" class="form-control" value="{{ data.second_phone}}">
									</div>
                                </div>
                                <div id="myDIV" style='display: none;'>
                                    <hr>
                                    <div class="row mb-3 align-items-center">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Client Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            {{ data.client_name }}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row mb-3 align-items-center">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Phone</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            {{ data.phone }}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row mb-3 align-items-center">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Email</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            {{ data.email }}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row mb-3 align-items-center">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Assigned To</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            {{ data.assigned_to_name }}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row mb-3 align-items-center">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Project Developer</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" id="project_developer" name="project_developer" class="form-control" placeholder="Write the name of the project developer ..">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row mb-3 align-items-center">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Project Type</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" id="project_type" name="project_type" class="form-control" placeholder="Write the type of the project ..">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row mb-3 align-items-center">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Project Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" id="project_mame" name="project_name" class="form-control" placeholder="Write the name of the project ..">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row mb-3 align-items-center">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Unit Price</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="number" id="unit_price" name="unit_price" class="form-control" placeholder="Write the price of the unit">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row mb-3 align-items-center">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Down Payment</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="number" id="down_payment" name="down_payment" class="form-control" placeholder="Write the down payment" >
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row mb-3 align-items-center">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Commission</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" id="commission" name="commission" class="form-control" placeholder="Write the commission percentage ..">
                                        </div>
                                    </div>
                                </div>
								<div class="row">
									<div class="col-sm-3"></div>
									<div class="col-sm-9  d-flex justify-content-between text-secondary">
										<input type="submit" class="btn btn-primary px-4" value="Save Changes" onclick="window.history.go(-1);">
										<a class="btn btn-danger" href="javascript:history.back()">Cancel</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</main>
<footer class="py-4 bg-light mt-auto">
<div class="container-fluid px-4">
<div class="d-flex align-items-center justify-content-between small">
	<div class="text-muted">Copyright &copy; Arram 2021</div>
	<div>
		<a href="#">Privacy Policy</a>
		&middot;
		<a href="#">Terms &amp; Conditions</a>
	</div>
</div>
</div>
</footer>
</div>
</div>
<script src='https://unpkg.com/vue/dist/vue.js'></script>

   <!-- 2. Link VCalendar Javascript (Plugin automatically installed) -->
<script src='https://unpkg.com/v-calendar'></script>
<script type="text/javascript">
    function wonStatus() {
        var selectBox = document.getElementById("selectBox");
        var selectedValue = selectBox.options[selectBox.selectedIndex].value;
        var x = document.getElementById("myDIV");
               
        if (selectedValue == 'Won')
        x.style.display = "block";
        else
        x.style.display = "none";
    }
    new Vue({
        el: '#app',
        data() {
            return {
            date: null,
            };
        }
    })
   </script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/litepicker/dist/litepicker.js"></script>
<script src="/static/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="/static/js/datatables-simple-demo.js"></script>
</body>
</html>


