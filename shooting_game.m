function shooting_game
    figure
    score=0;
    while 1>0
        ax=axes();
        xlim([0 10]);
        ylim([0 10]);
        hold on
        coo=ones(1,2);
        x1=rand(1)*8.6;
        y1=rand(1)*8.6;
        X=[x1 x1+0.7 x1+0.7 x1 x1];
        Y=[y1 y1 y1+0.7 y1+0.7 y1];
        fill(X,Y,'r');pause(0.8)
        
%         if waitforbuttonpress==0
%             point=ax.CurrentPoint(1,1:2);
%             coo(1)=point(1);
%             coo(2)=point(2);
%         end
%         if ((coo(1)>=x1)&&(coo(1)<=(x1+0.7)))&&((coo(2)>=y1)&&(coo(2)<=(y1+0.7)))
%              score=score+1;
%              disp(score)
%          end
        clf('reset')
        axis([0 10 0 10])
        hold on
    end
end