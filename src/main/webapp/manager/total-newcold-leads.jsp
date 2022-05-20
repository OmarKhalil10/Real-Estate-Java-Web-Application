<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="Omar Khalil, John Aziz" />
        <title>RealEstate | Dashboard</title>
        <link href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/datetime/1.1.1/css/dataTables.dateTime.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/buttons/2.0.1/css/buttons.dataTables.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css" rel="stylesheet" />
        <link href="/static/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
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
                        <h1 class="mt-4">Leads</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">Employees</li>
                            <li class="breadcrumb-item active">Leads</li>
                        </ol>
                        <table border="0" cellspacing="5" cellpadding="5">
                            <tbody><tr>
                                <td>Minimum date:</td>
                                <td><input type="text" id="min" name="min"></td>
                            </tr>
                            <tr>
                                <td>Maximum date:</td>
                                <td><input type="text" id="max" name="max"></td>
                            </tr>
                        </tbody></table>
                                <table id="example" class="compact nowrap cell-border" style="width:100%">
                                    <thead>
                                        <tr>
                                          <th></th>
                                          <th>Created Time</th>
                                          <th>Client Name</th>
                                          <th>Phone</th>
                                          <th>Whatsapp</th>
                                          <th>Second Phone</th>
                                          <th>Email</th>
                                          <th>Pre Assigned To</th>
                                          <th>Assigned To</th>
                                          <th>Status</th>
                                          <th>Next Follow Up</th>
                                          <th>Last Follow Up</th>
                                          <th>Request</th>
                                          <th>Description</th>
                                          <th>Client Job</th>
                                          <th>Channel</th>
                                          <th>Source</th>
                                          <th>Ad Details</th>
                                          <th>Visit Date</th>
                                          <th>Lead Type</th>
                                          <th>Country</th>
                                          <th>Campaign</th>
                                          <th>Round</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                          <th></th>
                                          <th>Created Time</th>
                                          <th>Client Name</th>
                                          <th>Phone</th>
                                          <th>Whatsapp</th>
                                          <th>Second Phone</th>
                                          <th>Email</th>
                                          <th>Pre Assigned To</th>
                                          <th>Assigned To</th>
                                          <th>Status</th>
                                          <th>Next Follow Up</th>
                                          <th>Last Follow Up</th>
                                          <th>Request</th>
                                          <th>Description</th>
                                          <th>Client Job</th>
                                          <th>Channel</th>
                                          <th>Source</th>
                                          <th>Ad Details</th>
                                          <th>Visit Date</th>
                                          <th>Lead Type</th>
                                          <th>Country</th>
                                          <th>Campaign</th>
                                          <th>Round</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        {% for d in data.leads%}
                                        <tr>
                                          <td>
                                            <div class="btn-group" role="group">
                                                <div> 
                                                    <a class="btn btn-secondary" href="/manager/{{ data.id }}/assign-newcold-lead/{{ d.id }}"><i class="fas fa-user-plus"></i></a>
                                                </div>
                                            <div class="dropdown px-1">
                                              <a class="btn btn-secondary" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
                                                  <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                                                </svg>
                                            </a>
                                              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                <li><a class="dropdown-item" href="/manager/{{ data.id }}/view-lead/{{ d.id }}">View</a></li>
                                                <li><a class="dropdown-item" href="/manager/{{ data.id }}/edit-lead/{{ d.id }}">Edit</a></li>
                                              </ul>
                                            </div>
                                            </div>
                                          </td>
                                          <td>{{ d.created_time }}</td>
                                          <td>{{ d.client_name }}</td>
                                          <td>{{ d.phone }}</td>
                                          <td><a class="link-primary text-decoration-none" href="{{ d.whatsapp_link }}" target="_blank">{{ d.whatsapp_link }}</a></td>
                                          <td>{{ d.second_phone }}</td>
                                          <td>{{ d.email }}</td>
                                          <td>{{ d.preassigned_to_name }}</td>
                                          <td>
                                            <select class="form-select" id="assigned_to" name="assigned_to" aria-label="Default select example" onchange="fetch('/manager/'+'{{data.id}}'+'/select-assign-lead/'+'{{ d.id }}', {method: 'PATCH', body: JSON.stringify({ 'assigned_to': this.options[this.selectedIndex].value}), headers: {'Content-Type': 'application/json'}});" required>
                                                <option selected value="{{ d.assigned_to }}">{{ d.assigned_to_name }}</option>
                                                {% for d in data.all_sales%}
                                                <option value="{{ d.id }}">{{ d.name}}</option>
                                                {% endfor %}
                                            </select>
                                          </td>
                                          <td>{{ d.status }}</td>
                                          <td>{{ d.next_follow_up }}</td>
                                          <td>{{ d.last_follow_up }}</td>
                                          <td>{{ d.request }}</td>
                                          <td>{{ d.description }}</td>
                                          <td>{{ d.client_job }}</td>
                                          <td>{{ d.channel }}</td>
                                          <td>{{ d.source }}</td>
                                          <td>{{ d.ad_details }}</td>
                                          <td>{{ d.visit_date }}</td>
                                          <td>{{ d.lead_type }}</td>
                                          <td>{{ d.country }}</td>
                                          <td>{{ d.campaign }}</td>
                                          <td>{{ d.round }}</td>
                                        </tr>
                                        {% endfor %}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/static/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/buttons/2.0.1/js/dataTables.buttons.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/buttons/2.0.1/js/buttons.html5.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/buttons/2.0.1/js/buttons.print.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/datetime/1.1.1/js/dataTables.dateTime.min.js" crossorigin="anonymous"></script>
        <script src="/static/js/datatables.js"></script>
    </body>
</html>
