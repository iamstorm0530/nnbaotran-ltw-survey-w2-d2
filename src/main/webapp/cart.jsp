<%@ page import="murach.business.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="styles/main.css">
</head>
<body>
	<h2>Your cart</h2>

	<%
	Cart cart = (Cart) session.getAttribute("cart");
	if (cart == null)
		cart = new Cart();
	List<LineItem> items = cart.getItems();
	%>

	<table border="1" cellpadding="5">
		<tr>
			<th>Quantity</th>
			<th>Description</th>
			<th>Price</th>
			<th>Amount</th>
			<th></th>
		</tr>
		<%
		for (LineItem item : items) {
			Product p = item.getProduct();
		%>
		<tr>
			<td>
				<form action="cart" method="post">
					<input type="hidden" name="action" value="update"> <input
						type="hidden" name="productCode" value="<%=p.getCode()%>">
					<input type="text" name="quantity" value="<%=item.getQuantity()%>"
						size="2"> <input type="submit" value="Update">
				</form>
			</td>
			<td><%=p.getDescription()%></td>
			<td>$<%=p.getPrice()%></td>
			<td>$<%=item.getTotal()%></td>
			<td><a
				href="cart?action=update&productCode=<%=p.getCode()%>&quantity=0">Remove
					Item</a></td>
		</tr>
		<%
		}
		%>
	</table>

	<p>To change the quantity, enter the new quantity and click on the
		Update button.</p>

	<form action="index.jsp">
		<input type="submit" value="Continue Shopping">
	</form>

	<form action="cart" method="post">
		<input type="hidden" name="action" value="checkout"> <input
			type="submit" value="Checkout">
	</form>
</body>
</html>

