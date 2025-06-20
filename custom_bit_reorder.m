function reordered_signal = custom_bit_reorder(signal)
    N = length(signal);

    bit_reversed_indices = zeros(1, N);
    num_bits = log2(N);                                            % Bit number

    for k = 0:N-1
        reversed_bin = flip(dec2bin(k, num_bits));                 % Convert to Binary and flip
        bit_reversed_indices(k + 1) = bin2dec(reversed_bin) + 1;   % Convert to dec again
    end
    reordered_signal = signal(bit_reversed_indices);               % Reorder signal
end