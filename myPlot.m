function myPlot(X,Ys,inputTitle, xAxisLabel, yAxisLabel, yLabels, type)

%{

Write plotting code that will take an array of signals Y with corresponding time points X and generate
a plot. The type of plot is indicated by type. The type can be set to
"stem" or "continuous".

Input Sizes:

>>> size(X) 
sz =
    1 x N
>>> size(Ys) %% M signals of length N (each row is a signal)
sz = 
    M x N 

>>> size(yLabels)
sz = 
    1 x N

Your plot should include the following:
- title 
- axis labels 
- a legend (with a label for each signal Y set in the array yLabels)

Your code should catch sizing errors and output a description of the error.
For example, if length(X) ~= length(Ys[0]), your code should not generate a
plot and instead output an error message for the user. 
%}

    % Validate inputs
    [M, N] = size(Ys);
    if length(X) ~= N
        error('Error: Length of X must match the number of columns in Ys.');
    end
    if length(yLabels) ~= M
        error('Error: Number of yLabels must match the number of rows in Ys.');
    end

    % Create the plot
    figure;
    hold on; % Allows multiple signals to be plotted on the same graph

    % Plot based on the specified type
    switch lower(type)
        case 'stem'
            for i = 1:M
                stem(X, Ys(i, :), 'DisplayName', yLabels{i}); % Add each signal as a stem plot
            end
        case 'continuous'
            for i = 1:M
                plot(X, Ys(i, :), 'DisplayName', yLabels{i}); % Add each signal as a continuous line plot
            end
        otherwise
            error('Error: Invalid plot type. Use "stem" or "continuous".');
    end

    % Add title, axis labels, and legend
    title(inputTitle);
    xlabel(xAxisLabel);
    ylabel(yAxisLabel);
    legend('show'); % Display the legend with the labels from yLabels

    hold off; % Release the plot
end

