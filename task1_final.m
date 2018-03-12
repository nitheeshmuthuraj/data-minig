listing = dir('*.csv')
            mkdir('outputclass')
            cd outputclass
            names_class=["ABOUT","HEARING","GOOUT","FIND","FATHER","DECIDE","DEAF","COP","CAN","AND"]
            for i =1:length(names_class)
                temp=strcat(names_class(i),'.csv')
                fopen(char(temp),'w')
            end
            cd ..
            for i=1:length(listing)
                Source=listing(i).name
                Destination=Source(isstrprop(Source,'alpha'))
                Destination = Destination(1:end-5)
                Destination=[Destination,'.csv']
                x=readtable(Source)
                x=x(1:39,1:34)
                x=table2array(x)
                x=x.'
                x(35,1)=0
                x(1,40)=0   
                cd outputclass
                dlmwrite(Destination,vertcat(table2array(readtable(Destination)),x))
                cd ..
                delete(Source)
            end
