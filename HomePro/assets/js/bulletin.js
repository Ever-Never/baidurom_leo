/**
 * @author  zhaojie02
 */

(function(){

	window.generateHeader = function(title){
		var header = document.getElementById("header"),
		    titleElm = wrapElm("h1", "title_h1", title),
		    titleDiv = createElm("div","title");
		titleDiv.appendChild(titleElm);
		
		if(header.hasChildNodes()) {
			header.parentElement.removeChild(header);
			header = createElm("div", "header");
			document.getElementById("wrapper").insertBefore(header, document.getElementById("content"));
		}
		header.appendChild(titleDiv);
	}

	window.replaceDetailWithHtml = function(detailHtml) {
		var bulletinDetails = document.getElementById("details");
		if (bulletinDetails.hasChildNodes()) {
			bulletinDetails.parentElement.removeChild(bulletinDetails);
			bulletinDetails = document.createElement("div");
			bulletinDetails.setAttribute("id", "details");
			document.getElementById("content").appendChild(bulletinDetails);
		}
		bulletinDetails.innerHTML = detailHtml;
	}

	window.showError = function(errorHtml) {
		var errorTable = createElm("table", "error");
		var errorMsgDiv = createElm("div", "errorMsg");
		//<tbody><tr><td>
		var errorTBody = document.createElement("tbody");
		var errorTR = document.createElement("tr");
		var errorTD = document.createElement("td");
		errorTD.appendChild(errorMsgDiv);
		errorTR.appendChild(errorTD);
		errorTBody.appendChild(errorTR);
		errorTable.appendChild(errorTBody);
		errorMsgDiv.innerHTML = errorHtml;
		document.body.appendChild(errorTable);
	}

	function wrapElm(tagName, id, text) {
		var elm = document.createElement(tagName), textNode = document.createTextNode(text);
		elm.setAttribute("id", id);
		elm.appendChild(textNode);

		return elm;
	}
	
	function createElm(tagName, id) {
		var elm = document.createElement(tagName);
		elm.setAttribute("id", id);
					
		return elm;
	}

	function init() {			
		document.addEventListener('DOMContentLoaded', function() {
		}, false);
	}
	
	init();
})();
