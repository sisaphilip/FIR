

// works of Philip Sisa M.
// sisaphilip@gmail.com	
module FIR(                         

 input    logic in_sample, // Data input 
 input    wire clk,        // clock input 
output    logic Yout );    // output of the filter 
                      

logic  D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17, D18, D19, D20;
logic  Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9,  Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17, Q18, Q19, Q20;                   
// coefficients from http://t-filter.engineerjs.com/ 

double COE[21] = {
-0.02010411882885732,
-0.05842798004352509,
-0.061178403647821976,
-0.010939393385338943,
0.05125096443534972,
0.033220867678947885,
-0.05655276971833928,
-0.08565500737264514,
0.0633795996605449,
0.31085440365663597,
0.4344309124179415,
0.31085440365663597,
0.0633795996605449,
-0.08565500737264514,
-0.05655276971833928,
0.033220867678947885,
0.05125096443534972,
-0.010939393385338943,
-0.061178403647821976,
-0.05842798004352509,
-0.02010411882885732};



always @(posedge clk) 
begin
 Q1       <= in_sample; 
 assign P1 = COE[0];
end 

 always@(posedge clk)
 begin
   Q2       <= Q1;
   assign P2 = Q1 * COE[1];
end

always@(posedge clk) 
 begin              
   Q3       <= Q2; 
   assign P3 = Q2 * COE[2];
end 

always@(posedge clk) 
 begin              
   Q4       <= Q3; 
   assign P4 = Q3 * COE[3];
end 

always@(posedge clk) 
 begin              
   Q5       <= Q4; 
   assign P5 = Q4 * COE[4];
end 

always@(posedge clk) 
 begin              
   Q6       <= Q5; 
   assign P6 = Q5 * COE[5];
end 

always@(posedge clk) 
 begin              
   Q7       <= Q6; 
   assign P7 = Q6 * COE[6];
end 

always@(posedge clk) 
 begin              
   Q8       <= Q7; 
   assign P8 = Q7 * COE[7];
end 

always@(posedge clk) 
 begin              
   Q9       <= Q8; 
   assign P9 = Q8 * COE[8];
end 

always@(posedge clk) 
 begin              
   Q10       <= Q9; 
   assign P10 = Q9 * COE[9];
end 

always@(posedge clk) 
 begin              
   Q11       <= Q10; 
   assign P11 = Q10 * COE[10];
end 

always@(posedge clk) 
 begin              
   Q12       <= Q11; 
   assign P12 = Q11 * COE[11];
end 

always@(posedge clk) 
 begin              
   Q13       <= Q12; 
   assign P13 = Q12 * COE[12];
end 

always@(posedge clk) 
 begin              
   Q14       <= Q13; 
   assign P14 = Q13 * COE[13];
end 

always@(posedge clk) 
 begin              
   Q15       <= Q14; 
   assign P15 = Q14 * COE[14];
end 

always@(posedge clk)
 begin              
   Q16       <= Q15;
   assign P16 = Q15 * COE[15];
end

always@(posedge clk)
 begin              
   Q17       <= Q16;
   assign P17 = Q16 * COE[16];
end

always@(posedge clk)
 begin              
   Q18       <= Q17;
   assign P18 = Q17 * COE[17];
end

always@(posedge clk)
 begin              
   Q19       <= Q18;
   assign P19 = Q18 * COE[18];
end

always@(posedge clk)
 begin              
   Q20       <= Q19;
   assign P20 = Q19 * COE[19];
end

always@(posedge clk)
 begin              
   assign P21 = Q20 * COE[20];
end

//////////////////////////////////////////////

always @(posedge clk)
begin 

assign Yout = P1 + P2 + P3 + P4+P5+P6+P7+P8+P9+P10+P11+P12+P13+P14+P15+P16+P17+18+P19+P20+P21;
end

endmodule : FIR

