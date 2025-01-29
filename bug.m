function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to implicit type
% conversion and logical indexing.

if input > 10
  result = input + 1; % Correct behavior
else
  result = []; % Empty array
end

% Example usage:
input1 = 12; % Expect 13
input2 = 5;  % Expect []

result1 = myFunction(input1);
result2 = myFunction(input2);

% Problem: If you try to index into result2 like so:
% index = 1;
% value = result2(index);
% MATLAB will throw an error: Subscript indices must either be real positive integers or logicals.

end