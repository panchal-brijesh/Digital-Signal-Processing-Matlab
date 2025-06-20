function [iFFT_iterativ_signal_1, iFFT_iterativ_signal_2] = iFFT(h1, h2)

    N = length(h1);
    log2N = log2(N);

    h1_reorder = custom_bit_reorder(h1);
    h2_reorder = custom_bit_reorder(h2);

    iFFT_iterativ_signal_1 = h1_reorder;
    iFFT_iterativ_signal_2 = h2_reorder;


    for iteration = 1:log2N

        CurrentSignalSize = 2^iteration;
        half_CurrentSignalSize = CurrentSignalSize / 2;
        factor_iteration = exp(2i * pi * (0:half_CurrentSignalSize-1) / CurrentSignalSize);

        for k = 1:CurrentSignalSize:N
            for l = 0:half_CurrentSignalSize-1

                factor_CurrentPosition_1 = factor_iteration(l+1) * iFFT_iterativ_signal_1(k+l+half_CurrentSignalSize);
                CurrentPosition_1 = iFFT_iterativ_signal_1(k+l);

                iFFT_iterativ_signal_1(k+l) = CurrentPosition_1 + factor_CurrentPosition_1;
                iFFT_iterativ_signal_1(k+l+half_CurrentSignalSize) = CurrentPosition_1 - factor_CurrentPosition_1;

                factor_CurrentPosition_2 = factor_iteration(l+1) * iFFT_iterativ_signal_2(k+l+half_CurrentSignalSize);
                CurrentPosition_2 = iFFT_iterativ_signal_2(k+l);

                iFFT_iterativ_signal_2(k+l) = CurrentPosition_2 + factor_CurrentPosition_2;
                iFFT_iterativ_signal_2(k+l+half_CurrentSignalSize) = CurrentPosition_2 - factor_CurrentPosition_2;
            end
        end
    end

    iFFT_iterativ_signal_1 = iFFT_iterativ_signal_1 / N;
    iFFT_iterativ_signal_2 = iFFT_iterativ_signal_2 / N;
end