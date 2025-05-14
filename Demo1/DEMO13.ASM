; ALP to perform addition and subtraction of two given numbers

.model small
.data
        num1  dw 4567H
        num2  dw 1234H
        add_n dw ?
        sub_n dw ?
.code
        mov ax, @data
        mov ds, ax

        mov ax, num1
        add ax, num2
        mov add_n, ax

        mov ax, num1
        sub ax, num2
        mov sub_n, ax

        ends
        end
