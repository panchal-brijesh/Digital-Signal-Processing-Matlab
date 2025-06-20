function [FFT_iterativ_signal_1,FFT_iterativ_signal_2] = FFT(h1,h2)

    N = length(h1);
    log2N = log2(N);

    h1_reorder = custom_bit_reorder(h1);
    h2_reorder = custom_bit_reorder(h2);

    FFT_iterativ_signal_1 = h1_reorder;
    FFT_iterativ_signal_2 = h2_reorder;

    for iteration = 1:log2N                                                                                               % Iteration for each log2

        CurrentSignalSize = 2^iteration;                                                                                  % Length of the current signal
        half_CurrentSignalSize = CurrentSignalSize / 2;                                                                   % Find the middel of the current signal
        factor_iteration = exp(-2i * pi * (0:half_CurrentSignalSize-1) / CurrentSignalSize);                              % Calculated factor for the current iteration

        for k = 1:CurrentSignalSize:N                                                                                     % Goes from 1 to N in CurrentSignalSize steps/ The amount of iterations I take for the  Original signal length / current Signal lenght
            for l = 0:half_CurrentSignalSize-1                                                                            % Goes from 0 to half of the currentSignalSize because we calculate both halfs at the same time

                factor_CurrentPosition_1 = factor_iteration(l+1) * FFT_iterativ_signal_1(k+l+half_CurrentSignalSize);     % Factor for the current signalposition
                CurrentPosition_1 = FFT_iterativ_signal_1(k+l);                                                           % Current signalposition

                FFT_iterativ_signal_1(k+l) = CurrentPosition_1 + factor_CurrentPosition_1;                                % Calculation first half
                FFT_iterativ_signal_1(k+l+half_CurrentSignalSize) = CurrentPosition_1 - factor_CurrentPosition_1;         % Calculation last half

                factor_CurrentPosition_2 = factor_iteration(l+1) * FFT_iterativ_signal_2(k+l+half_CurrentSignalSize);     % Factor for the current signalposition
                CurrentPosition_2 = FFT_iterativ_signal_2(k+l);                                                           % Current signalposition

                FFT_iterativ_signal_2(k+l) = CurrentPosition_2 + factor_CurrentPosition_2;                                % Calculation first half
                FFT_iterativ_signal_2(k+l+half_CurrentSignalSize) = CurrentPosition_2 - factor_CurrentPosition_2;         % Calculation last half

            end
        end
    end
end