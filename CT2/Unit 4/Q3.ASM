; Write ALP to find the sum of series. Assume series of 10 numbers.

.model small
.data
        arr dw 14H,6H,35H,35H,35H,36H,25H,13H,46H,5AH
        sum dw 0H
.code
        mov ax, @data
        mov ds, ax
        mov cx, 0AH
        mov si, offset arr
     up:mov ax, [si]
        add sum, ax
        add si, 2H
        loop up
        ends
        end

// https://classroom.google.com/c/Njg0OTQyMDk2MjUy