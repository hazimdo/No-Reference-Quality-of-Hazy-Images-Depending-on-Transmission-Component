  function m=histh(v,d)
   v=v(:);
   ss2=(round(d*v)/d);
   ymx=max(ss2);
   ymn=min(ss2);
   s=1/d;
   x=ymn:s:ymx;
 pr= hist(ss2,x)/length(v);
  m=[x',pr'];
%    figure(9)
%     plot(x,pr,'k','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','k', 'MarkerSize',10)
%      set(gca, 'FontSize', 14)
%       xlabel('x','Fontsize',14)
%       ylabel('P(x) ','Fontsize',14)  
%   grid on
   