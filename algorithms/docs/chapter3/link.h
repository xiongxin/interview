typedef struct node *link;
struct node
{
    int item;
    link next;
};

link reverse(link x);