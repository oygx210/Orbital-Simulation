%% Quick Example to add sooth color changing throughout a plot
clf

%dummy variables
x=1:100;
y=sin(2*pi*2*x./100);

%%% creating the scale
% smoothness
smoothness = 50;
colour_wheel = hsv(smoothness);

for i=1:length(x)
hold on
%lookingup colour triplet
colour_trip = colour_wheel(mod(i,smoothness)+1,:);
plot(x(i), y(i),'o', 'MarkerFace', colour_trip)
end
