; ----------------------------------------------------------------------------
; An implementation of the recursive function:
;
;   uint64_t factorial(uint64_t n) {
;       return (n <= 1) ? 1 : n * factorial(n-1);
;   }
; ----------------------------------------------------------------------------

        global  _factorial

        section .text
_factorial:
        cmp     rdi, 1                  ; n <= 1?
        jnbe    L1                      ; if not, go do a recursive call
        mov     rax, 1                  ; otherwise return 1
        ret
L1:
        push    rdi                     ; save n on stack (also aligns %rsp!)
        dec     rdi                     ; n-1
        call    _factorial               ; factorial(n-1), result goes in %rax
        pop     rdi                     ; restore n
        imul    rax, rdi                ; n * factorial(n-1), stored in %rax
        ret

        ; gcc -> creates a textual rep of machine code
        ; gcc invoke les linkers pour generer un executable
        ; using modern compilers, the generated code is at least as efficient as a skilled am programmer
        ; High level language is portable to other machines while ASM is machine specific
        ; why we should learn ASM
        ; understanding, read and write is a valuable skill for a programmer
        ; by giving flags we can generate ASM code from C
        ; we can read how compiler optitimize, and see underline innefencie of the code
        ; before it was write and read and now it is shifte it read and understand 
        ; generated code fairly follow a pattern, it is easier to read


        const STARTING_CAPACITY = 8

function djb2(str){
      let _hash = 5381;
      return Math.abs(str.split("")
      .reduce((acc, curr) => ((acc << 5) + acc) + curr.codePointAt(0) , 5381))
}


class Node {
    constructor(key, val){
        this.key = key
        this.val = val
        this.hash = null
        this.next = null
    }
}

const itShouldExpand = (size, capacity) => size >= capacity


function hashmap(){
    return {
        capacity: STARTING_CAPACITY,
        size: 0,
        array: Array(STARTING_CAPACITY),
        push(key, val){
            if(itShouldExpand(this.size, this.capacity)){
                this.capacity*=2
            }
            let hash = djb2(key)
            let node = new Node(key, val)
            node.hash = hash
            let current_elem = this.array[hash % this.capacity]
            if(!current_elem){
                this.array[hash % this.capacity] = node
                this.size++
                return
            }
            let curr = current_elem
            while(curr.next != null){
                if(curr.key == key){
                    curr.val = val;
                    return
                }
                curr = curr.next
            }
                
            curr.next = node
            this.size++
            return
        }
    }
}


const m = hashmap()
m.push("jiad", 90)
console.log({a:m})

m.push("asdj", 90)
m.push("jiads", 90)
m.push("jiada", 90)
m.push("jiadd", 90)
m.push("jiadgg", 90)
m.push("jiadgga", 90)
m.push("jiadggasdcfds", 90)
m.push("jiadggasdcfdsddd", 90)
m.push("jiadggasdcfdsdddsd", 90)
m.push("jiadggasdcfdsdddsddsf", 90)
m.push("jiadggasdcfdsdddsddsfdfsdfd", 90)

console.log({a:m.array})
console.log({two: m.array[3].next, s: m})