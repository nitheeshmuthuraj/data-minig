            directory = '/Users/ASUuser/Desktop/CSE572_A2_data';      % Full path of the directory to be searched in
            filesAndFolders = dir(directory);     % Returns all the files and folders in the directory
            filesInDir = filesAndFolders(~([filesAndFolders.isdir]));  % Returns only the files in the directory
            for i=4:length(filesAndFolders)
                cd (filesAndFolders(i).name)
                movefile *.csv /Users/ASUuser/Desktop/CSE572_A2_data
                cd ..
                rmdir(filesAndFolders(i).name)
            end
            delete 31*.csv
            delete ABOOUT*.csv
            delete LARGE*.csv
            delete if*
            delete hurt*
            delete hospit*
            delete gold*
            delete gestur*
            delete DAY*
            delete cost*
            delete cat*
            delete good*
            delete here*
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
            end

