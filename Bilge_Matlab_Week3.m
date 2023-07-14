%Emre Bilge
clear;clc;

%%Question 1)

n=0;
while n^3<40000;
    n=n+14;
end
disp(n)
%This was the simplest method I could think of

%%
TempNYC = [31 26 30 33 33 39 41 41 34 33 45 42 36 39 37 45 43 36 41 37 32 32 35 42 38 33 40 37 36 51 50];
summie=0;
for j=1:length(TempNYC);
    summie=summie + TempNYC(j);
end

myAvg=summie/length(TempNYC);
disp(['The average temperature in NYC is ',num2str(myAvg)]);

%Anchorage calculations
TempANC=[37 24 28 25 21 28 46 37 36 20 24 31 34 40 43 36 34 41 42 35 38 36 35 33 42 42 37 26 20 25 31]; 
summieanc=0;
for j=1:length(TempANC);
    summieanc=summieanc+TempANC(j);
end
myAvgANC=summieanc/length(TempANC);
disp(['The average temperature in Anchorage is ',num2str(myAvgANC)]);

%%
meansummie=0;
%2 standard deviation for the month in each city
for j=1:length(TempNYC);
    meansummie=meansummie+(TempNYC(j)-myAvg)^2;
end
d=meansummie/length(TempNYC);
standarddevNYC=sqrt(d);
%I'm not sure why but the standard deviation is a little bit off the true
%answer

%Anchorage calculations below
meansummieANC=0;
for j=1:length(TempANC);
   meansummie=meansummie+(TempANC(j)-myAvgANC)^2;
end
p=meansummie/length(TempANC);
stdANC=sqrt(p);
disp(['The standard deviation of the temperature of Anchorage is ',num2str(stdANC)]);
%Same problem here, the standard deviation is a little off, not sure why
   
   %%

%3)
Counter=0;
for j=1:length(TempNYC);
    if TempNYC(j)<myAvg;
        Counter=Counter+1;
    end
end
disp(['The number of days the temperature of NYC was below average was ', num2str(Counter) ]);

%Calculations for Anchorage below
CounterANC=0;
for j=1:length(TempNYC);
    if TempANC(j)<myAvgANC;
        CounterANC=CounterANC+1;
    end
end
disp(['The number of days the temperature of Anchorage was below average was ', num2str(CounterANC)]);



%%
%%4)
contrast=TempANC>TempNYC;
for j=1:31;
    if TempANC>TempNYC
    end
end
%I was a little confused on this part

%%
%5)
[TempNYCval, TempNYCloc]=max(TempNYC)
disp(['The maximum temperature in New York occurred on day ',num2str(TempNYCloc),' and it had a temperature of ',num2str(TempNYCval),' degrees farenheit'])

%%
%Question 3)
% There is a slight issue with the code we wrote in class for the sudoku puzzle solver. The  approach can become tedious because the rows and column ranges for each nonet are slightly different. So instead of typing numbers for the row and column, we can use  conditional statements to assign the correct row and column ranges based on the nonet! Write a piece of code that will assign the correct row and column ranges for each nonet  based on the position of the nonet. This will require  conditional statements .
%Im a little confused where to start here

        


