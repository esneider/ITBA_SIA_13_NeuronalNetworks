function printProgress(data)

    N = data.alg.epoch;
    numN = data.const.maxEpochs;

    if N == 1
        fprintf('0');
    end

    if mod(N * 40, numN) < 40

        if mod(N * 10, numN) < 10

            fprintf('%d', floor(N * 10 / numN) * 10);
        else
            fprintf('.');
        end
    end

    if N == numN
        fprintf(' - done\n');
    end
end

