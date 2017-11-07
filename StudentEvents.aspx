<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="angular.min.js"></script>
    <script src="EventAngularJs.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity=
        "sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
    <link href="Styles.css" rel="stylesheet" />
</head>

<body ng-app="myModule">
     <div class="jumbotron">
       <h2>Student Information System : Faculty</h2>    
     </div>
    <div class="container">
    <div ng-controller="myController">
        <div class="row">
            <div class="col-md-6 mb-3">
        Rows to display : <input type="number" class="form-control" step="1" ng-model="rowCount" max="5" min="0" />
                </div>
        <div class="col-md-6 mb-3">
        Order By : <select ng-model="sortColumn" class="form-control">
                        <option value="name">Name ASC</option>
                        <option value="+dateOfBirth">Date of Birth ASC</option>
                        <option value="+gender">Gender ASC</option>
                        <option value="-salary">Salary DESC</option>
                   </select>   
            </div>         
        </div>
        <br /><br />
        <table class="table table-hover">
            <thead class="thead-dark">
                <tr>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Gender</th>
                    <th>Salary</th><!--(number filter)-->
                    <th>Salary</th><!--(currency filter)-->
                </tr>
            </thead>
            <tbody class="tbody-light">
                <tr ng-repeat="employee in employees | limitTo:rowCount | orderBy:sortColumn | filter:searchText">
                    <td> {{ employee.name | uppercase }} </td>
                    <td> {{ employee.dateOfBirth | date:"dd/MM/yyyy" }} </td>
                    <td> {{ employee.gender }} </td>
                    <td> {{ employee.salary | number:2 }} </td>
                    <td> {{ employee.salary | currency : "£" : 1 }} </td>
                </tr>
            </tbody>
        </table>
            <div class="row">
            <div class="col-md-6 mb-3">
            Search: <input type="text" class="form-control" placeholder="Search employees" ng-model="searchText" />    
            </div>
            </div>
        </div>
    </div>
</body>
</html>