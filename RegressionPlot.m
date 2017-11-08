

targets = sim(net,Test1000Rev);
%targets = sim(deepnet,Test1000);

    [M1,I1] = max(targets);
    [M2,I2] = max(Test1000L);
    
    RealOutputs = I2;
    TargetOutputs = I1;


plotregression(RealOutputs,TargetOutputs)
RightResult = TestCheck(RealOutputs,TargetOutputs)

