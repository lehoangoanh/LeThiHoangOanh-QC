-- CÂU 1:
SELECT DeTai.madt, DeTai.tendt, COUNT(masv) AS SLSV
FROM DeTai
JOIN HuongDan
ON DeTai.madt = HuongDan.madt
GROUP BY madt, tendt
HAVING SLSV > 2;

-- CÂU 2:
SELECT madt, tendt
FROM DeTai
WHERE kinhphi = (SELECT MAX(kinhphi) FROM DeTai);

-- CÂU 3:
SELECT Khoa.tenkhoa, COUNT(masv) AS SLSV
FROM Khoa
JOIN SinhVien
ON Khoa.makhoa = SinhVien.makhoa
GROUP BY tenkhoa;