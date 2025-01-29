function result = myFunction(input)
% This function demonstrates a solution to the MATLAB bug related to implicit type
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

% Solution: Explicitly check if the array is empty before indexing
if ~isempty(result2)
    index = 1;
    value = result2(index); 
    disp(['Value at index ', num2str(index), ': ', num2str(value)]);
else
    disp('Result is an empty array. Cannot index.');
end
end