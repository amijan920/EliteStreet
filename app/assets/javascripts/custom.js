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

function createAllowanceGraph(data) {
	$context = $("#svg-allowance");

	var margin = {top:16, right:16, bottom:30, left:32};
	var height = $context.height() - margin.top - margin.bottom;
	var width = $context.width() - margin.right - margin.left;

	var $svg = d3.select("#svg-allowance")
		.attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

  var sum = 0;
  var fixed_allowances = [];
  var color_scale = ["#BD4932", "#DB9E36", "#FFD34E", "#105B63", "#2b8387"];

  for(var i = 0; i < 5; i++) {
  	fixed_allowances.push({
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
      .data(fixed_allowances)
    .enter()
    	.append("path")
    	.attr("d", arc)
    	.attr("fill", function(d){ return d.color; })
      .attr("transform", "translate("+(width/2)+","+(height/2 - 20)+")");

  $svg.selectAll(".pie-legend")
  		.data(fixed_allowances)
  	.enter()
  		.append("text")
  		.attr("class", "pie-legend")
  		.text(function(d) {
  			return d.name;
  		})
  		.attr("x", function(d, i) {
  			return (width/2 - (1.5*130)) + (i%3)*130 + 15//(width*4/6))
  		})
  		.attr("y", function(d, i) {
  			return height - 16 + 16 * Math.floor(i/3);//height/2 - (2.5*16) + i*16;
  		} );

  $svg.selectAll(".pie-legend-square")
  		.data(fixed_allowances)
  	.enter()
  		.append("rect")
  		.attr("class", "pie-legend-square")
  		.attr("fill", function(d) {
  			return d.color;
  		})
  		.attr("width", 10)
  		.attr("height", 10)
  		.attr("x", function(d, i) {
  			return (width/2 - (1.5*130)) + (i%3)*130 - 18 + 15//(width*4/6))
  		})
  		.attr("y", function(d, i) {
  			return height - 16 - 8 + 16 * Math.floor(i/3);//height/2 - (2.5*16) + i*16 - 8;
  		} );
 //      // .on('mouseover', tip.show)
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

function createWillingnessGraph(data) {
	$context = $("#svg-willingness");

	var margin = {top:16, right:16, bottom:30, left:32};
	var height = $context.height() - margin.top - margin.bottom;
	var width = $context.width() - margin.right - margin.left;

	var $svg = d3.select("#svg-willingness")
		.attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

  var sum = 0;
  var fixed_willingness = [];
  var color_scale = ["#BD4932", "#DB9E36", "#FFD34E", "#105B63", "#FFFAD5"];

  for(var i = 0; i < 4; i++) {
  	fixed_willingness.push({
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
      .data(fixed_willingness)
    .enter()
    	.append("path")
    	.attr("d", arc)
    	.attr("fill", function(d){ return d.color; })
      .attr("transform", "translate("+(width/2)+","+(height/2 - 20)+")");

  $svg.selectAll(".pie-legend")
  		.data(fixed_willingness)
  	.enter()
  		.append("text")
  		.attr("class", "pie-legend")
  		.text(function(d) {
  			return d.name;
  		})
  		.attr("x", function(d, i) {
  			return (width/2 - (1*150)) + (i%2)*150 + 55//(width*4/6))
  		})
  		.attr("y", function(d, i) {
  			return height - 16 + 16 * Math.floor(i/2);//height/2 - (2.5*16) + i*16;
  		} );

  $svg.selectAll(".pie-legend-square")
  		.data(fixed_willingness)
  	.enter()
  		.append("rect")
  		.attr("class", "pie-legend-square")
  		.attr("fill", function(d) {
  			return d.color;
  		})
  		.attr("width", 10)
  		.attr("height", 10)
  		.attr("x", function(d, i) {
  			return (width/2 - (1*150)) + (i%2)*150 - 18 + 55//(width*4/6))
  		})
  		.attr("y", function(d, i) {
  			return height - 16 - 8 + 16 * Math.floor(i/2);//height/2 - (2.5*16) + i*16 - 8;
  		} );
 //      // .on('mouseover', tip.show)
      // .on('mouseout', tip.hide)
}

function createWillingnessToPayGraph(data) {
	$context = $("#svg-willingness-to-pay");

	var margin = {top:16, right:16, bottom:30, left:32};
	var height = $context.height() - margin.top - margin.bottom;
	var width = $context.width() - margin.right - margin.left;

	var $svg = d3.select("#svg-willingness-to-pay")
		.attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

  var sum = 0;
  var fixed_willingness_to_pay = [];
  var color_scale = ["#cc695a", "#bd4931","#db9e34","#ffd24c","#105b63","#2b8387","#4e9a9a","#eabd82","#e2aa58","#bc6431"];

  //["#9e0142","#d53e4f","#f46d43","#fdae61","#fee08b","#e6f598","#abdda4","#66c2a5","#3288bd","#5e4fa2"];
  //["#a50026","#d73027","#f46d43","#fdae61","#fee08b","#d9ef8b","#a6d96a","#66bd63","#1a9850","#006837"];

  for(var i = 0; i < 10; i++) {
  	fixed_willingness_to_pay.push({
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
      .data(fixed_willingness_to_pay)
    .enter()
    	.append("path")
    	.attr("d", arc)
    	.attr("fill", function(d){ return d.color; })
      .attr("transform", "translate("+(width/2)+","+(height/2 - 20)+")");

  $svg.selectAll(".pie-legend")
  		.data(fixed_willingness_to_pay)
  	.enter()
  		.append("text")
  		.attr("class", "pie-legend")
  		.text(function(d) {
  			return d.name;
  		})
  		.attr("x", function(d, i) {
  			return (width/2 - (2*100)) + (i%4)*100 + 25//(width*4/6))
  		})
  		.attr("y", function(d, i) {
  			return height - 16 + 16 * Math.floor(i/4);//height/2 - (2.5*16) + i*16;
  		} );

  $svg.selectAll(".pie-legend-square")
  		.data(fixed_willingness_to_pay)
  	.enter()
  		.append("rect")
  		.attr("class", "pie-legend-square")
  		.attr("fill", function(d) {
  			return d.color;
  		})
  		.attr("width", 10)
  		.attr("height", 10)
  		.attr("x", function(d, i) {
  			return (width/2 - (2*100)) + (i%4)*100 - 18 + 25//(width*4/6))
  		})
  		.attr("y", function(d, i) {
  			return height - 16 - 8 + 16 * Math.floor(i/4);//height/2 - (2.5*16) + i*16 - 8;
  		} );
 //      // .on('mouseover', tip.show)
      // .on('mouseout', tip.hide)
}

function createCleanlinessGraph(data) {
	$context = $("#svg-cleanliness");

	var margin = {top:16, right:16, bottom:30, left:32};
	var height = $context.height() - margin.top - margin.bottom;
	var width = $context.width() - margin.right - margin.left;

	var $svg = d3.select("#svg-cleanliness")
		.attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

  var sum = 0;
  var fixed_cleanliness = [];
  var color_scale = ["#BD4932", "#DB9E36", "#FFD34E", "#105B63", "#FFFAD5"];

  for(var i = 0; i < 4; i++) {
  	fixed_cleanliness.push({
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
      .data(fixed_cleanliness)
    .enter()
    	.append("path")
    	.attr("d", arc)
    	.attr("fill", function(d){ return d.color; })
      .attr("transform", "translate("+(width/2)+","+(height/2 - 20)+")");

  $svg.selectAll(".pie-legend")
  		.data(fixed_cleanliness)
  	.enter()
  		.append("text")
  		.attr("class", "pie-legend")
  		.text(function(d) {
  			return d.name;
  		})
  		.attr("x", function(d, i) {
  			return (width/2 - (1*150)) + (i%2)*150 + 55//(width*4/6))
  		})
  		.attr("y", function(d, i) {
  			return height - 16 + 16 * Math.floor(i/2);//height/2 - (2.5*16) + i*16;
  		} );

  $svg.selectAll(".pie-legend-square")
  		.data(fixed_cleanliness)
  	.enter()
  		.append("rect")
  		.attr("class", "pie-legend-square")
  		.attr("fill", function(d) {
  			return d.color;
  		})
  		.attr("width", 10)
  		.attr("height", 10)
  		.attr("x", function(d, i) {
  			return (width/2 - (1*150)) + (i%2)*150 - 18 + 55//(width*4/6))
  		})
  		.attr("y", function(d, i) {
  			return height - 16 - 8 + 16 * Math.floor(i/2);//height/2 - (2.5*16) + i*16 - 8;
  		} );
 //      // .on('mouseover', tip.show)
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