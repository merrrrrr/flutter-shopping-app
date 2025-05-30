class Product {
	final String productId;
	final String name;
	final String description;
	final String imageUrl;
	final double price;
	final int stockQuantity;
	final String category;
	final DateTime createdAt;

	Product({
		required this.productId,
		required this.name,
		required this.description,
		required this.imageUrl,
		required this.price,
		required this.stockQuantity,
		required this.category,
		required this.createdAt,
	});

	
}