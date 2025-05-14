; ALP for multiplication of two signed and unsigned numbers

.model small
.data
        num1_us  dw 5678H
        num2_us  dw 1234H
        mulus_lsb dw ?
        mulus_msb dw ?

        num1_s dw -5678H
        num2_s dw 1234H
        muls_lsb dw ?
        muls_msb dw ?
.code
        mov ax, @data
        mov ds, ax

        mov ax, num1_us
        mul num2_us
        mov mulus_lsb, ax
        mov mulus_msb, dx

        mov ax, num1_s
        imul num2_s
        mov muls_lsb, ax
        mov muls_msb, dx

        ends
        end
