//
//  bai2.swift
//  btvn3
//
//  Created by Phạm Hồng Sơn on 11/10/2023.
//

import Foundation
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



