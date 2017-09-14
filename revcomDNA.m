function output = revcomDNA(rand_seq)
for ii=1:length(rand_seq)
    if rand_seq(ii) == 'A';
       rand_seq(ii) = 'T';
    elseif rand_seq(ii) == 'T';
       rand_seq(ii) = 'A';
    elseif rand_seq(ii) == 'C';
       rand_seq(ii) = 'G';
    else rand_seq(ii) = 'C';
    end 
end
output = rand_seq;