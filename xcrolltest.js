var scrollbarWidth = 16;

function getPagePosition (el) {
	var pos = {left: 0, top: 0};
	var par = el.offsetParent;
	while (par)
	{
		pos.left += par.offsetLeft;
		pos.top += par.offsetTop;
		par = par.offsetParent;
	}
	return pos;
}

function positionScrollBar (sb, ta, adjLeft, adjTop) {
	var pos = getPagePosition (ta);
	if (ta.scrollHeight > ta.clientHeight)
	{
		sb.style.left = pos.left + ta.clientWidth + adjLeft;
	}
	else
	{
		sb.style.left = pos.left + ta.clientWidth + adjLeft -
scrollbarWidth;
	}
	sb.style.top  = pos.top + adjTop;
	document.body.appendChild(sb);
}

function scaleScrolling (sb, ta) {
	sb.firstChild.style.height = (ta.scrollHeight - 2) + 'px';
	sb.scrollTop = ta.scrollTop;
}

function syncTextareasMoz (sb1, sb2, ta1, ta2) {
	sb1.onscroll = function()
	{
		ta1.scrollTop = this.scrollTop;
		ta2.scrollTop = this.scrollTop;
		sb2.scrollTop = this.scrollTop;
	}
	sb2.onscroll = function ()
	{
		ta1.scrollTop = this.scrollTop;
		ta2.scrollTop = this.scrollTop;
		sb1.scrollTop = this.scrollTop;
	}
}

function createScrollBar (id, height, scrollHeight) {
	var sb = document.createElement('div');
	sb.id = id;
	sb.style.position = 'absolute';
	sb.style.width = '16px';
	sb.style.height = height;
	sb.style.border = 'none';
	sb.style.margin = '0px';
	sb.style.padding = '0px';
	sb.style.overflow = 'auto';
	sb.style.overflowX = 'hidden';

	var range = document.createElement('div');
	range.id = 'range';
	range.style.width = '0px';
	range.style.height = scrollHeight;
	range.style.border = '1px transparent solid';
	range.style.margin = '0px';
	range.style.padding = '0px';

	sb.appendChild(range);
	return sb;
}

function setupScrollBars (ta1, ta2) {
	if (document.all)
	{
		syncTextareas (ta1, ta2);
	}
	else if (ta1.addEventListener)
	{
		var sb1 = createScrollBar('sb1', ta1.clientHeight
+ 'px', (ta1.scrollHeight - 2) + 'px');
		var sb2 = createScrollBar('sb2', ta2.clientHeight
+ 'px', (ta2.scrollHeight - 2) + 'px');
		positionScrollBar (sb1, ta1, (ta1.offsetLeft + 3),
(ta1.offsetTop + 2));
		positionScrollBar (sb2, ta2, (ta2.offsetLeft + 3),
(ta2.offsetTop + 2));

		ta1.addEventListener("input",
				     function () { scaleScrolling(sb1,
ta1) },
				     false);
		ta2.addEventListener("input",
				     function () { scaleScrolling(sb2,
ta2) },
				     false);

		syncTextareasMoz (sb1, sb2, ta1, ta2);
	}
}

onload = function() {
	var ta1 = document.getElementById('ta1');
	var ta2 = document.getElementById('ta2');
	ta1.value = ta2.value = '';
	setupScrollBars(ta1, ta2);
}