//: Playground - noun: a place where people can play

import UIKit


// input TWD97_value
var x = 187038.98
var y = 2517874.81

var a = 6378137.0
var b = 6356752.314245

var lng0 = 121 * M_PI / 180
var k0 = 0.9999
var dx = 250000.0
var dy = 0.0
var e  = pow((1 - pow(b,2) / pow(a,2)) , 0.5)
    x  = x - dx
    y  = y - dy
var mm = y / k0
var mu = mm / (a * (1.0 - pow(e,2) / 4.0 - 3 * pow(e,4) / 64.0 - 5 * pow(e,6) / 256.0))
var e1 = (1.0 - pow((1.0 - pow(e,2)), 0.5)) / (1.0 + pow((1.0 - pow(e,2)) , 0.5))
var j1 = (3 * e1 / 2 - 27 * pow(e1,3) / 32.0)
var j2 = (21 * pow(e1,2) / 16 - 55 * pow(e1,4) / 32.0)
var j3 = (151 * pow(e1,3) / 96.0)
var j4 = (1097 * pow(e1,4) / 512.0)
var fp = mu + j1 * sin(2 * mu) + j2 * sin(4 * mu) + j3 * sin(6 * mu) + j4 * sin(8 * mu)
var e2 = pow((e * a / b) , 2)
var c1 = pow(e2 * cos(fp) , 2)
var t1 = pow(tan(fp) , 2)
var r1 = a * (1 - pow(e , 2)) / pow((1 - pow(e , 2) * pow(sin(fp) , 2)) , (3.0 / 2.0))
var n1 = a / pow((1 - pow(e , 2) * pow(sin(fp) , 2)) , 0.5)

var dd = x / (n1 * k0)
var q1 = n1 * tan(fp) / r1
var q2 = (pow(dd , 2) / 2.0)
var q3 = (5 + 3 * t1 + 10 * c1 - 4 * pow(c1 , 2) - 9 * e2) * pow(dd , 4) / 24.0
var q4 = (61 + 90 * t1 + 298 * c1 + 45 * pow(t1 , 2) - 3 * pow(c1 , 2) - 252 * e2) * pow(dd , 6) / 720.0
var lat = fp - q1 * (q2 - q3 + q4)
var q5 = dd
var q6 = (1 + 2 * t1 + c1) * pow(dd , 3) / 6
var q7 = (5 - 2 * c1 + 28 * t1 - 3 * pow(c1 , 2) + 8 * e2 + 24 * pow(t1 , 2)) * pow(dd , 5) / 120.0
var lng = lng0 + (q5 - q6 + q7) / cos(fp)


//output WGS84
 lat = (lat * 180) / M_PI
 lng = (lng * 180) / M_PI
