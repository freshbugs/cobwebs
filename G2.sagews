︠77ad177d-587d-407f-a925-9755bf806fc7s︠
BubbleRing.<z,b,d,f,h,j,l,a0,c0,e0,g0,i0,k0,a,c,e,g,i,k> = PolynomialRing(ZZ,19,order='deglex')

three = z^2 -1 #[3]
Rach = a*i + c*b + h*g - three
Rcej = c*k + e*d + j*i - three
Raei = a*k + e*c + i*g - three
Rbfj = b*l + f*d + j*h - three

a2 = z*a - a0
c2 = z*c - c0
e2 = z*e - e0
g2 = z*g - g0
i2 = z*i - i0
k2 = z*k - k0

b3 = three*b - z
d3 = three*d - z
f3 = three*f - z
h3 = three*h - z
j3 = three*j - z
l3 = three*l - z

BubbleRels = BubbleRing.ideal(a+g-z, b+h-z, c+i-z, d+j-z, e+k-z, f+l-z, Rach, Rcej, Regl, Raei, Rbfj, a0*a0-a0, c0*c0-c0, e0*e0-e0, g0*g0-g0, i0*i0-i0, k0*k0-k0, a0*a-a, c0*c-c, e0*e-e, g0*g-g, i0*i-i, k0*k-k, (a0-1)*(g0-1), (c0-1)*(i0-1), (e0-1)*(k0-1))

# VERTEX FUDGE
# no JWs = sqrt [2]
# JW-up to ab2c2d3e-right = +1, cd3e2f3g=-1, etc.
# three JWs:
fudge = (a*e*i)*(z^2+2) - (a*e + e*i + a*i)*z

# BUBBLE = [7][2][12] / [4][6]
sevenstuff = (z^6 - 5*z^4 + 6*z^2 - 1)*(z^4 - 4*z^2 + 1)
a*b3*c2*d3*e + c*d3*e2*f3*g + e*f3*g2*h3*i + g*h3*i2*j3*k + i*j3*k2*l3*a + k*l3*a2*b3*c + a0*c0*e0*g0*i0*k0 - sevenstuff in BubbleRels

EasyRels = BubbleRing.ideal(a+g-z, b+h-z, c+i-z, d+j-z, e+k-z, f+l-z, Rach, Rcej, Regl, Raei, Rbfj, a0-1, c0-1, e0-1, g0-1, i0-1, k0-1)

a3 = z*a2 - a
c3 = z*c2 - c
e3 = z*e2 - e
g3 = z*g2 - g
i3 = z*i2 - i
k3 = z*k2 - k

# MONOGON = 0
# - put two bubbles inside the capped JW
a*b3*c2*d3*e*g*i*k - a*c*d3*e2*f3*g*i*k + a*c*e*f3*g2*h3*i*k - a*c*e*g*h3*i2*j3*k + a*c*e*g*i*j3*k2*l3 - a2*b3*c*e*g*i*k*l3 + fudge in EasyRels

# DIGON = [3][8] / [4]
eightoverfour = z^4 - 4*z^2 + 2
# with a...e
# - put gk on the left, i in the middle, everything else on the right
z*a*c*e2*f3*g + z*a2*c*e*k*l3 + g*k*i + a*a2*c3*e*e2 - three*eightoverfour*a*c*e in EasyRels
# with JW:
a*b3*c2*d3*e*g^2*i^2*k^2 + c*d3*e2*f3*g*i^2*k^2*a^2 + e*f3*g2*h3*i*k^2*a^2*c^2 + g*h3*i2*j3*k*a^2*c^2*e^2 + i*j3*k2*l3*a*c^2*e^2*g^2 + k*l3*a2*b3*c*e^2*g^2*i^2 + fudge^2 - three*eightoverfour*a*c*e*g*i*k in EasyRels

# TRIANGLE = -[6] / [2]
sixovertwo = z^4 - 4*z^2 + 3
# with a...e and e...i on bottom, c...g on top.
# - put gi in the middle, everything else on the right.
-e*g3*i2 - c2*e3*g - a*k + sixovertwo*e*g in EasyRels
# with a..e and g..k on bottom, JW on top
# - put ae in bottom, c in the middle, and everything else on the right
z*f3*g2*i*k^2 + z*g^2*i*k2*l3 - g*g2*i3*k*k2 + fudge - sixovertwo*g*i*k in EasyRels
# with all JW comes for free

# SQUARE = three*(un + ||) + fourovertwo*(I + H)
fourovertwo = three - 1
# a...e and a...e on top and bottom is easy.
# a...e then c...g on bottom, switched on top is easy.
# a...e then c...g on top and bottom
# - put everything on the right
g2^2 + z^2*a*g - three - fourovertwo*g2 in EasyRels
# a...e then e...i on the bottom, c...g then JW on top.
# - put a on left, k on bottom, bubble-capped-JW, and the rest on the right.
-fudge*a*k - a*c*e*g3*i2*k + a*c2*e3*g*i*k - fourovertwo*(-a*e*g*i*k + a*c*e*g*k) in EasyRels
# a...e and g..k on bottom, switched on top
# - put ae in the middle, c^2 in the middle of the right strand, and the rest on the right
g*g2^2*i3^2*k*k2^2 + a^2*c^2*e^2*h3*i2*j3 + z^2*a*g^2*h3*i*i2*k2*l3 + z^2*e*f3*g2*i*i2*j3*k^2 - fourovertwo*(g*g2*i*i3*k*k2 + a*c*e*g*h3*i*i2*j3*k) - three*(g*i^2*k + g^2*h3*i^2*i2*j3*k^2) in EasyRels
# others come for free

# PENTAGON
# - use positive definite

# !!!!!!!!!!!!!!!!! DONE !!!!!!!!!!!!!!!!!

︡e777b38a-aff5-4cc7-b139-4b999e2bb60b︡{"stderr":"Error in lines 19-23\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nNameError: name 'Regl' is not defined\n"}︡{"done":true}︡
︠623f0413-9730-41e7-b932-4f5c2d1b9431︠









