% THIS IS A DEMO FILE THAT SERVES AS TEMPLATE TO HOW ALL OTHER FILES USED TO HOUSE FUNCTIONS WILL BE
% PROPERLY DOCUMENT AND COMENT YOUR CODE, ALSO MAKE THE FILE LOOK NICE

%{
Create a function that prints "Hello <name>!"
where <name> is a string input to the function. it also returns the name

Prototype:        output = helloWorld(name)
parameters:       name -> string
                  output -> string

Constraints:      Add input validation that converts any other input datatype to string.
Example:          print(helloWorld([1, 2, 3])
output:           hello [1, 2, 3]!
%}


%------------------ Your function definition goes here ---------------------- %


function output = helloWorld(name)
    if ~ischar(name)
        name = mat2str(name);                 % Convert non-char inputs to string
    end
    
    output = ['Hello ', name, '!'];
    
    disp(output);
end


% ----------------- End of definition, put tests below ---------------------- %


print(helloWorld([1, 2, 3]));
% Output: Hello [1 2 3]!


% ---------------------------- End of file ---------------------------------- %
