function cost2(boxes)
% This is an example of an If Elseif construct
if boxes < 7
	cost = boxes*2.5
elseif boxes < 9
	cost = boxes*2
elseif boxes > 9
	cost = boxes*1.5
end