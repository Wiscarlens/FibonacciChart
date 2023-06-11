<%@ page import="com.fibochart.jsp.fibonacci" %>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Fibonacci Graph</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>
<body>

	<div class="main-container">
		<div class="year-stats">
		<table class="month-group">
      <tr>
          <th>Algorithm</th>
          <th>1</th>
          <th>2</th>
          <th>3</th>
          <th>4</th>
          <th>5</th>
          <th>6</th>
          <th>7</th>
          <th>7</th>
          <th>8</th>
          <th>9</th>
          <th>10</th>
      </tr>
      <tr>
      <td>Recursive</td>
 
	<%=fibonacci.fibonacciIterativeDeux(10) %>
          
          <!-- <td>Result</td>
          <td>Result</td>
          <td>Result</td>
          <td>Result</td>
          <td>Result</td> -->
      </tr>
      <tr>
          <td>Iterative</td>
          <%=fibonacci.fibonacciIterativeDeux(10) %>
         <!--  <td>Result</td>
          <td>Result</td>
          <td>Result</td>
          <td>Result</td>
          <td>Result</td> -->
      </tr>
  </table>
		
		
		
		</div>

		<div class="stats-info">
			<div class="graph-container">
				<div class="percent">
					<svg viewBox="0 0 36 36" class="circular-chart">
						<path class="circle" stroke-dasharray="100, 100" d="M18 2.0845
      a 15.9155 15.9155 0 0 1 0 31.831
      a 15.9155 15.9155 0 0 1 0 -31.831" />
						<path class="circle" stroke-dasharray="85, 100" d="M18 2.0845
      a 15.9155 15.9155 0 0 1 0 31.831
      a 15.9155 15.9155 0 0 1 0 -31.831" />
						<path class="circle" stroke-dasharray="60, 100" d="M18 2.0845
      a 15.9155 15.9155 0 0 1 0 31.831
      a 15.9155 15.9155 0 0 1 0 -31.831" />
						<path class="circle" stroke-dasharray="30, 100" d="M18 2.0845
      a 15.9155 15.9155 0 0 1 0 31.831
      a 15.9155 15.9155 0 0 1 0 -31.831" />
					</svg>
				</div>
				<p>Max Time <%
								if (fibonacci.timeRecursive(10) > fibonacci.timeIterative(10)) {
            						out.println(fibonacci.timeRecursive(10));
       							 } else {
            						out.println(fibonacci.timeIterative(10));
        						}

								%>ns</p>
			</div>

			<div class="info">
				<p>Algorithm<br /><span>Fibonacci Max Time</span></p>
				<p>Recursive <span><%=fibonacci.timeRecursive(10) %>ns</span></p>
				<p>Iterative <span><%=fibonacci.timeIterative(10) %>ns</span></p>
			</div>
		</div>
	</div>
</body>




</body>
</html>
