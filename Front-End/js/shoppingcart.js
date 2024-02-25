function deleteProduct(event) {
    // Ngăn chặn hành vi mặc định của thẻ a
    event.preventDefault();
    
    // Lấy phần tử cha của thẻ a, tức là thẻ td
    var td = event.target.parentElement;
    
    // Lấy phần tử cha của thẻ td, tức là thẻ tr chứa sản phẩm
    var tr = td.parentElement;
    
    // Xóa thẻ tr khỏi bảng
    tr.remove();
}
