            cd outputclass
            fopen('combined_mean.csv','w') 
            x=readtable('combined.csv')
            x=table2array(x)
            x=x.'
            y=mean(x)
            y=y.'
            dlmwrite('combined_mean.csv',y)
            cd ..