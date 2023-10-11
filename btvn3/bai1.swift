//
//  bai1.swift
//  btvn3
//
//  Created by Phạm Hồng Sơn on 11/10/2023.
//

import Foundation
struct quanlidiemthi{
    var ten:String
    var masv:String
    var diemToan:Double
    var diemLi:Double
    var diemHoa:Double
    init(ten: String, masv: String, diemToan: Double, diemLi: Double, diemHoa: Double) {
        self.ten = ten
        self.masv = masv
        self.diemToan = diemToan
        self.diemLi = diemLi
        self.diemHoa = diemHoa
    }
}
struct quanlisv{
    var sinhviens = [quanlidiemthi]()
    //themsv
    mutating func themsv(ten: String, masv: String, diemToan: Double, diemLi: Double, diemHoa: Double){
        var sinhvien = quanlidiemthi(ten: ten, masv: masv, diemToan: diemToan, diemLi: diemLi, diemHoa: diemHoa)
        sinhviens.append(sinhvien)
    }

    //capnhat
    mutating func capnhatsinhvien(newten: String, masv: String, newdiemToan: Double, newdiemLi: Double, newdiemHoa: Double){
        if let index = sinhviens.firstIndex(where: { sinhvien in
            sinhvien.masv == masv
        }){
            sinhviens[index].ten = newten
            sinhviens[index].diemHoa = newdiemHoa
            sinhviens[index].diemLi = newdiemLi
            sinhviens[index].diemToan = newdiemToan
        }

    }
    //hienthi
    func hienthi(){
        sinhviens.map { sinhvien in
            print(sinhvien)
        }
    }

    //timkiem
    func timkiem(masv:String) -> [quanlidiemthi]{
        return sinhviens.filter { sinhvien in
            sinhvien.masv.lowercased().contains(masv.lowercased())
        }
    }


}

