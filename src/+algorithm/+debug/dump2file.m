function dump2file(data)

    run = int2str(data.alg.epoch / data.const.epochsPerDump);

    f = fopen(strcat(data.const.path, 'output_', run, '.txt'), 'w');
    algorithm.debug.printData(data, f);
    fclose(f);

    save(strcat(data.const.path, 'data_', run, '.mat'), 'data', '-v7', '-mat');

    algorithm.debug.plotInfo(
        {
            {data.info.sampleErrors, 'mean sqared error for training sample'},
            {data.info.globalErrors, 'mean sqared error for all samples'}
        },
        strcat(data.const.path, 'error_', run);
    );

    algorithm.debug.plotInfo(
        {
            {data.info.etas, 'eta value'},
            {data.info.rollbacks ./ 1000, 'accumulated rollbacks / 1000'}
        },
        strcat(data.const.path, 'adaptative_', run);
    );

    algorithm.debug.plotInfo(
        {
            {data.info.rollbacks ./ 1000, 'accumulated rollbacks / 1000'}
        },
        strcat(data.const.path, 'rollback_', run);
    );

    algorithm.debug.plotInfo(
        {
            {data.info.etas, 'eta value'},
        },
        strcat(data.const.path, 'eta_', run);
    );

    algorithm.debug.plotInfo(
        {
            {data.info.sampleErrors, 'mean sqared error for training sample'},
            {data.info.etas, 'eta value'},
        },
        strcat(data.const.path, 'sample_', run);
    );

    algorithm.debug.plotInfo(
        {
            {data.info.globalErrors, 'mean sqared error for all samples'}
            {data.info.etas, 'eta value'},
        },
        strcat(data.const.path, 'all_', run);
    );

    set(gcf, 'visible', 'off');
end

