function shooting_game
    %%�e��,�w�y��
    figure      
    xlim([0 10]);
    ylim([0 10]);
    hold on
    
    %%�}�l�T��
    title('click mouse to start the game.')
    txt={'Rule:','1. Click the target to get point','2. If you miss over five times, the game will end.'};
    text(2.5,7.5,txt)
    if waitforbuttonpress==0
       title('START');pause(0.2)
    end
        
    score=0;    %�p��
    miss=0;     %���~����
    
    while 1>0
        %%��ܤ��ƤΥ��~����
        title(['Score: ',num2str(score),'  Miss: ',num2str(miss)])
        ax=axes();
        xlim([0 10]);
        ylim([0 10]);
        hold on
        coo=ones(1,2);
        
        %%�ؼЪ��H���X�{
        x1=rand(1)*8.6;
        y1=rand(1)*8.6;
        X=[x1 x1+0.7 x1+0.7 x1 x1];
        Y=[y1 y1 y1+0.7 y1+0.7 y1];
        pause(0.5);
        fill(X,Y,'r');pause(0.8)
        
        %%�I���ƹ��A�i��g��
        action='down';
        switch (action)
            case 'down'
                set(gcf,'WindowButtonDownFcn','mouse01 down')
                coo=ax.CurrentPoint(1,1:2);
                set(gcf,'WindowButtonUpFcn','mouse01 up')
                if (coo(1)<(x1+0.7))&&(coo(1)>x1)&&(coo(2)<(y1+0.7))&&(coo(2)>y1)
                    score=score+1;
                else
                    miss=miss+1;
                end   
            otherwise
                miss=miss+1;
        end
        
        %%�P�_�C���O�_����
        if miss>=5
            clf('reset')
            axis([0 10 0 10])
            hold on
            title(['Score: ',num2str(score),'  Miss: ',num2str(miss)])
            hold on
            txt={'End of the game','It will close soon'};
            text(2.5,7.5,txt)
            pause(1.8)
            close
            break
        end
        clf('reset')
        axis([0 10 0 10])
        hold on
    end
end