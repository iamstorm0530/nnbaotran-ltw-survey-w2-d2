package murach.business;

import java.io.Serializable;
import java.util.ArrayList;

public class Cart implements Serializable {
	private ArrayList<LineItem> items;

	public Cart() {
		items = new ArrayList<>();
	}

	public ArrayList<LineItem> getItems() {
		return items;
	}

	public void addItem(LineItem item) {
		String code = item.getProduct().getCode();
		for (LineItem li : items) {
			if (li.getProduct().getCode().equals(code)) {
				li.setQuantity(li.getQuantity() + item.getQuantity());
				return;
			}
		}
		items.add(item);
	}

	public void removeItem(Product product) {
		items.removeIf(li -> li.getProduct().getCode().equals(product.getCode()));
	}

	public void updateItem(Product product, int quantity) {
		for (LineItem li : items) {
			if (li.getProduct().getCode().equals(product.getCode())) {
				if (quantity <= 0) {
					items.remove(li);
				} else {
					li.setQuantity(quantity);
				}
				return;
			}
		}
		if (quantity > 0) {
			items.add(new LineItem(product, quantity));
		}
	}

}
