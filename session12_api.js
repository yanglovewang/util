var log = function() {
	console.log.apply(console, arguments);
}

var e = function(element) {
	return document.querySelector(element);
}

//对某个元素进行监听
var bindEvent = function(element, eventName, callback) {
    element.addEventListener(eventName, callback);
}

//css开关：元素， 添加或关闭的类
var toggleClass = function(element, className) {
	if(element.classList.contains(className)) {
		element.classList.remove(className);
	} else {
		element.classList.add(className);
	}
}

//  绑定同类事件：同类元素，监听事件回掉函数
var bindAll = function(selector, eventName, callback) {
	for (var i = 0; i < selector.length; i++) {
		var button = selector[i];
		bindEvent(button, eventName, callback);
	}
}

//事件委托获取子节点:父节点 ，子节点类属性
var sonEvent = function(parent, className) {
	return parent.querySelector(className);
}

//返回除了target子节点外的其他子节点
var otherSonElement = function(parent, target, className) {
	var others = [];
	var sons = parent.querySelectorAll(className);
	for (var i = 0; i < sons.length; i++) {
		if(sons[i].src !== target.src) {
			others.push(sons[i]);
		}
	}
	return others;
}

//获取当前时间
function clock()
{
	var d=new Date();
	var t=d.toLocaleTimeString();
	document.getElementById("clock").value=t;
}