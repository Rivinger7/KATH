function highlightLink(link) {
    // Xóa lớp 'active' từ tất cả các liên kết
    var navLinks = document.querySelectorAll('.list-unstyled .nav-link');
    navLinks.forEach(function (navLink) {
        navLink.classList.remove('active');
    });

    // Thêm lớp 'active' cho liên kết đã được click
    var anchor = link.querySelector('.nav-link');
    anchor.classList.add('active');
}
