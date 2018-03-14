function x = seperateSet()
    spamList = dir('spam');
    nospamList = dir('nospam');
    X=[];
    y=[];
    trainX = [];
    crossX = [];
    crossy = [];
    trainy = [];
    testX = [];
    testy = [];
    for i = 3:length(spamList),
        file_contents = readFile(strcat('spam\', spamList(i).name));
        word_indices  = processEmail(file_contents);
        features      = emailFeatures(word_indices);
        features = features';
        X=[X;features];
        y = [y;1];
        
       
    end
    for i = 3:length(nospamList),
        file_contents = readFile(strcat('nospam\', nospamList(i).name));
        word_indices  = processEmail(file_contents);
        features      = emailFeatures(word_indices);
        features = features';
        X=[X;features];
        y = [y;0];
    end

    for i = 1:length(y),
        if rand < 0.6,
            trainX = [trainX;X(i,:)];
            trainy = [trainy;y(i)];
        elseif rand > 0.8,
            testX = [testX;X(i,:)];
            testy = [testy;y(i)];
        else,
            crossX = [crossX;X(i,:)];
            crossy = [crossy;y(i)];
        end
    end
    
    X = trainX;
    y = trainy;
    save myTrain X y;
    
    Xtest = crossX;
    ytest = crossy;
    save myCross Xtest ytest;
    
    Xtest = testX;
    ytest = testy;
    save myTest Xtest ytest;
            
        
    
return