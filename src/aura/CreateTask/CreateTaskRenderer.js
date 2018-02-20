({
    afterRender: function(cmp) {
        this.superAfterRender();
        var el = cmp.find('addBtn');
        alert(cmp.find('addBtn'));
        alert('el: ' + el);
        alert('cmp - ' + cmp );
        console.log(cmp);
        $A.util.removeClass(el.getElement(), 'uiButton');
    }
})