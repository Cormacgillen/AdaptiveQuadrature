function [I,eval_count] = simpsons(f,a,b,n)
eval_cout=0;
iter = 1
if numel(f)>1 % If the input provided is a vector
    n=numel(f)-1; h=(b-a)/n;
    I= h/3*(f(1)+2*sum(f(3:2:end-2))+4*sum(f(2:2:end))+f(end));
    eval_count = eval_count + 3
else % If the input provided is an anonymous function
    h=(b-a)/n; xi=a:h:b;
    I= h/3*(func_name(xi(1))+2*sum(func_name(xi(3:2:end-2)))+4*sum(func_name(xi(2:2:end)))+func_name(xi(end)));
end