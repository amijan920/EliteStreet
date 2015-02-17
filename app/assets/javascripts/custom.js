function createFlavorGraph(data) {
	$context = $("#svg-flavor");

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
      .attr("fill", "#bd4931");
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
  
  console.log($svg);
  var myScale = d3.scale.linear()
  	.domain([0, 100])
  	.range([0, 2 * Math.PI]);

	// var arc = d3.svg.arc()
 //  	.innerRadius(50)
 //  	.outerRadius(100)
 //  	.startAngle(0 + Math.PI/4*0)
 //  	.endAngle(2*Math.PI);

	// $svg.append("path")
 //    .attr("d", arc)
 //    .attr("stroke", "black")
 //    .attr("fill", "red");
 //    .attr("transform", "translate(300,200)");

	$svg.selectAll("path")
      .data(data)
    .enter()
    	.append("path")
    	.attr("d", function(d, i) {
    		return d3.svg.arc()
			  	.innerRadius(50)
			  	.outerRadius(100)
			  	.startAngle(0 + Math.PI/4*0)
			  	.endAngle(2*Math.PI);
    	})
      .attr("transform", "translate("+(width/2)+","+(height/2)+")");
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
}

$(document).ready(ready)
$(document).on('page:load', ready)