︠2a95a63e-da73-4a34-a4f6-746ac6dcf2fas︠
P.<x12,x13,x14,x15,x21,x23,x24,x25,x31,x32,x34,x35,x41,x42,x43,x45,x51,x52,x53,x54,z> = PolynomialRing(QQ,21,order='lex')

bub1234 = x12*x13*x14 + x21*x23*x24 + x31*x32*x34 + x41*x42*x43 + 2*z - z^3
bub1235 = x12*x13*x15 + x21*x23*x25 + x31*x32*x35 + x51*x52*x53 + 2*z - z^3
bub1245 = x12*x14*x15 + x21*x24*x25 + x41*x42*x45 + x51*x52*x54 + 2*z - z^3
bub1345 = x13*x14*x15 + x31*x34*x35 + x41*x43*x45 + x51*x53*x54 + 2*z - z^3
bub2345 = x23*x24*x25 + x32*x34*x35 + x42*x43*x45 + x52*x53*x54 + 2*z - z^3

bub123 = x12*x13 + x21*x23 + x31*x32 + 1 - z^2
bub124 = x12*x14 + x21*x24 + x41*x42 + 1 - z^2
bub125 = x12*x15 + x21*x25 + x51*x52 + 1 - z^2
bub134 = x13*x14 + x31*x34 + x41*x43 + 1 - z^2
bub135 = x13*x15 + x31*x35 + x51*x53 + 1 - z^2
bub145 = x14*x15 + x41*x45 + x51*x54 + 1 - z^2
bub234 = x23*x24 + x32*x34 + x42*x43 + 1 - z^2
bub235 = x23*x25 + x32*x35 + x52*x53 + 1 - z^2
bub245 = x24*x25 + x42*x45 + x52*x54 + 1 - z^2
bub345 = x34*x35 + x43*x45 + x53*x54 + 1 - z^2

bub12 = x12 + x21 - z
bub13 = x13 + x31 - z
bub14 = x14 + x41 - z
bub15 = x15 + x51 - z
bub23 = x23 + x32 - z
bub24 = x24 + x42 - z
bub25 = x25 + x52 - z
bub34 = x34 + x43 - z
bub35 = x35 + x53 - z
bub45 = x45 + x54 - z

I = P.ideal(bub1234, bub1235, bub1245, bub1345, bub2345, bub12, bub13, bub14, bub15, bub23, bub24, bub25, bub34, bub35, bub45)
︡51c72221-a1b8-4905-b15b-f57bbb66ca0a︡{"done":true}︡
︠31db1908-7570-438e-93d7-8b578c7052f9s︠
bub12345 = x12*x13*x14*x15 + x21*x23*x24*x25 + x31*x32*x34*x35 + x41*x42*x43*x45 + x51*x52*x53*x54 + (-1 + 3*z^2 - z^4)
︡2a1a6bc2-3e8c-4058-b4e6-6b9bf90ac0e6︡{"done":true}︡
︠b144056e-bc64-48f3-b419-d8211a2f1fd7s︠
bub12345 in I
︡367134a6-b6af-4b29-9a9f-2dfa363e227b︡
︠91623311-b17a-475d-b045-6d2fda309139sr︠
bub12345.lift(I)
︡556986b0-90f2-4c98-a820-8ec5f5e135b9︡
︠3e02128e-7507-4e69-8abe-07c4ca115761s︠
v[15]
︡4ad9c5cf-3266-405e-9d39-1dc9309f86a7︡{"stdout":"-x13*x43*x54 + x13*x43*z + x13*x53*x54 - x13*z^2 + x13 + x14*x43*x54 - x14*x43*z - x15*x53*x54 - x31*x41*x51 + x31*x41*z + x31*x51*z - x31*z^2 + x41*x51*z - x41*z^2 - x51*z^2 + z^3\n"}︡{"done":true}︡
︠83748e59-8eab-44a3-82cf-1b2b3ff1cbffs︠
v
︡eabbd22c-5c7e-414b-9893-f84cba9596ba︡{"stdout":"Polynomial Sequence with 24 Polynomials in 20 Variables\n"}︡{"done":true}︡
︠0c015148-ef03-4456-9329-eb8f7944285c︠









