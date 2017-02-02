function cost3(boxes)
% This is an example of the Switch Case construct
switch boxes
	case 6
		cost = boxes* 2.5
	case 8
		cost = boxes* 2
	case 10
		cost = boxes*1.5
	otherwise
		cost = 0
end