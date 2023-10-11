////
////  main.swift
////  btvn3
////
////  Created by Phạm Hồng Sơn on 10/10/2023.
////
//
import Foundation



var quanlisv1 = quanlisv()
quanlisv1.themsv(ten: "son", masv: "0203166", diemToan: 9, diemLi: 9, diemHoa: 9)
quanlisv1.capnhatsinhvien(newten: "son1", masv: "0203166", newdiemToan: 8, newdiemLi: 8, newdiemHoa: 8)
quanlisv1.themsv(ten: "huyen", masv: "07tr", diemToan: 8, diemLi: 9, diemHoa: 9)
quanlisv1.themsv(ten: "thanh", masv: "th34", diemToan: 6, diemLi: 7, diemHoa: 8)
quanlisv1.themsv(ten: "Binh", masv: "bI45", diemToan: 9, diemLi: 8, diemHoa: 9)
let result = quanlisv1.timkiem(masv: "bi45")
if result.isEmpty{
    print("khong tim thay san pham")
}else{
    print("ket qua tim kiem")
    for sinhvien in result{
        print(sinhvien)
    }
}
quanlisv1.hienthi()


//------------------------------------

////bai2

var sanpham = Quanli()
sanpham.themsp(ten: "kem", masp: "543gf", giaban: 4, soluong: 34)
sanpham.themsp(ten: "keo", masp: "k543", giaban: 54, soluong: 45)
sanpham.themsp(ten: "daugoi", masp: "dau234", giaban: 54, soluong: 43)
sanpham.capnhat(newten: "daugoi1", masp: "dau234", newgiaban: 56, newsoluong: 44)

let ketqua = sanpham.timkiem(masp: "543gf")
if ketqua.isEmpty{
    print("khog tim thay")
}else{
    print("danh sach ket qua")
    for sanpham in ketqua{
        print("Ten san pham: \(sanpham.tensp!!), Masp: \(sanpham.masp!!), Gia ban: \(sanpham.giaban!!), So luong: \(sanpham.soluong!!)")
    }
}


print("danh sach hien thi")
sanpham.hienthi()
