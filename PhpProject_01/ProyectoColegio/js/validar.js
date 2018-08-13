/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    
    
    
    $('.validar-Prof').keydown(function () {
        /* $ Seleccionador, this Objeto Con atributos*/
        if (((this).value.length) === 5 && !isNaN(parseInt(this.value))) {
            /*El padre del elemento */
            $(this).parent().parent().attr('class', 'form-group has-success');
        } else {
            $(this).parent().parent().attr('class', 'form-group has-error');
        }
        //Devuelve los hermanos que son dos el LABEL Y EL SPAN inicializa concero

        /*  $(a[1]).text(this.value.length);*/
    });
    $('.validar-Prof').focusout(function () {
        if (((this).value.length) === 5 && !isNaN(parseInt(this.value))) {
            $(this).parent().parent().attr('class', 'form-group has-success');
        } else {
            $(this).parent().parent().attr('class', 'form-group has-error');
        }
        /*Obtiene los hermanos*/

        /*   $(a[1]).text((this.value.length));*/
        /* $('span').text(this.value.length);*/
    });

    $('.validar-Prof').keyup(function () {
        if (((this).value.length) === 5 && !isNaN(parseInt(this.value))) {
            $(this).parent().parent().attr('class', 'form-group has-success');
        } else {
            $(this).parent().parent().attr('class', 'form-group has-error');
        }
        /*Obtiene los hermanos*/

        /*   $(a[1]).text((this.value.length));*/
        /* $('span').text(this.value.length);*/
    });
    
    
    
    /*Consulta Notas*/
    $('.panel-title a').click(function () {
        /* var hermano=$(this).siblings();
         $(hermano[0]).toggle(600);
         */
        var padre = $(this).parent().parent();
        var tio = $(padre).siblings();
        $(tio[0]).toggle('fast');


    });
    /* Agregar Stilo a la Primer columna*/

    /*Valida formulario Alumno*/

    $('.validar').keydown(function () {
        /* $ Seleccionador, this Objeto Con atributos*/
        if (((this).value.length) === 4 && !isNaN(parseInt(this.value))) {
            /*El padre del elemento */
            $(this).parent().parent().attr('class', 'form-group has-success');
        } else {
            $(this).parent().parent().attr('class', 'form-group has-error');
        }
        //Devuelve los hermanos que son dos el LABEL Y EL SPAN inicializa concero

        /*  $(a[1]).text(this.value.length);*/
    });
    $('.validar').focusout(function () {
        if (((this).value.length) === 4 && !isNaN(parseInt(this.value))) {
            $(this).parent().parent().attr('class', 'form-group has-success');
        } else {
            $(this).parent().parent().attr('class', 'form-group has-error');
        }
        /*Obtiene los hermanos*/

        /*   $(a[1]).text((this.value.length));*/
        /* $('span').text(this.value.length);*/
    });

    $('.validar').keyup(function () {
        if (((this).value.length) === 4 && !isNaN(parseInt(this.value))) {
            $(this).parent().parent().attr('class', 'form-group has-success');
        } else {
            $(this).parent().parent().attr('class', 'form-group has-error');
        }
        /*Obtiene los hermanos*/

        /*   $(a[1]).text((this.value.length));*/
        /* $('span').text(this.value.length);*/
    });
    
    
    
    
});

