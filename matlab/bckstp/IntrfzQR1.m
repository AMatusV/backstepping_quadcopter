function  [f, g] = IntrfzQR1(u)
% Funci�n que da la interfaz entre el m�todo
% del Gradiente Conjugado y el modelo
% Salidas:
%   f         valor de la funci�n costo
%   g         gradiente de la funci�n costo
% --------------------------------------------------
    global ContEvalf                 % contador del n�mero de llamadas
    global ContIter                  % contador de iteraciones
    
    ContEvalf = ContEvalf + 1;
    [f, dummy] = funQR1(u);
    % gradiente aproximado por diferencias
    f0 = f;              % valor de inicio para f (funcion costo)
    g = gradCtogrg(u, @funQR1, f0);

