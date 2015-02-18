function createPieChart(selector, data, n, colorScale, legendWidth, legendXOffset, legendYOffset, legendColumns) {
	$context = $(selector);

	var margin = {top:16, right:16, bottom:30, left:32};
	var height = $context.height() - margin.top - margin.bottom;
	var width = $context.width() - margin.right - margin.left;

	var $svg = d3.select(selector)
		.attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

  var sum = 0;
  var fixed_data = [];
  var color_scale = colorScale;

  for(var i = 0; i < n; i++) {
  	fixed_data.push({
  		range:[sum, (sum+data[i].quantity)],
  		name:data[i].name,
  		color:color_scale[i]
  	});
  	sum += data[i].quantity;
  }

  var scale = d3.scale.linear()
  	.domain([0, sum])
  	.range([0, 2 * Math.PI]);

	var arc = d3.svg.arc()
  	.innerRadius(40)
  	.outerRadius(80)
  	.startAngle(function(d) {
  		return scale(d.range[0]);
  	})
  	.endAngle(function(d) {
  		return scale(d.range[1]);
  	});

	$svg.selectAll("path")
      .data(fixed_data)
    .enter()
    	.append("path")
    	.attr("d", arc)
    	.attr("fill", function(d){ return d.color; })
      .attr("transform", "translate("+(width/2)+","+(height/2 - 20)+")");

  $svg.selectAll(".pie-legend")
  		.data(fixed_data)
  	.enter()
  		.append("text")
  		.attr("class", "pie-legend")
  		.text(function(d) {
  			return d.name;
  		})
  		.attr("x", function(d, i) {
  			return (width/2 - (legendColumns/2*legendWidth)) + (i%legendColumns)*legendWidth + legendXOffset//(width*4/6))
  		})
  		.attr("y", function(d, i) {
  			return height + 16 * Math.floor(i/legendColumns) - 16;//height/2 - (2.5*16) + i*16;
  		} );

  $svg.selectAll(".pie-legend-square")
  		.data(fixed_data)
  	.enter()
  		.append("rect")
  		.attr("class", "pie-legend-square")
  		.attr("fill", function(d) {
  			return d.color;
  		})
  		.attr("width", 10)
  		.attr("height", 10)
  		.attr("x", function(d, i) {
  			return (width/2 - (legendColumns/2*legendWidth)) + (i%legendColumns)*legendWidth - 18 + legendXOffset//(width*4/6))
  		})
  		.attr("y", function(d, i) {
  			return height - 24 + 16 * Math.floor(i/legendColumns);//height/2 - (2.5*16) + i*16 - 8;
  		} );
}

function createBarChart() {
	
}

function createAllowanceGraph(data) {
	createPieChart("#svg-allowance",
		data, 5,
		["#BD4932", "#DB9E36", "#FFD34E", "#105B63", "#2b8387"],
		130, 15, 0, 3);
}

function createWillingnessGraph(data) {
	createPieChart("#svg-willingness",
		data, 4,
		["#BD4932", "#DB9E36", "#FFD34E", "#105B63", "#FFFAD5"],
		150, 55, 0, 2);
	$context = $("#svg-willingness");
}

function createWillingnessToPayGraph(data) {
	createPieChart("#svg-willingness-to-pay",
		data, 10,
		["#cc695a", "#bd4931","#db9e34","#ffd24c","#105b63","#2b8387","#4e9a9a","#eabd82","#e2aa58","#bc6431"],
		100, 25, 0, 4);
}

function createCleanlinessGraph(data) {
	createPieChart("#svg-cleanliness",
		data, 4,
		["#BD4932", "#DB9E36", "#FFD34E", "#105B63"],
		150, 55, 0, 2);
}

function createFlavorGraph(data) {
	$context = $("#svg-flavor");

	data.sort(function(a, b) {
		return a.quantity < b.quantity;
	});

	var margin = {top:16, right:16, bottom:30, left:32};
	var height = $context.height() - margin.top - margin.bottom;
	var width = $context.width() - margin.right - margin.left;

	// var formatPercent = d3.format(".0%");
	var x = d3.scale.ordinal()
	    .rangeRoundBands([0, width], .1);
	var y = d3.scale.linear()
	    .range([height, 0]);
	var xAxis = d3.svg.axis()
	    .scale(x)
	    .orient("bottom");

	var yAxis = d3.svg.axis()
	    .scale(y)
	    .orient("left")
	    // .tickFormat(formatPercent);

	var $svg = d3.select("#svg-flavor")
		.attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

  var color_scale = ["#BD4932", "#DB9E36", "#105B63", "#FFD34E", "#2b8387"];

	// var tip = d3.tip()
	//   .attr('class', 'd3-tip')
	//   .offset([-10, 0])
	//   .html(function(d) {
	//     return "<strong>Frequency:</strong> <span style='color:red'>" + d.frequency + "</span>";
	//   })


 	x.domain(data.map(function(d) { return d.name; }));
  y.domain([0, d3.max(data, function(d) { return d.quantity; })]);

  $svg.append("g")
      .attr("class", "x axis")
      .attr("transform", "translate(0," + height + ")")
      .call(xAxis);

  $svg.append("g")
      .attr("class", "y axis")
      .call(yAxis)
    .append("text")
      .attr("transform", "rotate(-90)")
      .attr("y", 6)
      .attr("dy", ".71em")
      .style("text-anchor", "end");
      // .text("Count");

	$svg.selectAll("rect")
      .data(data)
    .enter()
    	.append("rect")
      .attr("class", "bar")
      .attr("x", function(d, i) { return x(d.name); })
      .attr("width", 135)
      .attr("y", function(d, i) { return y(d.quantity); })
      .attr("height", function(d) { return height - y(d.quantity); })
      .attr("fill", function(d, i){return color_scale[i]});
      // .on('mouseover', tip.show)
      // .on('mouseout', tip.hide)
}

function createPlacesGraph(data) {
	$context = $("#svg-places");

	var margin = {top:16, right:16, bottom:30, left:32};
	var height = $context.height() - margin.top - margin.bottom;
	var width = $context.width() - margin.right - margin.left;

	// var formatPercent = d3.format(".0%");
	var x = d3.scale.ordinal()
	    .rangeRoundBands([0, width], .1);
	var y = d3.scale.linear()
	    .range([height, 0]);
	var xAxis = d3.svg.axis()
	    .scale(x)
	    .orient("bottom");

	var yAxis = d3.svg.axis()
	    .scale(y)
	    .orient("left")
	    // .tickFormat(formatPercent);

	var $svg = d3.select("#svg-places")
		.attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

  var color_scale = ["#cc695a", "#bd4931","#db9e34","#ffd24c","#105b63","#2b8387","#4e9a9a","#eabd82","#e2aa58","#bc6431"];

	// var tip = d3.tip()
	//   .attr('class', 'd3-tip')
	//   .offset([-10, 0])
	//   .html(function(d) {
	//     return "<strong>Frequency:</strong> <span style='color:red'>" + d.frequency + "</span>";
	//   })

	data.sort(function(a, b) {
		return a.quantity < b.quantity;
	});


 	x.domain(data.map(function(d) { return d.name; }));
  y.domain([0, d3.max(data, function(d) { return d.quantity; })]);

  $svg.append("g")
      .attr("class", "x axis")
      .attr("transform", "translate(0," + height + ")")
      .call(xAxis);

  $svg.append("g")
      .attr("class", "y axis")
      .call(yAxis)
    .append("text")
      .attr("transform", "rotate(-90)")
      .attr("y", 6)
      .attr("dy", ".71em")
      .style("text-anchor", "end");
      // .text("Count");

	$svg.selectAll("rect")
      .data(data)
    .enter()
    	.append("rect")
      .attr("class", "bar")
      .attr("x", function(d, i) { return x(d.name) + 5; })
      .attr("width", 40)
      .attr("y", function(d, i) { return y(d.quantity); })
      .attr("height", function(d) { return height - y(d.quantity); })
      .attr("fill", function(d, i){return color_scale[i+1]});
      // .on('mouseover', tip.show)
      // .on('mouseout', tip.hide)
}


function ready() {
	$(".details").on('click', function(e) {
		var i = $(this).data("dept");
		var j = $(this).data("index");

		$('#init-modal').find(".modal-title").html(kpi_list[i][j].measure);

		var table = "<table class=\"table\">";
		table += "<tr><th>Initiative</th><th>Operating Costs</th><th>Capital Costs</th></tr>";

		for(var k = 0; k < initiatives[i][j].length; k++) {
			table+= "<tr><td>" + initiatives[i][j][k].name + "</td><td class=\"number-cell\">" + initiatives[i][j][k].operating_cost + "</td><td class=\"number-cell\">" + initiatives[i][j][k].capital_cost + "</td></tr>";
		}

		table += "</table>";

		$('#init-modal').find(".modal-body .modal-table").html(table);

		$('#init-modal').find(".modal-body .good-cell.val").text(kpi_list[i][j].good);
		$('#init-modal').find(".modal-body .warning-cell.val").text(kpi_list[i][j].warning);
		$('#init-modal').find(".modal-body .bad-cell.val").text(kpi_list[i][j].bad);

		$('#init-modal').modal('show');

		e.stopPropagation();
	});

	$(".kpi-entry").on('click', function(e) {
		var i = $(this).data("dept");
		var j = $(this).data("index");

		$("#kpi-"+i).find(".active-name").text(kpi_list[i][j].measure);
		$("#kpi-"+i).find(".kpi-entry").each(function(e) {
			$(this).toggleClass("active", false);
		})

		$("#kpi-"+i).find(".active-image").each(function(e) {
			if(kpi_list[i][j].good_m == 4) {
				if(rands[i][j] >= kpi_list[i][j].good_d) {
					$(this).attr("src","assets/graph-mock-good.png");
				}
				else if(rands[i][j] >= kpi_list[i][j].warning_d) {
					$(this).attr("src","assets/graph-mock-warning.png");
				}
				else{
					$(this).attr("src","assets/graph-mock-bad.png");
				}
			}
			else {
				if(rands[i][j] <= kpi_list[i][j].good_d) {
					$(this).attr("src","assets/graph-mock-good.png");
				}
				else if(rands[i][j] <= kpi_list[i][j].warning_d) {
					$(this).attr("src","assets/graph-mock-warning.png");
				}
				else{
					$(this).attr("src","assets/graph-mock-bad.png");
				}
			}
		})

		$(this).toggleClass("active", true);
	});

	if(flavors)
		createFlavorGraph(flavors);

	if(allowances)
		createAllowanceGraph(allowances);

	if(places)
		createPlacesGraph(places);

	if(willingness)
		createWillingnessGraph(willingness);

	if(willingnessToPay)
		createWillingnessToPayGraph(willingnessToPay);

	if(cleanliness)
		createCleanlinessGraph(cleanliness);
}

$(document).ready(ready)
$(document).on('page:load', ready)