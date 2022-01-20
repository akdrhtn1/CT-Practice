<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<meta name="description" content=""/>
<meta name="author" content=""/>
<!--
    <link rel="icon" href="../../../../favicon.ico">
    -->

<title>SQL Developer Start (Welcome) Page</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="css/bootstrap.css" />
  

<!-- Custom styles for this template -->
<link href="product.css" rel="stylesheet"/>
</head>

<body>


  <!-- Banner & Version -->
  <div class="card w-100 sql-dev-banner" role="banner">
    <img class="card-img" src="img/sqldev-banner-new-2x.png" alt="SQL Developer banner"/>
    <div class="card-img-overlay">
      <span class="float-right card-text" id="versionString"></span>
<!--    
      <br /><span class="float-right card-text" id="showOnStartup"></span> 
-->    
    </div>
  </div>


  <!-- Cards -->
  <div class="container-fluid">

    <!-- Optional new version alert. SQLdev can set the #newVersion text and add the "show" class to #newVersionAlert to turn it on -->
    <!-- TODO add close X to allow user to close - remember as preference? -->
    <div class="row">
      <div class="col-sm-12">
        <div class="collapse" id="newVersionAlert">
          <div class="card h-100" role="alert">
            <div class="card-body">
              <a class="btn btn-info btn-block"
                href="http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html" id="newVersionAlertLabel"><span class="badge badge-light ml-3" id="newVersion"></span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Info cards -->
    <!--
      TODO: Look at tightening up t,b margins on card-header
            increase top margin on list group in tab (.5rem?)
            Double check brand usage on social media icons. 32px looks pretty big - maybe ditch footer & place in body  
    -->
    <div class="row">
      <div class="col-sm-6 card-container">

        <div class="card h-100" id="databaseConnection">
          <div class="card-header">
            <h5>Database Connection</h5>
          </div>
          <div class="card-body">
            <ul class="nav nav-tabs" id="connection-tabs-nav" role="tablist">
              <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#recent" id="recentTab" role="tab">Recent</a></li>
              <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#detected" id="detectedTab" role="tab">Databases Detected</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content" id="connection-tabs">
              <div class="tab-pane container" id="recent" role="tabpanel">
                <div id="connList" class="list-group list-group-action-item">
                </div>
              </div>
              <div class="tab-pane container" id="detected" role="tabpanel">
                <b>Click to add the connection</b>
                <div id="tnsList" class="list-group list-group-action-item">
                </div>
                <a class="btn btn-primary" id="loadTnsFile" href="#" role="button">Load a TNS file</a>
              </div>
            </div>
          </div>
          <a class="btn btn-primary m-4" id="newConnection" href="#" role="button">Create a Connection Manually</a>
        </div>

      </div>
      <div class="col-sm-6 card-container">

        <div class="card h-100">
          <div class="card-header">
            <h5>Getting Started</h5>
          </div>
          <div class="card-body">

            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#getdb" role="tab">Get a Database</a></li>
              <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#information" role="tab">Information</a></li>
              <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#tutorials" role="tab">Tutorials</a></li>
              <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#demos" role="tab">Demos</a></li>
              <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#oracleu" role="tab">Training</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
              <div class="tab-pane active container" id="getdb" role="tabpanel">
                <div class="list-group list-group-action-item">
                  <a href="http://www.oracle.com/technetwork/database/enterprise-edition/databaseappdev-vm-161299.html">Oracle VirtualBox Appliance</a>
                  <a href="https://github.com/oracle/docker-images">Docker Images</a>
                  <a href="http://www.oracle.com/technetwork/database/database-technologies/express-edition/overview/index.html">Oracle Database XE</a>
                </div>
              </div>
              <div class="tab-pane container" id="information" role="tabpanel">
                <div class="list-group list-group-action-item">
                  <a href="https://www.youtube.com/watch?v=EguMf4HbPU8&amp;t=0s&amp;list=PL_qNe_aTKkIUUzDEJ7KuvyldBuynyoDb2&amp;index=1">Overview Video</a>
                  <a href="http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/sqldev-newfeatures-v181-4423630.html">What's New</a>
                  <a href="http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/sqldev-relnotes-181-4423629.html">Release Notes</a>
                  <a href="https://docs.oracle.com/database/sql-developer-18.1/">Documentation</a> 
                  <a href="http://www.oracle.com/technetwork/developer-tools/sql-developer/index.html">SQL Developer on OTN</a>
                </div>
              </div>
              <div class="tab-pane container" id="tutorials" role="tabpanel">
                <div class="list-group list-group-action-item">
                  <a href="https://apex.oracle.com/pls/apex/f?p=44785:24:5673097343199:::24:P24_CONTENT_ID,P24_PROD_SECTION_GRP_ID,P24_PREV_PAGE:6942,,24">Optimizer Access Paths</a>
                  <a href="https://apex.oracle.com/pls/apex/f?p=44785:24:5673097343199:::24:P24_CONTENT_ID,P24_PROD_SECTION_GRP_ID,P24_PREV_PAGE:7066,,24">SQL Tuning Advisor</a>
                  <a href="https://apex.oracle.com/pls/apex/f?p=44785:24:3088020377411:::24:P24_CONTENT_ID,P24_PREV_PAGE:6941,24">Working with Tuning Utilities</a>
                  <a href="https://apexapps.oracle.com/pls/apex/f?p=44785:OLL_SEARCH:109511493102806:::2:P2_SEARCH_TEXT:sqldev">All Online Tutorials</a>
                </div>
              </div>
              <div class="tab-pane container" id="demos" role="tabpanel">
                <div class="list-group list-group-action-item">
                  <a href="https://www.youtube.com/watch?v=koffmWahzQ4&amp;list=PL_qNe_aTKkIUUzDEJ7KuvyldBuynyoDb2&amp;index=9">Real Time SQL Monitoring</a>
                  <a href="https://www.youtube.com/watch?v=Ybe04HkE6Bs&amp;list=PL_qNe_aTKkIUUzDEJ7KuvyldBuynyoDb2&amp;index=24">Debugging PL/SQL</a>
                  <a href="https://www.youtube.com/watch?v=wWIhGWXEZC4&amp;list=PL_qNe_aTKkIUUzDEJ7KuvyldBuynyoDb2&amp;index=6">Importing Data from Excel into Oracle Database</a>
                  <a href="https://www.youtube.com/watch?v=FrdUCdGJEG8&amp;list=PL_qNe_aTKkIUUzDEJ7KuvyldBuynyoDb2&amp;index=5">Database Instance Viewer</a>
                  <a href="https://www.youtube.com/watch?v=b-iHX2EA77w">Introduction to Oracle SQLcl</a>
                </div>
              </div>
              <div class="tab-pane container" id="oracleu" role="tabpanel">
                <div class="list-group list-group-action-item">
                  <a href="http://education.oracle.com/pls/web_prod-plq-dad/db_pages.getpage?page_id=609&amp;p_org_id=1001&amp;lang=US&amp;get_params=dc:D56497GC20,p_preview:N">Oracle Data Modeling</a>
                  <a href="http://education.oracle.com/pls/web_prod-plq-dad/db_pages.getlppage?page_id=212&amp;path=DB12">New to SQL Learning Path</a>
                  <a href="http://education.oracle.com/pls/web_prod-plq-dad/db_pages.getlppage?page_id=212&amp;path=DBPS">Application Development Learning Path</a>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>

    <div class="row">
      <div class="col-sm-6 card-container">

        <div class="card h-100">
          <div class="card-header">
            <h5>Resources</h5>
          </div>
          <div class="card-body">


            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#community" role="tab">Community</a></li>
              <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#extensions" role="tab">Extensions</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content" id="resource-tabs">
              <div class="tab-pane active container" id="community" role="tabpanel">
                <div class="list-group list-group-action-item">
                  <a href="https://apex.oracle.com/pls/apex/f?p=43135:1:108244520017938:::::">SQL Developer Exchange</a> 
                  <a href="https://community.oracle.com/community/database/developer-tools/sql_developer">SQL Developer Forum</a> 
                  <a href="http://www.oracle.com/technetwork/developer-tools/sql-developer/community-089178.html">Team Blogs and Magazine Articles</a> 
                </div>
              </div>
              <div class="tab-pane container" id="extensions" role="tabpanel">
                <div class="list-group list-group-action-item">
                  <a class="border-bottom" href="https://github.com/oracle/oracle-db-examples/tree/master/sqldeveloper/extension">Open Source Examples - Build your own!</a>
                  <a href="http://www.oracle.com/technetwork/developer-tools/datamodeler/overview/index.html">SQL Developer Data Modeler</a>
                  <a href="http://www.oracle.com/technetwork/database/migration/index-084442.html">SQL Developer Migrations</a>
                  <a href="http://www.oracle.com/technetwork/database/options/advanced-analytics/odm/index.html">Oracle Data Mining</a>
                  <a href="http://www.oracle.com/technetwork/products/timesten/overview/index.html">Oracle Timesten</a>
                  <a href="http://www.oracle.com/technetwork/database-options/spatialandgraph/overview/index.html">Oracle Spatial</a>
                  <a href="http://www.oracle.com/technetwork/database/options/olap/index.html">Oracle OLAP</a>
                </div>
              </div>
            </div>



          </div>
          <div class="card-footer">
          <!--  N.B. Twitter guidelines specify minimum 32px when used in social icon line up 
                Twitter Brand Guidelines v2.0 pg 6 -->
              Follow Us!
              <a class="ml-3" href="https://www.facebook.com/pages/Oracle-SQL-Developer/222195214487186">
                <img height="18px" src="img/FB-f-Logo__blue_100.png" alt="Facebook" />
              </a> 
              <a href="https://twitter.com/OracleSQLDev">
                <img height="32px" src="img/Twitter_Logo_Blue.png" alt="Twitter" />
              </a> 
              <a href="https://www.youtube.com/watch?v=EguMf4HbPU8&amp;list=PL_qNe_aTKkIUUzDEJ7KuvyldBuynyoDb2">
                <img height="18px" src="img/youtube_social_icon_red.png" alt="You Tube" />
              </a>
          </div>
        </div>

      </div>
      <div class="col-sm-6 card-container">

        <div class="card h-100">
          <div class="card-header">
            <h5>Related Tools</h5>
          </div>
          <div class="card-body">
            <ul>
              <li><h5><a href="http://www.oracle.com/technetwork/developer-tools/datamodeler/overview/index.html"><img height="32px" src="img/DataModeler-32.png" alt="Data Modeler icon" /> Modeler</a> - Data modeling and database design</h5></li>
              <li><h5><a href="http://www.oracle.com/technetwork/developer-tools/sqlcl/overview/index.html"><img height="32px" src="img/SQLcl-32.png" alt="SQL cl icon" /> SQLcl</a> - The power of SQL Developer in a CLI</h5></li>
              <li><h5><a href="https://livesql.oracle.com/apex/livesql/file/index.html"><img height="32px" src="img/live-sql-logo-32.png" alt="Oracle Live SQL icon" /> Oracle Live SQL</a> - Learn and share SQL, for free.</h5></li>
<!--          <li><h5><a href=""> Web</a> - SQL Developer in the Oracle Cloud</h5></li>  -->
              <li><h5><a href="http://www.oracle.com/technetwork/developer-tools/rest-data-services/overview/index.html"><img height="32px" src="img/ORDS-32.png" alt="ORDS icon" /> ORDS</a> - REST Enable the Oracle Database</h5></li>
            </ul>
          </div>
          </div>
        </div>

      </div>

    </div>
    
    <!-- Screenshots Slideshow (static list for now but SQLDev could inject more from web or wherever) -->
    <div class="container-fluid">
    
      <div class="row">
        <div class="col-sm-12">
          <div class="card h-100">
            <div class="card-header">
              <h5>Feature Screenshots</h5>
            </div>
            <div class="card-body">
              <!-- <div id="screenshots" class="carousel slide" >  data-ride="carousel">  -->
              <div id="screenshots" class="carousel" data-interval="false">
                
                <!-- Indicators -->
                <ul class="carousel-indicators" role="navigation">
                  <li data-target="#screenshots" data-slide-to="0" class="active">0</li>
                  <li data-target="#screenshots" data-slide-to="1">1</li>
                  <li data-target="#screenshots" data-slide-to="2">2</li>
                  <li data-target="#screenshots" data-slide-to="3">3</li>
                  <li data-target="#screenshots" data-slide-to="4">4</li>
                  <li data-target="#screenshots" data-slide-to="5">5</li>
                  <li data-target="#screenshots" data-slide-to="6">6</li>
                  <li data-target="#screenshots" data-slide-to="7">7</li>
                  <li data-target="#screenshots" data-slide-to="8">8</li>
                  <!-- 
          <li data-target="#screenshots" data-slide-to="6"></li>
           -->
                </ul>

                <!-- The slideshow -->
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img class="img-fluid" src="img/181welcome/worksheet0.png" />
                    <div class="carousel-caption">
                    <p>The SQL Worksheet allows you to run queries and scripts, and offers a code insight feature to help you auto-complete your code.</p>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img class="img-fluid" src="img/181welcome/worksheet1.png" />
                    <div class="carousel-caption">
                    <p>Data can be easily exported to various formats include Excel, CSV, insert statements, json, and more.</p>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img class="img-fluid" src="img/181welcome/table2.png" />
                    <div class="carousel-caption">
                    <p>A graphical user interface for database objects allows you to click, browse, and manage your schema.</p>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img class="img-fluid" src="img/181welcome/plsql3.png" />
                    <div class="carousel-caption">
                    <p>A complete PL/SQL IDE is included to allow for compiling, profiling, debugging, source controlling, and documenting of your database code.</p>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img class="img-fluid" src="img/181welcome/dba4.png" />
                    <div class="carousel-caption">
                    <p>The DBA panel provides database administrators access to Data Pump, RMAN, Security, Storage, and Performance management features.</p>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img class="img-fluid" src="img/181welcome/rtsm5.png" />
                    <div class="carousel-caption">
                    <p>Real Time SQL Monitoring reports, available with the Database Tuning Pack, provide rich performance tuning reports for your SQL statements.</p>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img class="img-fluid" src="img/181welcome/reports6.png" />
                    <div class="carousel-caption">
                    <p>Use the included data dictionary reports, or create your own user-defined reports.</p>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img class="img-fluid" src="img/181welcome/ords7.png" />
                    <div class="carousel-caption">
                    <p>Manage your Oracle REST Data Services for your REST enabled schemas.</p>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img class="img-fluid" src="img/181welcome/sqlcl8.png" />
                    <div class="carousel-caption">
                    <p>SQL Developer is also available as a command-line interface, SQLcl.</p>
                    </div>
                  </div>
                  <!-- 
          <div class="carousel-item active">
            <img src="img/screenshots/debugger_animated.gif" alt="debugger_animated">
          </div>
           -->
                </div>

                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#screenshots" data-slide="prev"> <span
                  class="carousel-control-prev-icon hover"></span>
                </a> <a class="carousel-control-next" href="#screenshots" data-slide="next"> <span
                  class="carousel-control-next-icon hover"></span>
                </a>
              </div>
              <!-- screenshots -->
            </div>
            <!-- card-body -->
          </div>
          <!-- card -->
        </div>
        <!-- col -->
      </div>
      <!-- row -->

    </div>

  <!-- Show on startup checkbox -->
  <div id="showOnStartup"></div>

  <!-- Bootstrap core JavaScript
    ***** N.B.: These will be replaced with local references for production *****
    ============================================================================= -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery-3.2.1.js"></script>
  <script src="js//bootstrap.js"></script>
  <!--  initialize tool tips -->
  <script>
    $(document).ready(function(){
      $('[data-toggle="tooltip"]').tooltip(); 
    });
  </script>

</body>
</html>
