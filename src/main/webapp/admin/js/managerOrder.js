async function PrintOrder(orderId) {
    try {
        const response = await fetch(`http://localhost:8080/WebMyPham__/PrintOrder?id=${encodeURIComponent(orderId)}`);
        if (!response.ok) {
            throw new Error("Không thể tải danh sách thương hiệu.");
        }

        // Assuming the servlet response contains HTML
        const html = await response.text();
        document.open();
        document.write(html);
        document.close();
    } catch (error) {
        console.error('Error:', error);
        alert('There was an error processing the order. Please try again later.');
    }
}
