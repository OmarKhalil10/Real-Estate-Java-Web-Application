<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="Omar Khalil, John Aziz" />
        <title>RealEstate | Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="/static/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="/static/ico/loginLogo.png">
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="/manager/dashboard">RealEstate</a>
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
                            <a class="nav-link" href="/manager/dashboard">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Employees
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="/employees">View Employees</a>                
                                </nav>
                            </div>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="/employees/new">Add an Employee</a>                
                                </nav>
                            </div>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="#">View</a>                                
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
                                            <a class="nav-link" href="/manager/leads/{{ data.id }}">View Leads</a>
                                        </nav>
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/manager/import">Add Leads from File Upload</a>
                                        </nav>
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/manager/{{ data.id }}/add-lead">Add Leads from UI</a>
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
                                            <a class="nav-link" href="/deals">View Deals</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <a class="nav-link" href="/manager/sales-report">
                              <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                              Sales Reports
                          </a>
                          <a class="nav-link" href="/manager/visits-report">
                              <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                              Visits
                          </a>
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
                        <h1 class="mt-4">Account</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">User</li>
                            <li class="breadcrumb-item active">Account</li>
                        </ol>
                        <div class="container-fluid mt-3">
                          <!-- DataTales Example -->
                          <div class="card shadow mb-4">
                            <div class="card-body">
                                <div class="container">
                                    <div class="main-body">
                                          <div class="row gutters-sm">
                                            <div class="col-md-4 mb-3">
                                              <div class="card">
                                                <div class="card-body">
                                                  <div class="d-flex flex-column align-items-center text-center">
                                                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                                                    <div class="mt-3">
                                                      <h4>{{ data.name }}</h4>
                                                      <p class="text-secondary mb-1">{{ data.job_title }}</p>
                                                      <p class="text-muted font-size-sm">{{ data.address }}</p>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="card mt-3">
                                                <ul class="list-group list-group-flush">
                                                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" width="24" height="24" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24" class="feather feather-linkedin mr-2 icon-inline"><g fill="none" stroke="#0077b5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2a2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/><path d="M2 9h4v12H2z"/><circle cx="4" cy="4" r="2"/></g></svg>Linked In</h6>
                                                    <span class="text-secondary">https://linkedin.com</span>
                                                  </li>
                                                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter mr-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
                                                    <span class="text-secondary">@twitter</span>
                                                  </li>
                                                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram mr-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
                                                    <span class="text-secondary">@instagram</span>
                                                  </li>
                                                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook mr-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
                                                    <span class="text-secondary">@facebook</span>
                                                  </li>
                                                </ul>
                                              </div>
                                            </div>
                                            <div class="col-md-8">
                                              <div class="card mb-3">
                                                <div class="card-body">
                                                  <div class="row">
                                                    <div class="col-sm-3">
                                                      <h6 class="mb-0">Name</h6>
                                                    </div>
                                                    <div class="col-sm-9 text-secondary">
                                                      {{ data.name }}
                                                    </div>
                                                  </div>
                                                  <hr>
                                                  <div class="row">
                                                    <div class="col-sm-3">
                                                      <h6 class="mb-0">Email</h6>
                                                    </div>
                                                    <div class="col-sm-9 text-secondary">
                                                      {{ data.username }}
                                                    </div>
                                                  </div>
                                                  <hr>
                                                  <div class="row">
                                                    <div class="col-sm-3">
                                                      <h6 class="mb-0">ID Number</h6>
                                                    </div>
                                                    <div class="col-sm-9 text-secondary">
                                                       {{ data.id_number }}
                                                    </div>
                                                  </div>
                                                  <hr>
                                                  <div class="row">
                                                    <div class="col-sm-3">
                                                      <h6 class="mb-0">Date of Birth</h6>
                                                    </div>
                                                    <div class="col-sm-9 text-secondary">
                                                      {{ data.date_of_birth}}
                                                    </div>
                                                  </div>
                                                  <hr>
                                                  <div class="row">
                                                    <div class="col-sm-3">
                                                      <h6 class="mb-0">Qualifications</h6>
                                                    </div>
                                                    <div class="col-sm-9 text-secondary">
                                                      {{ data.qualifications}}
                                                    </div>
                                                  </div>
                                                  <hr>
                                                  <div class="row">
                                                    <div class="col-sm-12">
                                                      <a class="btn btn-info" href="/employee/{{ data.id }}/edit">Edit</a>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                            
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
                            <div class="text-muted">Copyright &copy; RealEstate 2022</div>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/static/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="/static/js/datatables-simple-demo.js"></script>
    </body>
</html>