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
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">This Month Stats</li>
                        </ol>
                    <div class="row">
                        <div class="col-xl-3 col-md-6">
                          <div class="card bg-primary text-white mb-4">
                              <div class="card-body">
                                <span>New Leads</span>
                                <span>{{ data.num_fresh }}</span>
                              </div>
                              <div class="card-footer d-flex align-items-center justify-content-between">
                                  <a class="small text-white stretched-link" href="/leads/{{ data.id }}/new">View Details</a>
                                  <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                              </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                          <div class="card bg-warning text-white mb-4">
                              <div class="card-body">
                                    <span>Follow Up</span>
                                    <span>{{ data.num_followups }}</span>
                                </div>
                              <div class="card-footer d-flex align-items-center justify-content-between">
                                  <a class="small text-white stretched-link" href="/leads/{{ data.id }}/followup">View Details</a>
                                  <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                              </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-danger text-white mb-4">
                                <div class="card-body">
                                    <span>Delayed</span>
                                    <span>{{ data.num_delayed }}</span>
                                  </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/leads/{{ data.id }}/delayed">View Details</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                          <div class="card bg-success text-white mb-4">
                                <div class="card-body">
                                  <span >Won</span>
                                  <span >{{ data.num_won }}</span>
                                </div>
                              <div class="card-footer d-flex align-items-center justify-content-between">
                                  <a class="small text-white stretched-link" href="/deals/{{ data.id }}">View Details</a>
                                  <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                              </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-secondary text-white mb-4">
                                <div class="card-body">
                                      <span>New Cold</span>
                                      <span>{{ data.num_new_cold }}</span>
                                  </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/leads/{{ data.id }}/newcold">View Details</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-primary text-white mb-4">
                                  <div class="card-body">
                                    <span >New International</span>
                                    <span >{{ data.num_new_international }}</span>
                                  </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/leads/{{ data.id }}/newglobal">View Details</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-primary text-white mb-4">
                                  <div class="card-body">
                                    <span >New Cold International</span>
                                    <span >{{ data.num_new_cold_international }}</span>
                                  </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="/leads/{{ data.id }}/coldglobal">View Details</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="container-fluid px-4">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-table me-1"></i>
                                    Stats
                                </div>
                                <div class="card-body">
                                    <table id="datatablesSimple">
                                        <thead>
                                            <tr>
                                                <th>Interested Hold</th>
                                                <th>Interested Follow</th>
                                                <th>Waiting</th>
                                                <th>Promise Visit</th>
                                                <th>No Answer Hold</th>
                                                <th>No Answer Follow</th>
                                                <th>Pre No Answer</th>
                                                <th>Contact in Future</th>
                                                <th>EOI</th>
                                                <th>Meeting</th> 
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Interested Hold</th>
                                                <th>Interested Follow</th>
                                                <th>Waiting</th>
                                                <th>Promise Visit</th>
                                                <th>No Answer Hold</th>
                                                <th>No Answer Follow</th>
                                                <th>Pre No Answer</th>
                                                <th>Contact in Future</th>
                                                <th>EOI</th>
                                                <th>Meeting</th> 
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <tr>
                                                <td><a class="link-primary text-decoration-none" href="/leads/{{ data.id }}/interested-hold">{{ data.num_interested_hold }}</a></td>
                                                <td><a class="link-primary text-decoration-none" href="/leads/{{ data.id }}/interested-follow">{{ data.num_interested_follow }}</a></td>
                                                <td><a class="link-primary text-decoration-none" href="/leads/{{ data.id }}/waiting">{{ data.num_waiting }}</a></td>
                                                <td><a class="link-primary text-decoration-none" href="/leads/{{ data.id }}/promise-visit">{{ data.num_promise_visit }}</a></td>
                                                <td><a class="link-primary text-decoration-none" href="/leads/{{ data.id }}/no-answer-hold">{{ data.num_no_answer_hold }}</a></td>
                                                <td><a class="link-primary text-decoration-none" href="/leads/{{ data.id }}/no-answer-follow">{{ data.num_no_answer_follow }}</a></td>
                                                <td><a class="link-primary text-decoration-none" href="/leads/{{ data.id }}/pre-no-answer">{{ data.num_pre_no_answer }}</a></td>
                                                <td><a class="link-primary text-decoration-none" href="/leads/{{ data.id }}/contact-in-future">{{ data.num_contact_in_future }}</a></td>
                                                <td><a class="link-primary text-decoration-none" href="/leads/{{ data.id }}/eoi">{{ data.num_eoi }}</a></td>
                                                <td><a class="link-primary text-decoration-none" href="/leads/{{ data.id }}/meeting">{{ data.num_visits }}</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
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

