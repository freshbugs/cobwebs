︠354e9a06-010a-4fc5-989d-d106f4bc7661︠
BubbleRing.<a,b,c,d,e,f,g,h,a0,c0,e0,g0,z> = PolynomialRing(QQ,13,order="degrevlex")
three = z^2 - 1
Racf = a*b + c*e + f*g - three
Rceh = c*d + e*g + h*a - three

BubbleRels = BubbleRing.ideal(a+e-z, b+f-z, c+g-z, d+h-z, Racf, Rceh, a*a0-a, c*c0-c, e*e0-e, g*g0-g, a0*a0-a0, c0*c0-c0, e0*e0-e0, g0*g0-g0, (a0-1)*(e0-1), (c0-1)*(g0-1))

a2 = z*a - a0
c2 = z*c - c0
e2 = z*e - e0
g2 = z*g - g0

b2 = z*b - 1
d2 = z*d - 1
f2 = z*f - 1
h2 = z*h - 1

# VERTEX FUDGE
# JW-double-edge: "-" if b/f, "+" if d/h
# no JW-edge: +/- sqrt[2]
# I guess the sign is "-" if it meets a going right, otherwise "+"


# BUBBLE = [2][6]/[3]
twosixoverthree = z^4 - 3*z^2
a*b2*c + c*d2*e + e*f2*g + g*h2*a - twosixoverthree in BubbleRels

# DOUBLEBUBBLE = [5][6]/[2][3]
fivestuff = z^6 - 6*z^4 + 10*z^2 - 3
b2*c2*d2 + d2*e2*f2 + f2*g2*h2 + h2*a2*b2 + a0*c0*e0*g0 - fivestuff in BubbleRels

# MONOGON = 0 easy
-b2 + d2 - f2 + h2 in BubbleRels

# DIGON = [2]^2
# non-JW edge is easy.
# JW-edge:
e*b2*g + g*d2*a + a*f2*c + c*h2*e - z^2 in BubbleRels

# TRIANGLE = 0
# one JW edge: easy
# three JW edges comes for free: cap it off and compare...

# I + H = un + ||.
# ab2c,ab2c on top and bottom is easy: just || = ||
# ab2c,cd2e on top and bottom is also easy
# ab2c,cd2e on bottom and switched on top: use the weird fudge
# ab2c,ef2g on bottom and switched on top, || and put everything on right:
e0*g0*a*c*f2 + e2*g2 - (e0*g0 + e*f2*g) in BubbleRels

# !!!!!!!!!!!! DONE !!!!!!!!!!!!!

# For braiding, need to make it a shaded planar algebra
# Right handed crossing with shading on left
# = (1/q) || - (q^2/[2]) un - (1/[2]) I

# Right handed crossing with single strand over double
# = (1/q[2]) H + (q/[2]) I

# Tetravalent vertex rotate one click is multiply by negative one
(g + e - z*g*e) + (e + g - z)*f2 in BubbleRels

#monogon = [6]/[3] with abbc
(a*b2 + c*b2 - z*b2) + g*h2 + e*d2 - (z^3 - 3*z) in BubbleRels



︡96810e64-8efb-478c-8c71-93139c6da167︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}︡
︠4460120d-688c-4ae4-a541-6cd8d57219a1︠









