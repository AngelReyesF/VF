

# Funcion para calcular el valor futuro (VF)
VF = function(VP,r,t){
  xSalida=VP*(1+(r*t))
  return(xSalida)
}


VP = function(VF,r,t){
  VP=VF*(1+(r*t))
  return(VP)
}

r = function(VP,VF,t){
  r = (VF-VP) / (VP*t)
  return(r)
}

t = function(VP,VF,t){
  t=(VF-VP) / (VP*r)
  return(t)
}

source("VF.R")
VP = 1000
r = 0.24
t = 7/12

resultado = VF(VP,r,t)
resultado
