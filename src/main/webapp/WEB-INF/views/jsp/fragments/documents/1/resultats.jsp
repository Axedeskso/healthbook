<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
    <div class="col-xs-12">
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a data-toggle="tab" href="#res1">Biochimie</a>
            </li>
            <li class="nav-item">
                <a data-toggle="tab" href="#res2">Hématologie</a>
            </li>
            <li class="nav-item">
                <a data-toggle="tab" href="#res3">Cybactériologie urinaire</a>
            </li>
        </ul>
    </div>
</div>
<div class="tab-pane fade in" id="res1">
    <div class="row">
        <div class="col-xs-12">
            <div class="row">Electrophorèse des protéines sériques</div>
            <div class="row">
                <div class="col-xs-12">
                    <table class="table table-sm">
                        <thead>
                            <tr>
                                <th>Protéinogramme</th>
                                <th>04/01/2010 13:19:33</th>
                                <th>Valeurs de référence</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Protéines totales (g/L)</td>
                                <td>75,0</td>
                                <td>63,00 - 83,00</td>
                            </tr>
                            <tr>
                                <td>Albumine (%)</td>
                                <td>60,0</td>
                                <td>40 - 80</td>
                            </tr>
                            <tr>
                                <td>Albumine (g/L)</td>
                                <td>45,0</td>
                                <td>36,00 - 48,00</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <!--<canvas id="lineChart"></canvas>-->
                    <div id="div_chart" class="chart"></div>
                </div>
            </div>
            <div class="row">Autres examens de biochimie sanguine</div>
            <div class="row">
                <div class="col-xs-12">
                    <table class="table table-sm">
                        <thead>
                            <tr>
                                <th></th>
                                <th></th>
                                <th>Interpretation</th>
                                <th>Référence</th>
                                <th>12/09/2009 08:15</th>
                                <th>03/01/2009 08:12</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Urée sanguine</td>
                                <td>10.02 mmol/L (0.60 g/L)</td>
                                <td>Haut, croissant</td>
                                <td>[3.5 - 8.0] mmol/L</td>
                                <td>8.5 mmol/L (0.51 g/L)</td>
                                <td>7.9 mmol/L (0.48 g/L)</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="tab-pane fade" id="res2">

</div>
<div class="tab-pane fade" id="res3">

</div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {packages: ['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = new google.visualization.arrayToDataTable([
            ['X', 'Y'],
            ['0', 10],
            ['15', 0],
            ['30', 4000],
            ['50', 10],
            ['73', 50],
            ['74', 0],
            ['75', 50],
            ['100', 100],
            ['110', 400],
            ['123', 0],
            ['124', 0],
            ['125', 150],
            ['130', 500],
            ['148', 100],
            ['149', 0],
            ['150', 100],
            ['180', 150],
            ['200', 100],
            ['250', 0],
            ['300', 0],
            ['400', 0],
            ['500', 0]
        ]);
        var options = {
            title: 'ELECTROPHORESE',
            width: 700,
            height: 300,
            legend: {position: 'none'}
        };

        var chart = new google.visualization.LineChart(document.getElementById('div_chart'));

        chart.draw(data, options);
    }
</script>
