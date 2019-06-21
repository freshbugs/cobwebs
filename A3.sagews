︠2a95a63e-da73-4a34-a4f6-746ac6dcf2fas︠
P.<x12,x13,x14,x21,x23,x24,x31,x32,x34,x41,x42,x43,z> = PolynomialRing(QQ,13,order='lex')

bub123 = x12*x13 + x21*x23 + x31*x32 + 1 - z^2
bub124 = x12*x14 + x21*x24 + x41*x42 + 1 - z^2
bub134 = x13*x14 + x31*x34 + x41*x43 + 1 - z^2
bub234 = x23*x24 + x32*x34 + x42*x43 + 1 - z^2
bub12 = x12 + x21 - z
bub13 = x13 + x31 - z
bub14 = x14 + x41 - z
bub23 = x23 + x32 - z
bub24 = x24 + x42 - z
bub34 = x34 + x43 - z
I = P.ideal(bub123, bub124, bub134, bub234, bub12, bub13, bub14, bub23, bub24, bub34)
︡836b2c8c-6693-41d9-ad86-089b260b00bf︡{"done":true}︡
︠31db1908-7570-438e-93d7-8b578c7052f9s︠
bub1234 = x12*x13*x14 + x21*x23*x24 + x31*x32*x34 + x41*x42*x43 + 2*z - z^3
︡305a4873-6fc2-48ce-b2db-3383d31a129d︡{"done":true}︡
︠b144056e-bc64-48f3-b419-d8211a2f1fd7s︠
bub1234 in I
︡075ff8b1-816c-43e5-bdd2-a2c5fd973082︡{"stdout":"True\n"}︡{"done":true}︡
︠eb746b73-9ff8-4787-9117-9f6edb94b87c︠
bub1234.lift(I)
︡b73264ae-0d31-43f0-b63a-8a543deaf361︡{"stdout":"[-x43 + z, x43, -x21 + z, x21, x13*x43 - x13*z - x14*x43 + x31*x41 - x31*z - x41*z + z^2, -x12*x41 + x12*z + x14*x21 - x14*z - x21*x43 + x21*z + x43*z - z^2, x12*x13 - x21*x31 + x21*x43 + x21*z + x31*z - x43*z - z^2, -x21*x24 - x21*x42 + x21*x43, x21*x23 + x21*x32 - x21*x43 - x21*z, x21*x31 - x21*x32 + x31*x32 - x31*z]\n"}︡{"done":true}︡
︠1097e676-2fce-446d-84a2-85c75efe9beb︠
choose = x13*x14*x23*x24 + x12*x14*x32*x34 + x12*x13*x42*x43 + x21*x24*x31*x34 + x21*x23*x41*x43 + x31*x32*x41*x42 - (z^2-1)*(z^2-2)
︡e71e16a4-9a46-4a93-acba-4bc7d74a76e9︡{"done":true}︡
︠c77ac5cc-073c-4b44-9525-826ecc20bde5︠
︡7eb81216-f5e8-4151-8671-f6e3195018c2︡
︠476ede7c-9a5d-415d-9f99-946e036044ec︠
choose in I
︡8aa0efe0-2dbf-48ed-b989-5fee482e8be4︡{"stdout":"True\n"}︡{"done":true}︡
︠83318c43-af91-4401-83a9-55a19f80c08c︠
︡c4312e1e-d4c5-4f27-b853-84d4ac151dc2︡
︠d6829e18-5a89-4e97-8dbc-ca273b3749a1w︠
w=choose.lift(I)
︡41647a26-5e22-4ae3-8134-461df5af9913︡{"done":true}︡
︠880addd6-7a5f-4b94-9b7f-0dc13e2be364︠
︡6c6a8ebd-d21d-4d51-bc16-ed01bdaee77f︡









