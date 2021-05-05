*Instalar psecta y moremata
clear
import excel "C:\Users\SANTIAGO-PC\Downloads\ACP\Cluster y ACP\BASEACP.xlsx", sheet("Hoja1") firstrow clear
*use ps2009
egen id=group(Pas)
xtset id Ao
*gen lnpgdp=ln(pgdp)

rename V1 T1
rename V2 T2
rename V3 T3
rename V4 T4
rename V5 T5

*logtreg lnpgdp,  kq(0.333)


psecta T1, name(Pas) kq(0.333) gen(club) noprt
mat b=e(bm)
mat t=e(tm)
mat result1=(b \ t)
matlist result1, border(rows) rowtitle("log(t)") format(%9.3f) left(4)


scheckmerge T1,  kq(0.333) club(club) mdiv
mat b=e(bm)
mat t=e(tm)
mat result2=(b \ t)
matlist result2, border(rows) rowtitle("log(t)") format(%9.3f) left(4)

imergeclub T1, name(Pas) kq(0.333) club(club) gen(finalclub1) noprt
mat b=e(bm)
mat t=e(tm)
mat result3=(b \ t)
matlist result3, border(rows) rowtitle("log(t)") format(%9.3f) left(4)

****

psecta T2, name(Pas) kq(0.333) gen(club2) noprt
mat b=e(bm)
mat t=e(tm)
mat result1=(b \ t)
matlist result1, border(rows) rowtitle("log(t)") format(%9.3f) left(4)


scheckmerge T2,  kq(0.333) club(club2) mdiv
mat b=e(bm)
mat t=e(tm)
mat result2=(b \ t)
matlist result2, border(rows) rowtitle("log(t)") format(%9.3f) left(4)

imergeclub T2, name(Pas) kq(0.333) club(club2) gen(finalclub2) noprt
mat b=e(bm)
mat t=e(tm)
mat result3=(b \ t)
matlist result3, border(rows) rowtitle("log(t)") format(%9.3f) left(4)


*****
*****

psecta T3, name(Pas) kq(0.333) gen(club3) noprt
mat b=e(bm)
mat t=e(tm)
mat result1=(b \ t)
matlist result1, border(rows) rowtitle("log(t)") format(%9.3f) left(4)


scheckmerge T3,  kq(0.333) club(club3) mdiv
mat b=e(bm)
mat t=e(tm)
mat result2=(b \ t)
matlist result2, border(rows) rowtitle("log(t)") format(%9.3f) left(4)

imergeclub T3, name(Pas) kq(0.333) club(club3) gen(finalclub3) noprt
mat b=e(bm)
mat t=e(tm)
mat result3=(b \ t)
matlist result3, border(rows) rowtitle("log(t)") format(%9.3f) left(4)

*****
*****
*****

psecta T4, name(Pas) kq(0.333) gen(club4) noprt
mat b=e(bm)
mat t=e(tm)
mat result1=(b \ t)
matlist result1, border(rows) rowtitle("log(t)") format(%9.3f) left(4)


scheckmerge T4,  kq(0.333) club(club4) mdiv
mat b=e(bm)
mat t=e(tm)
mat result2=(b \ t)
matlist result2, border(rows) rowtitle("log(t)") format(%9.3f) left(4)

imergeclub T4, name(Pas) kq(0.333) club(club4) gen(finalclub4) noprt
mat b=e(bm)
mat t=e(tm)
mat result3=(b \ t)
matlist result3, border(rows) rowtitle("log(t)") format(%9.3f) left(4)

*****
*****
*****
*****

psecta T5, name(Pas) kq(0.333) gen(club5) noprt
mat b=e(bm)
mat t=e(tm)
mat result1=(b \ t)
matlist result1, border(rows) rowtitle("log(t)") format(%9.3f) left(4)


scheckmerge T5,  kq(0.333) club(club5) mdiv
mat b=e(bm)
mat t=e(tm)
mat result2=(b \ t)
matlist result2, border(rows) rowtitle("log(t)") format(%9.3f) left(4)

imergeclub T5, name(Pas) kq(0.333) club(club5) gen(finalclub5) noprt
mat b=e(bm)
mat t=e(tm)
mat result3=(b \ t)
matlist result3, border(rows) rowtitle("log(t)") format(%9.3f) left(4)

export excel using "C:\Users\SANTIAGO-PC\Downloads\ACP\Cluster y ACP\CLUSTERS.xlsx", firstrow(variables) nolabel replace
