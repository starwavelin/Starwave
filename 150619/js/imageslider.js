
var ImageSlider = {
    init: function() {
        var sliders = ImageSlider.getElementsByClass("imageslider", "div");
        for (var i = 0; sliders[i]; i++) {
            var slider = sliders[i];
            ImageSlider.createSlider(slider);
        }
    },
    createSlider: function(sliderDiv) {
        //default properties
        sliderDiv.delay = 10000;
        sliderDiv.usefadein = true;
        sliderDiv.fadeinspeed = 200;
        
        var myreg = /sliderdelay_(\d+)/
        var mymatch = myreg.exec(sliderDiv.className);
        if (mymatch) {
            if (mymatch.length > 0) {
                sliderDiv.delay = parseInt(mymatch[1]);
            }
        }

        myreg = /usefadein_(yes|no)/
        mymatch = myreg.exec(sliderDiv.className);
        if (mymatch) {
            if (mymatch.length > 0) {
                if (mymatch[1] === "no") sliderDiv.usefadein = false;
            }
        }

        var myreg = /fadeinspeed_(\d+)/
        var mymatch = myreg.exec(sliderDiv.className);
        if (mymatch) {
            if (mymatch.length > 0) {
                sliderDiv.fadeinspeed = parseInt(mymatch[1]);
            }
        }

        sliderDiv.activeIndex = 0;
        sliderDiv.imageHolders = ImageSlider.getElementsByClass("", "dt", sliderDiv);
        sliderDiv.links = [];
        sliderDiv.images = [];

        var holderCnt = sliderDiv.imageHolders.length;
        for (var i = 0; i < holderCnt; i++) {
            var dt = sliderDiv.imageHolders[i];
            if (i > 0) {
                dt.className = "hidden";
            }
            var link = dt.firstChild;
            while (link.nodeName != "A") {
                link = link.nextSibling;
            }
            sliderDiv.links[sliderDiv.links.length] = link;

            var img = link.firstChild;
            while (img.nodeName != "IMG") {
                img = img.nextSibling;
            }
            sliderDiv.images[sliderDiv.images.length] = img;
            if (!img.id) img.id = sliderDiv.id + "_img" + i;
        }

        //find all dd tags within the sliderdiv and make all but the first invisible
        sliderDiv.imageDescriptions = ImageSlider.getElementsByClass("", "dd", sliderDiv);
        var descCnt = sliderDiv.imageDescriptions.length;
        for (var i = 0; i < descCnt; i++) {
            var dd = sliderDiv.imageDescriptions[i];
            dd.className = "hidden";
        }

        //check for the noscript toolbar
        //element will have class = scriptoffmenu-sliderid
        var tb = ImageSlider.getElementsByClass("scriptoffmenu-" + sliderDiv.id, "ul", sliderDiv)[0];
        if (tb) {
            sliderDiv.removeChild(tb);
        }
        //create the toolbar
        sliderDiv.toolbar = document.createElement("ul");
        sliderDiv.toolbarButtons = [];
        for (var i = 0; i < holderCnt; i++) {
            var item = document.createElement("li");
            sliderDiv.toolbar.appendChild(item);
            var itemlink = document.createElement("a");
            item.appendChild(itemlink);
            var caption = sliderDiv.images[i].alt;
            var itemText = document.createTextNode(testlinks[i]);
            //var itemText = document.createTextNode(sliderDiv.links[i].title);
            sliderDiv.links[i].title = caption;
            itemlink.appendChild(itemText);
            sliderDiv.toolbarButtons[sliderDiv.toolbarButtons.length] = itemlink;
            if (i === 0) itemlink.className = "active";
            itemlink.href = testurls[i];
            itemlink.title = caption;
            itemlink.itemIndex = i;
            itemlink.slider = sliderDiv;
            itemlink.onclick = function() {
				window.open(this.href);
                if (this.slider.activeIndex != this.itemIndex) {
                    ImageSlider.hideAllImages(this.slider);
                    ImageSlider.showImage(sliderDiv, this.itemIndex, false);
                }
                this.blur();
                return false;
            }
            itemlink.onmouseover = function() {
                clearTimeout(this.slider.currTimeOut);
            }
            itemlink.onmouseout = function() {
                this.slider.currTimeOut = setTimeout("ImageSlider.slideShow('" + sliderDiv.id + "')", sliderDiv.delay);
            }
        }
        sliderDiv.appendChild(sliderDiv.toolbar);
        //start the slide show
        sliderDiv.currTimeOut = setTimeout("ImageSlider.slideShow('" + sliderDiv.id + "')", sliderDiv.delay);
    },
    slideShow: function(sliderDivID) {
        var sliderDiv = document.getElementById(sliderDivID);
        var currIndex = sliderDiv.activeIndex;
        currIndex += 1;
        if (currIndex === sliderDiv.imageHolders.length) currIndex = 0;
        ImageSlider.hideAllImages(sliderDiv);
        ImageSlider.showImage(sliderDiv, currIndex, true);
        sliderDiv.currTimeOut = setTimeout("ImageSlider.slideShow('" + sliderDiv.id + "')", sliderDiv.delay);
    },
    hideAllImages: function(sliderDiv) {
        var holdersCnt = sliderDiv.imageHolders.length;
        for (var i = 0; i < holdersCnt; i++) {
            sliderDiv.imageHolders[i].className = "hidden";
            sliderDiv.toolbarButtons[i].className = "";
        }
    },
    showImage: function(sliderDiv, itemIndex, allowFade) {
        sliderDiv.imageHolders[itemIndex].className = "";
        if (sliderDiv.usefadein && allowFade) {
            ImageSlider.setOpacity(sliderDiv.images[itemIndex], 0);
            ImageSlider.fadeIn(sliderDiv.images[itemIndex].id, 0);
        }
        sliderDiv.activeIndex = itemIndex;
        sliderDiv.toolbarButtons[itemIndex].className = "active";
    },
    getElementsByClass: function(classValue, tagName, parentElement) {
        var elementArray = [];

        if (tagName) {
            if (parentElement) {
                elementArray = parentElement.getElementsByTagName(tagName);
            } else {
                elementArray = document.getElementsByTagName(tagName);
            }
        } else {
            if (!parentElement) {
                if (document.all) {
                    elementArray = document.all;
                } else {
                    elementArray = document.getElementsByTagName("*");
                }
            } else {
                elementArray = parentElement.getElementsByTagName("*");
            }
        }
        var matchedArray = [];
        if (classValue.length > 0) {
            var pattern = new RegExp("(^| )" + classValue + "( |$)");

            for (var i = 0; i < elementArray.length; i++) {
                if (pattern.test(elementArray[i].className)) {
                    matchedArray[matchedArray.length] = elementArray[i];
                }
            }
        } else {
            matchedArray = elementArray;
        }

        return matchedArray;
    },
    fadeIn: function(objId, opacity) {
        if (opacity <= 100) {
            var obj = document.getElementById(objId);
            ImageSlider.setOpacity(obj, opacity);
            opacity += 10;
            window.setTimeout("ImageSlider.fadeIn('" + objId + "'," + opacity + ")", ImageSlider.fadeinspeed);
        }
    },
    setOpacity: function(obj, opacity) {
        opacity = (opacity == 100) ? 99.999 : opacity;
        // IE/Win
        obj.style.filter = "alpha(opacity:" + opacity + ")";
        // Safari<1.2, Konqueror
        obj.style.KHTMLOpacity = opacity / 100;
        // Older Mozilla and Firefox
        obj.style.MozOpacity = opacity / 100;
        // Safari 1.2, newer Firefox and Mozilla, CSS3
        obj.style.opacity = opacity / 100;
    },
    removeClass: function(element, classValue) {
        var pattern = new RegExp("(^| )" + classValue + "( |$)");
        element.className = element.className.replace(pattern, "$1");
        element.className = element.className.replace(/ $/, "");
    },
    addLoadEvent: function(func) {
        var oldonload = window.onload;
        if (typeof window.onload != 'function') {
            window.onload = func;
        } else {
            window.onload = function() {
                oldonload();
                func();
            }
        }
    }
}
ImageSlider.addLoadEvent(ImageSlider.init);