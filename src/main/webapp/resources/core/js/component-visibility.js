/**
 * Created by Kenny on 2016/12/28.
 */
function showComponentInlineById(componentId) {
    var component = document.getElementById(componentId);
    if (null != component) {
        component.style.display = "inline";
    }
}

function hideComponentById(componentId) {
    var component = document.getElementById(componentId);
    if (null != component) {
        component.style.display = "none";
    }
}