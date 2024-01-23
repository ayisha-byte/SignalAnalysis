% Question 1a
t = 0:0.01:2;
A1 = 1;
f1 = 1;
theta1 = 0;
A2 = 1.5;
f2 = 3;
theta2 = pi;
S1 = A1 * sin(2*pi*f1*t + theta1);
S2 = A2 * sin(2*pi*f2*t + theta2);
St = S1 + S2;
plot(t,S1)
hold on
plot(t,S2)
plot(t, St)
xlabel ("Time (s)")
ylabel ("Amplitude")
title ("Plot of All Three Signals")
legend ("S1", "S2", "St")



% Generate random number of components between 5 and 10  
n = randi([5,10]);
%fprintf('The value of n is: %d\n', n);

% Generate amplitudes
A = 5*rand(1,n).^2;  % Amplitudes uniformly distributed between 0 and 5  

% Generate frequencies  
f = 10*rand(1,n);  % Frequencies uniformly distributed between 0 and 10

% Generate phase angles
theta = 2*pi*rand(1,n); % Phase angles uniformly distributed between 0 and 2*pi 

% Time vector
t = 0:0.01:2;  

% Preallocate composite signal
s = zeros(size(t));   

% Plot individual sinusoidal components
figure;
for i = 1:n
  % Generate each sinusoidal component
  si = A(i)*sin(2*pi*f(i)*t + theta(i));  
  
  % Plot each component
  plot(t,si);
  hold on;   
end

legend('s_1','s_2','s_3','s_4','s_5','s_6','s_7','s_8','s_9','s_{10}');
xlabel('Time (s)');
ylabel('Amplitude');

% Generate composite signal 
for i = 1:n
  s = s + A(i)*sin(2*pi*f(i)*t + theta(i));
end
fprintf('Frequencies: ');
fprintf('%f ', f);
fprintf('\n');

% Plot composite signal
figure;
plot(t,s);
xlabel('Time (s)');
ylabel('Amplitude');
