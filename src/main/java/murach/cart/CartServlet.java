package murach.cart;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import murach.business.*;

public class CartServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		if (action == null)
			action = "cart";

		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}

		if (action.equals("add")) {
			String code = request.getParameter("productCode");
			Product product = getProduct(code);
			LineItem item = new LineItem(product, 1);
			cart.addItem(item);
			request.getRequestDispatcher("/cart.jsp").forward(request, response);

		} else if (action.equals("update")) {
			String code = request.getParameter("productCode");
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			Product product = getProduct(code);

			cart.updateItem(product, quantity);

			request.getRequestDispatcher("/cart.jsp").forward(request, response);
		} else if (action.equals("checkout")) {
			request.getRequestDispatcher("/checkout.jsp").forward(request, response);
		}
	}

	private Product getProduct(String code) {
		switch (code) {
		case "8601":
			return new Product("8601", "86 (the band) - True Life Songs and Pictures", 14.95);
		case "pf01":
			return new Product("pf01", "Paddlefoot - The first CD", 12.95);
		case "pf02":
			return new Product("pf02", "Paddlefoot - The second CD", 14.95);
		case "jr01":
			return new Product("jr01", "Joe Rut - Genuine Wood Grained Finish", 14.95);
		default:
			return null;
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
