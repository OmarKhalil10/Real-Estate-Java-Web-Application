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
            <a class="navbar-brand ps-3" href="/dashboard/{{ data.id }}">RealEstate</a>
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
                    <h1 class="mt-4">Help</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item">Employee</li>
                        <li class="breadcrumb-item active">Help</li>
                    </ol>
                    <div class="container-fluid mt-3">
                      <!-- DataTales Example -->
                      <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="container">
                                <div class="main-body">
            <div class="row">
                <div class="h-100">
                    <h5 class="d-flex align-items-center mb-3">Status</h5>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">Interested Follow</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              2 days
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                عميل مهتم جدا و بقفل معاه مقابله بتابع معاه
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">Interested Hold</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              2 days
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                عميل مهتم بشكل مبدئى و محتاج تفاصيل وبتابع معاه
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">Pre No Answer</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              1 day
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                مردش مبدئيا (لمده شهر)
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">Contact In Future</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              15 days
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                عميل مهتم و محتاج متابعه بعد 15 يوم او اكثر لظروف خاصه به 
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">Waiting</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              5 hours
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                عميل كلمته و قالى كلنى فى نفس اليوم فى موعد هو حدده لو مردش اخر اليوم يبقى pre no answer
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">Not Interested Now</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              No Date
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                عميل  المهتم جدا و غير اهتمامه
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">Not Interested</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                                No Date
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                عميل مش مهتم اصلا خالص بالعقارات من اول مكالمه
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">No Answer</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              No Date
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                عميل مردش خالص على الاتصال و على الواتس اب يأست انو يرد عليك
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">No Answer Hold</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              24 hours
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                عميل كان مهتم و مبقاش يرد عليا 
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">No Answer Follow</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              24 hours
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                عميل كان مهتم جدا و بقفل معاه مقابله بس مبقاش يرد عليا
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">Not Reached</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              No Date
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                الرقم مغلق او غير متاح او مش مجمع او الرق غلط معرفتش اوصله او شخص غلط
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">Won</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              No Date
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                عميل تعاقد و يتم ملء بياناته 
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div>
                              <h6 class="mb-0">Lost</h6>
                            </div>
                            <div class="col-sm-3 text-secondary mt-3">
                              No Date
                            </div>
                            <div class="col-sm-9 text-secondary mt-3">
                                عميل كان مهتم و متابع معانا و قفل مع المطور او حد تانى
                            </div>
                          </div>
                          <hr>
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
        </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/static/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="/static/js/datatables-simple-demo.js"></script>
    </body>
</html>