; ALP to add, subtract, multiply and divide two BCD numbers

.model small
.data
        num1    dw 5678H
        num2    dw 0123H
        add_bcd dw ?
        sub_bcd dw ?
.code
        mov ax, @data
        mov ds, ax

        mov al, byte ptr num1
        add al, byte ptr num2
        daa
        mov byte ptr add_bcd, al

        mov al, byte ptr num1+1
        adc al, byte ptr num2+1
        daa
        mov byte ptr add_bcd+1, al

        mov al, byte ptr num1
        sub al, byte ptr num2
        das
        mov byte ptr sub_bcd, al

        mov al, byte ptr num1+1
        sbb al, byte ptr num2+1
        das
        mov byte ptr sub_bcd+1, al

        ends
        end
