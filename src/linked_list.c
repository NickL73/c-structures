#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "../include/linked_list.h"

/*Define constants used for error values*/
#define NULL_INP_ERROR 10001
#define ALLOC_FAILURE  10002

/*Function Prototypes*/
static linked_list_node_t * create_node (int p_data);

/*Public Functions*/
linked_list_t * create_new_linked_list (int * p_items, size_t num_items)
{
    linked_list_t * p_new_list = NULL;
    
    // if ((NULL == p_items) || (0 == num_items))
    // {
    //     goto COMPLETE;
    // }
    
    p_new_list = calloc(1, sizeof(linked_list_t));
    if (NULL == p_new_list)
    {
        goto COMPLETE;
    }
    p_new_list->size = num_items;

    uint8_t error_status = 0;
    for (size_t idx = 0; idx < num_items; idx++)
    {
        error_status = append_linked_list(*(p_items + idx), p_new_list);
    }

    COMPLETE:
        return  p_new_list;
}

uint64_t append_linked_list (int p_item, linked_list_t * p_list)
{
    uint64_t ret_val = 1;
   
    if (NULL == p_list)
    {
        ret_val = NULL_INP_ERROR;
        goto COMPLETE;
    }

    linked_list_node_t * p_new_node = create_node(p_item);
    if (NULL == p_new_node)
    {
        ret_val = ALLOC_FAILURE;
        goto COMPLETE;
    }

    if (NULL == p_list->p_head) //It's an empty list
    {
        p_list->p_head = p_new_node;
        p_list->size += 1;        
    }

    else
    {
        /*Otherwise, traverse to end of the list and append.*/
        linked_list_node_t * p_curr = p_list->p_head;
        while (NULL != p_curr->p_next)
        {
            p_curr = p_curr->p_next;
        }

        p_curr->p_next = p_new_node;
    }

    ret_val = EXIT_SUCCESS;

    COMPLETE:
        return ret_val;
}

uint64_t destroy_linked_list (linked_list_t * p_list)
{
    uint64_t ret_val = 0;
    
    if (NULL == p_list)
    {
        ret_val = NULL_INP_ERROR;
        goto COMPLETE;
    }

    linked_list_node_t * p_curr = p_list->p_head;

    while (NULL != p_curr)
    {
        linked_list_node_t * p_temp = p_curr;
        p_curr = p_curr->p_next;

        memset(p_temp, 0, sizeof(linked_list_node_t));
        free(p_temp);
        p_temp = NULL;
    }

    memset(p_list, 0, sizeof(linked_list_t));
    free(p_list);
    p_list = NULL;

    ret_val = EXIT_SUCCESS;

    COMPLETE:
        return ret_val;
} 

/*Private Functions*/
static linked_list_node_t * create_node (int p_data)
{
    linked_list_node_t * p_new_node = NULL;
    
    p_new_node = calloc(1, sizeof(linked_list_node_t));
    if (NULL == p_new_node)
    {
        goto COMPLETE;
    }

    p_new_node->p_data = p_data;
    p_new_node->p_next = NULL;

    COMPLETE:
        return p_new_node;
}
