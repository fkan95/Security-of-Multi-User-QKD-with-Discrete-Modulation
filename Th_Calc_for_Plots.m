clearvars;
beta = 0.95;

noOfStates = 4;
maxNoOfUsers = 3;
minNoOfTrUsers = 2;



LMin = 0.1;
LMax = 100.0;
LStep= 10;

Lengths = LMin:LStep:LMax;


for i=1:size(Lengths,2)
    etas(i) = 10^(-0.02*Lengths(i));
end

 alphaMin = 0.6
 alphaMax = 5
 alphaStep = 0.05


%delete(gcp('nocreate'));
%%parpool(12)


for noOfUsers = 3:3
    for noOfTrUsers = 2:2

        alphas = [alphaMin:alphaStep:alphaMax];
        
        
        keyRates = zeros(size(Lengths,2),1);
        optAlphas = zeros(size(Lengths,2),1);
        keyRatesBiBj = zeros(size(Lengths,2),1);
        optAlphasBiBj = zeros(size(Lengths,2),1);
        
        savename = 'LossOnlyKR_';
        savename = strcat(savename,num2str(noOfUsers));
        savename = strcat(savename,'_users.mat');
        
        
        
        tStart = tic;
        
        for i = 1:size(Lengths,2)
            hVar = zeros(size(alphas,2),1);
            
            fprintf("\n L = %3d", Lengths(i)); 
            
            

            fun = @(x) -calculateRefDataMultiuser_new(etas(i),x,beta,noOfStates, noOfUsers, noOfTrUsers, 0);

            [optAlphas(i),keyRates(i)] = fminbnd(fun,alphaMin,alphaMax);
            optAlphas(i) = real(optAlphas(i));
            keyRates(i) = - keyRates(i);

            fun = @(x) -calculateRefDataMultiuser_new(etas(i),x,beta,noOfStates, noOfUsers, noOfTrUsers, 1);

            [optAlphasBiBj(i),keyRatesBiBj(i)] = fminbnd(fun,alphaMin,alphaMax);
            optAlphasBiBj(i) = real(optAlphasBiBj(i));
            keyRatesBiBj(i) = - keyRatesBiBj(i);

   
            
        end
        
        
        
        savename = ('LossOnlyKR_short_')
        savename = strcat(savename,num2str(noOfUsers));
        savename = strcat(savename,'_Users_');
        savename = strcat(savename,num2str(noOfTrUsers));
        savename = strcat(savename,"_Trusted.mat")
        
        tRun = toc(tStart);
        
        save(savename,'optAlphas','keyRates','optAlphasBiBj','keyRatesBiBj','Lengths', 'etas', 'noOfUsers', 'noOfStates','beta', 'tRun');
        


    end
end

%myCluster = parcluster('local')
%delete(myCluster.Jobs)



semilogy(Lengths,keyRates)
hold on
semilogy(Lengths,real(keyRatesBiBj))