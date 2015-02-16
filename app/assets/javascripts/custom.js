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
}

$(document).ready(ready)
$(document).on('page:load', ready)