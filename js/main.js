{

    let init = function () {
        document.getElementById("arribainicio").addEventListener("click", topFunction);
        document.addEventListener("scroll", scrollFunction);
        $(window).scroll(debug);
    }

    let topFunction = function () {
        document.body.scrollTop = 0; // For Safari
        document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
    }

    let scrollFunction = function () {
        if (document.body.scrollTop > 776 || document.documentElement.scrollTop > 776) {
            document.getElementById("arribainicio").style.display = "block";
        } else {
            document.getElementById("arribainicio").style.display = "none";
        }
    }

    let debug = function () {
        let tempScrollTop = $(window).scrollTop();
        console.log("Scroll from Top: " + tempScrollTop.toString());
    };

    window.addEventListener("DOMContentLoaded", init);
}