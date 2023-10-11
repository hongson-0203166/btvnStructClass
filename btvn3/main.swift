////
////  main.swift
////  btvn3
////
////  Created by Phạm Hồng Sơn on 10/10/2023.
////
//
import Foundation
//
//
//struct quanlidiemthi{
//    var ten:String
//    var masv:String
//    var diemToan:Double
//    var diemLi:Double
//    var diemHoa:Double
//    init(ten: String, masv: String, diemToan: Double, diemLi: Double, diemHoa: Double) {
//        self.ten = ten
//        self.masv = masv
//        self.diemToan = diemToan
//        self.diemLi = diemLi
//        self.diemHoa = diemHoa
//    }
//}
//struct quanlisv{
//    var sinhviens = [quanlidiemthi]()
//    //themsv
//    mutating func themsv(ten: String, masv: String, diemToan: Double, diemLi: Double, diemHoa: Double){
//        var sinhvien = quanlidiemthi(ten: ten, masv: masv, diemToan: diemToan, diemLi: diemLi, diemHoa: diemHoa)
//        sinhviens.append(sinhvien)
//    }
//    
//    //capnhat
//    mutating func capnhatsinhvien(newten: String, masv: String, newdiemToan: Double, newdiemLi: Double, newdiemHoa: Double){
//        if let index = sinhviens.firstIndex(where: { sinhvien in
//            sinhvien.masv == masv
//        }){
//            sinhviens[index].ten = newten
//            sinhviens[index].diemHoa = newdiemHoa
//            sinhviens[index].diemLi = newdiemLi
//            sinhviens[index].diemToan = newdiemToan
//        }
//        
//    }
//    //hienthi
//    func hienthi(){
//        sinhviens.map { sinhvien in
//            print(sinhvien)
//        }
//    }
//    
//    //timkiem
//    func timkiem(masv:String) -> [quanlidiemthi]{
//        return sinhviens.filter { sinhvien in
//            sinhvien.masv.lowercased().contains(masv.lowercased())
//        }
//    }
//    
//    
//}
//
//var quanlisv1 = quanlisv()
//quanlisv1.themsv(ten: "son", masv: "0203166", diemToan: 9, diemLi: 9, diemHoa: 9)
//quanlisv1.capnhatsinhvien(newten: "son1", masv: "0203166", newdiemToan: 8, newdiemLi: 8, newdiemHoa: 8)
//quanlisv1.themsv(ten: "huyen", masv: "07tr", diemToan: 8, diemLi: 9, diemHoa: 9)
//quanlisv1.themsv(ten: "thanh", masv: "th34", diemToan: 6, diemLi: 7, diemHoa: 8)
//quanlisv1.themsv(ten: "Binh", masv: "bI45", diemToan: 9, diemLi: 8, diemHoa: 9)
//let result = quanlisv1.timkiem(masv: "bi45")
//if result.isEmpty{
//    print("khong tim thay san pham")
//}else{
//    print("ket qua tim kiem")
//    for sinhvien in result{
//        print(sinhvien)
//    }
//}
//quanlisv1.hienthi()
//
//
//
//
////bai2

class quanliSanPham{
    var tensp:String?? = ""
    var masp:String?? = ""
    var giaban:Double?? = 0
    var soluong:Int?? = 0
    init(){
    }
    init(tensp: String, masp: String, giaban: Double, soluong: Int) {
        self.tensp = tensp
        self.masp = masp
        self.giaban = giaban
        self.soluong = soluong
    }
    
}

class Quanli{
    var Quanli = [quanliSanPham]()
    //themsp
    func themsp(ten:String,masp:String,giaban:Double,soluong:Int){
        var sanpham = quanliSanPham(tensp: ten, masp: masp, giaban: giaban, soluong: soluong)
        Quanli.append(sanpham)
    }
    
   // hienthi
    func hienthi(){
        Quanli.map { sanpham in
            print("Ten san pham: \(sanpham.tensp!!), Masp: \(sanpham.masp!!), Gia ban: \(sanpham.giaban!!), So luong: \(sanpham.soluong!!)")
        }
    }
    
    //capnhat
    func capnhat(newten:String,masp:String,newgiaban:Double,newsoluong:Int){
        if let index = Quanli.firstIndex(where: { sanpham in
            sanpham.masp == masp
        }){
            Quanli[index].tensp = newten
            Quanli[index].giaban = newgiaban
            Quanli[index].soluong = newsoluong
        }
    }
    
    //timkiem
    func timkiem(masp:String) ->[quanliSanPham]{
        return Quanli.filter { sanpham in
            sanpham.masp!!.lowercased().contains(masp.lowercased())
        }
    }
}
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


