params = struct(...
    % 'file', 'output/data_N.mat',...
    % 'maxEpochs', 10000,...
    'path', 'output29/',...
    % 'rollback', false,...
    % 'eta', 0.25,...
    % 'etaEps', 0.001,...
    % 'etaInc', 0.01,...
    % 'etaDec', 0.001,...
    % 'etaSteps', 3,...
    % 'momentum', 0.5,...
    % 'inputSamples', 100,...
    % 'inputDim', 2,...
    % 'beta', 1,...
    % 'pps', 20,...
);

algorithm.main([4 4], params);


% algorithm.totalError('output/data_N.mat');

