package java.Lists;

public class SLinkedlist { 
    
    /* This class is the nodes of the SinglyLinked List. They consist of a value and a pointer to the
    * node after them. */
    
    public class Node { 
        int value; 
        Node next;
        
        Node() { } 


        Node(int value) { 
            this(value, null);
        }

        // Constructor for node class 
        Node(int value, Node next) { 
            this.value = value; 
            this.next = next;
        }
    }

 
 
    // refrence to the front of the list 
    private Node head; 
    // size of llist
    private int size;  

    // initialize Sllist
    public SLinkedlist() { 
        head = null; 
        size = 0 ;
    }

    // constructor for linked list
    public SLinkedlist(Node head, int size) { 
        this.head = head; 
        this.size = size;
    }

    // insert at head
    public void inserHead(int x) { 
        insertNth(x, 0);
    }

    // insert at tails
    
    public void insertNodeAtTail(Node head, int data) {
        Node newNode = new Node(data);
        newNode.next = null;

        if (head == null) {
            head = newNode;
        } else {
            Node tailNode = head;
            while (tailNode.next != null) {
                tailNode = tailNode.next;
            }

            tailNode.next = newNode;
        }

    }

    public void insertNth(int data, int position) { 
        checkBound(0, size-1, position);
        // new Object of Type node 
        Node newNode = new Node(data); 
        Node cur = head; 

        if (head == null) { 
            head = newNode; 
            size++; 
            return;
        } else if (position == 0) { 
            newNode.next = head; 
            head = newNode; 
            size++;
            return;
        } 

        for(int i = 0; i < position - 1; i++) { 
            cur = cur.next;
        }
        newNode.next = cur.next; 
        cur.next = newNode;
        size++;
    }

    public void deleteNth(int position) { 
        checkBound(0, size-1, position);
        if(position == 0) { 
            Node destroy = head; 
            head = head.next; 
            destroy = null; 
            size--;
            return;
        }

        Node cur = head; 
        for(int i =0; i<position - 1; i++) { 
            cur = cur.next;
        }

        Node destroy = cur.next; 
        cur.next = cur.next.next;
        destroy = null; 
        size--;
    }

    public void deleteTail() { 
        deleteNth(size-1);
    }

    public void deleteHead() { 
        deleteNth(0);
    } 

    public void checkBound(int low, int hight, int position) { 
        if (position < low || position > hight) { 
            throw new IndexOutOfBoundsException(position + "");
        }
    }

    public void clear() { 
        Node cur = head; 

        while(cur != null) { 
            Node prev = cur; 
            cur = cur.next; 
            prev = null;
        }
        head = null; 
        size = 0;
    }

    public boolean isEmpty() { 
        return size == 0;
    }

    public int size() { 
        return size;
    }

    public Node getHead() { 
        return head;
    }

    public int count() { 
        int count = 0; 
        Node cur = head; 

        while(cur != null) { 
            cur = cur.next; 
            count++;
        }
        return count;
    }

    public boolean search(int key) { 
        Node cur = head; 

        while(cur != null) { 
            if(cur.value == key) { 
                return true;
            }
            cur = cur.next;
        } 
        return false;
    }

    // return element at special index
    public int getNth(int index) { 
        checkBound(0, size-1, index);
        Node cur = head; 
        for(int i = 0; i<index; i++){  
            cur = cur.next;
        }
        return cur.value;
    } 

    // print Elements of linked list
    static void printLinkedList(Node head) {
        Node current = head;

        while (current != null) {
            System.out.println(current.data);
            current = current.next;
        }
    }

    public String toString() { 
        StringJoiner joiner = new StringJoiner("->"); 
        Node cur = head; 

        while(cur != null) { 
            joiner.add(cur.value + "");
            cur = cur.next;
        }
        return joiner.toString();
    }

}
