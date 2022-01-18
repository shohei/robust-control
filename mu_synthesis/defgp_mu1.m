systemnames = 'Ppert Wps Weps';
inputvar = '[d1; d2; u]';
outputvar = '[Wps; Ppert+Weps]';
input_to_Ppert = '[d1 - u]';
input_to_Wps = '[Ppert + Weps]';
input_to_Weps = '[d2]';
G = sysic;