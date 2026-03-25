module helper(a, b, y, z); 
    input a, b; 
    output y, z;
    y = a & b; 
    z = a | b; 
 endmodule 


 module addInputandOffset (a,b,z);
    input a,b;
    output z;
    z=a+b;
endmodule