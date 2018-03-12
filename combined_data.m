            cd outputclass
            fopen('combined.csv','w')             
names_class=["ABOUT","HEARING","GOOUT","FIND","FATHER","DECIDE","DEAF","COP","CAN","AND"]
            for i =1:length(names_class)
                temp=strcat(names_class(i),'.csv')
                x=readtable(temp)
                x=table2array(x)
                dlmwrite('combined.csv',vertcat(table2array(readtable('combined.csv')),x))
            end
            cd ..
