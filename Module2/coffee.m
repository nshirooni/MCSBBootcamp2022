

% n - number of days


nMax = 22; % max number of days to simulate

x(1) = .1;
y(1) = .1;
xStart = 4*rand(1,100) -2
yStart = 4*rand(1,100) -2

for i=1:100
    x(1) = xStart(i)
    y(1) = yStart(i)
end
    for n=2:nMax

        x(n) = x(n-1)^2 -y(n-1)^2 -0.8
        y(n) = 2*x(n-1)*y(n-1) + 0.156

    end % finish loop to little n
end % finished loop through x start

% THE MODEL ^
% ------------------------------------------
% THE BEHAVIOR / THE OUTPUT ?

figure(1)
plot(xStart,yStart,"kx");
ylabel('y')
xlabel('x')
