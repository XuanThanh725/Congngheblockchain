<h2 align="center">
    <a href="https://dainam.edu.vn/vi/khoa-cong-nghe-thong-tin">
    🎓 Faculty of Information Technology (DaiNam University)
    </a>
</h2>
<h2 align="center">
    CHAT ROOM DÙNG UDP MULTICAST
</h2>
<div align="center">
    <p align="center">
        <img alt="AIoTLab Logo" width="170" src="https://github.com/user-attachments/assets/711a2cd8-7eb4-4dae-9d90-12c0a0a208a2" />
        <img alt="AIoTLab Logo" width="180" src="https://github.com/user-attachments/assets/dc2ef2b8-9a70-4cfa-9b4b-f6c2f25f1660" />
        <img alt="DaiNam University Logo" width="200" src="https://github.com/user-attachments/assets/77fe0fd1-2e55-4032-be3c-b1a705a1b574" />
    </p>

[![AIoTLab](https://img.shields.io/badge/AIoTLab-green?style=for-the-badge)](https://www.facebook.com/DNUAIoTLab)
[![Faculty of Information Technology](https://img.shields.io/badge/Faculty%20of%20Information%20Technology-blue?style=for-the-badge)](https://dainam.edu.vn/vi/khoa-cong-nghe-thong-tin)
[![DaiNam University](https://img.shields.io/badge/DaiNam%20University-orange?style=for-the-badge)](https://dainam.edu.vn)

</div>

---

<h2 align="center">
    🎓 Faculty of Information Technology (Dai Nam University)
</h2>

<h2 align="center">
    HỆ THỐNG TRUY XUẤT NGUỒN GỐC NÔNG SẢN ỨNG DỤNG BLOCKCHAIN ETHEREUM
</h2>

<div align="center">
    <p align="center">
        <img alt="DaiNam University Logo" width="200" src="https://github.com/user-attachments/assets/77fe0fd1-2e55-4032-be3c-b1a705a1b574" />
    </p>

[![Faculty of Information Technology](https://img.shields.io/badge/Faculty%20of%20Information%20Technology-blue?style=for-the-badge)](https://dainam.edu.vn/vi/khoa-cong-nghe-thong-tin)

[![DaiNam University](https://img.shields.io/badge/DaiNam%20University-orange?style=for-the-badge)](https://dainam.edu.vn)

</div>

---

# 📖 1. Giới thiệu hệ thống

Hệ thống truy xuất nguồn gốc nông sản là một ứng dụng web sử dụng công nghệ Blockchain Ethereum nhằm quản lý và xác thực thông tin sản phẩm nông nghiệp từ khâu sản xuất đến tiêu thụ.

Mục tiêu của hệ thống là giúp người tiêu dùng, doanh nghiệp và cơ quan quản lý có thể kiểm tra nguồn gốc sản phẩm một cách minh bạch, chính xác và không thể bị chỉnh sửa sau khi dữ liệu được lưu lên Blockchain.

Hệ thống hỗ trợ các chức năng:

* Thêm sản phẩm nông sản lên Blockchain.
* Lưu thông tin nguồn gốc và nhà sản xuất.
* Quản lý hình ảnh sản phẩm.
* Cập nhật lịch sử vận chuyển.
* Tra cứu thông tin sản phẩm theo ID.
* Xóa mềm sản phẩm (Soft Delete).
* Kết nối ví MetaMask để xác thực giao dịch.
* Thống kê số lượng sản phẩm đang hoạt động và đã xóa.

---

# 🔧 2. Công nghệ sử dụng

## 🌐 Frontend Web

* HTML5
* CSS3
* JavaScript

Chức năng:

* Xây dựng giao diện người dùng.
* Hiển thị thông tin sản phẩm.
* Hiển thị lịch sử vận chuyển.
* Kết nối Blockchain.

---

## ⛓ Blockchain Ethereum

* Solidity
* Ethereum Sepolia Testnet
* Remix IDE

Chức năng:

* Xây dựng Smart Contract.
* Lưu trữ dữ liệu sản phẩm.
* Lưu lịch sử vận chuyển.
* Đảm bảo tính minh bạch và bất biến của dữ liệu.

---

## 🦊 MetaMask

MetaMask được sử dụng để:

* Kết nối ví Ethereum.
* Xác thực người dùng.
* Ký giao dịch Blockchain.
* Thanh toán phí Gas trên mạng Ethereum.

---

## 🔗 Ethers.js

Thư viện Ethers.js được sử dụng để:

* Kết nối Website với Smart Contract.
* Gửi giao dịch lên Blockchain.
* Đọc dữ liệu từ Blockchain.
* Quản lý ví Ethereum.

---

## 🖼 Lưu trữ hình ảnh

Hệ thống hỗ trợ:

* Upload ảnh từ máy tính.
* Lưu đường dẫn ảnh lên Blockchain.
* Hiển thị ảnh sản phẩm khi tra cứu.

Mô hình lưu trữ:

```text
Ảnh sản phẩm
↓
Cloudinary / Firebase Storage
↓
Link ảnh
↓
Blockchain Ethereum
```

---

# 🚀 3. Chức năng hệ thống

## 📦 Quản lý sản phẩm

Người dùng có thể:

* Thêm sản phẩm mới.
* Xem thông tin sản phẩm.
* Xóa sản phẩm.
* Cập nhật trạng thái vận chuyển.

Thông tin lưu trữ:

* ID sản phẩm
* Tên sản phẩm
* Nơi sản xuất
* Ngày thu hoạch
* Nhà sản xuất
* Hình ảnh sản phẩm

---

## 🚚 Quản lý vận chuyển

Hệ thống cho phép cập nhật:

* Đã thu hoạch
* Đã đóng gói
* Đã đến kho
* Đang vận chuyển
* Đã giao hàng

Mỗi lần cập nhật sẽ lưu:

* Trạng thái
* Địa điểm
* Thời gian

Toàn bộ lịch sử được lưu trên Blockchain.

---

## 🔍 Truy xuất nguồn gốc

Người dùng nhập ID sản phẩm.

Website sẽ:

```text
Website
↓
Smart Contract
↓
Blockchain
↓
Thông tin sản phẩm
```

Sau đó hiển thị:

* Thông tin nguồn gốc
* Nhà sản xuất
* Ảnh sản phẩm
* Lịch sử vận chuyển

---

## 📊 Dashboard thống kê

Hệ thống cung cấp:

* Tổng số sản phẩm
* Sản phẩm đang hoạt động
* Sản phẩm đã xóa

Dữ liệu được lấy trực tiếp từ Smart Contract.

---

# 📝 4. Cài đặt và chạy hệ thống

## Bước 1. Chuẩn bị môi trường

Cài đặt:

* Google Chrome
* MetaMask Extension
* Visual Studio Code
* Live Server
* Remix IDE

---

## Bước 2. Triển khai Smart Contract

Mở Remix IDE:

* Compile Smart Contract bằng Solidity.
* Deploy lên mạng Ethereum Sepolia.
* Copy Contract Address.
* Copy ABI.

---

## Bước 3. Cấu hình Website

Mở file:

```text
index.html
```

Cập nhật:

```javascript
const contractAddress = "ĐỊA_CHỈ_CONTRACT";
```

và

```javascript
const contractABI = [...];
```

---

## Bước 4. Chạy Website

Mở bằng Live Server:

```text
http://127.0.0.1:5500
```

Sau đó:

* Kết nối MetaMask.
* Chuyển mạng sang Sepolia.
* Thêm sản phẩm.
* Tra cứu dữ liệu Blockchain.

---

# 👨‍🏫 Giảng viên hướng dẫn

ThS. Trần Đăng Công

---

# 👨‍🎓 Sinh viên thực hiện

* Họ và tên: ..................................
* Lớp: .........................................
* Khoa Công nghệ Thông tin
* Trường Đại học Đại Nam

---

# 📌 Kết luận

Đề tài đã xây dựng thành công hệ thống truy xuất nguồn gốc nông sản ứng dụng Blockchain Ethereum.

Hệ thống cho phép lưu trữ và quản lý dữ liệu sản phẩm một cách minh bạch, an toàn và không thể chỉnh sửa trái phép. Người dùng có thể dễ dàng kiểm tra nguồn gốc sản phẩm, theo dõi lịch sử vận chuyển và xác thực thông tin thông qua Blockchain.

