function fm=TCL(I)

I=double(I);
cn= I ;
     t=((cn./255)-1)./((I./255)-1);
          % I should be a color image
         
         
         cdp = double(darkChannel(I));%patch dark channel
       % Calculate the tranmission .
      dc2=cdp;
      minAtomsLight = 240;
      omega = 0.95;
      A = min([minAtomsLight, max(max(dc2))]);
     t_d = (255*(1-omega*double(dc2)/A));
 I=uint8(t_d);
 [LLn,LHn,HLn,HHn ]=dwt2(I,'haar');  %haar
  
  HLnh=histh(HLn,1);
  xn3=HLnh(:,1);
  yn3=HLnh(:,2);
   
  
    fm=1./ ( max(yn3(:)));