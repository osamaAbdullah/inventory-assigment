<?php require_once '_nav-b.php' ?>
<script>
    
    let activeElement = $('.active');
    
    activeElement
        .parent()
        .next().css('background-color', '#ffffff')
        .children(':first')
        .css('border-radius', '0 7px 0 0')


    activeElement
        .parent()
        .prev().css('background-color', '#ffffff')
        .children(':first')
        .css('border-radius', '0 0 7px 0')
    
</script>
</body>
</html>