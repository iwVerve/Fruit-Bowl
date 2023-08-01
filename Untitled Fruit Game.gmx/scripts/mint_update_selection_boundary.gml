///mint_update_selection_boundary()

for (var i = 0; i < ds_list_size(selectedInstances); i++)
{
    var inst = selectedInstances[| i];
    if (i == 0)
    {
        selectionLeft = inst.bbox_left;
        selectionTop = inst.bbox_top;
        selectionRight = inst.bbox_right;
        selectionBottom = inst.bbox_bottom;
    }
    else
    {
        selectionLeft = min(inst.bbox_left, selectionLeft);
        selectionTop = min(inst.bbox_top, selectionTop);
        selectionRight = max(inst.bbox_right, selectionRight);
        selectionBottom = max(inst.bbox_bottom, selectionBottom);
    }
}

mint_get_scale_handles();
