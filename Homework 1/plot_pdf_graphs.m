% plot_pdf_graphs.m
% -------------------------------------------------------------------------
% Graphs 3 p.d.f.'s, each with unique data in 1 window.
% -------------------------------------------------------------------------

figure

% -------------------------------------------------------------------------
% GRAPH 1 | Uniform Distribution
% -------------------------------------------------------------------------
% Vector x1 of length 10 with evenly spaced values from [-3, 3]
% Ending on 3.1 because 3 won't be included.
x1 = -3:6 / 9:3.1;
y1 = uniform_pdf(x1, -1.33, 2.54);

% Plot y1 with domain x1 in the first of 3 graphs
subplot(3,1,1)
plot(x1, y1)
title('Uniform Distribution over [3, 3] with bounds [-1.33, 2.54]')
xlabel('x')
ylabel('Uniform P.D.F.')

% -------------------------------------------------------------------------
% GRAPH 2 | Normal Distribution
% -------------------------------------------------------------------------
% Vector x2 of length 50 with evenly spaced values from [-2.5, 6]
x2 = -2.5:8.5 / 49:6
% Use a Normal distribution with a mean of 2.21 and a standard deviation of
% 1.15
y2 = normal_pdf(x2, 2.21, 1.15)

% Plot y2 with domain x2 in the first of 3 graphs
subplot(3,1,2)
plot(x2, y2)
title('Normal Distribution over [-2.5, 6] with mean = 2.21 and standard deviation = 1.15')
xlabel('x')
ylabel('Normal P.D.F.')

% -------------------------------------------------------------------------
% GRAPH 3 | Exponential Distribution
% -------------------------------------------------------------------------
% Vector x3 of length 50 with evenly spaced values from [-0.1, 10]
x3 = -0.1:10.1 / 49:10
% Use a exponential distribution with a mean of 3.48
y3 = exp_pdf(x3, 3.48)

% Plot y3 with domain x3 in the first of 3 graphs
subplot(3,1,3)
plot(x3, y3)
title('Exponential Distribution over [-0.1, 10] with mean = 3.48]')
xlabel('x')
ylabel('Uniform P.D.F.')
