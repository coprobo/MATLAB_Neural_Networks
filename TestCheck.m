function [ right ] = TestCheck( RealOutputs, TargetOutputs )


iter1=0;
iter2=0;

for i=1:1000
    temp = isequal(RealOutputs(i),TargetOutputs(i));
    
    if temp == 1;
        iter1=iter1+1;        
    end
    
    if temp == 0;
        iter2=iter2+1;
    end
end

right=iter1/1000;

end

