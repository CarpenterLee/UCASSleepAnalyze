function id=getResionId(regions_base, r)
id = -1;
for i=1:size(regions_base)
    ri = regions_base(i);
    ct_x = r.Centroid(1);
    ct_y = r.Centroid(2);
    bd_x = ri.BoundingBox(1);
    bd_y = ri.BoundingBox(2);
    bd_x_len = ri.BoundingBox(3);
    bd_y_len = ri.BoundingBox(4);
    if bd_x <=ct_x && ct_x <= bd_x+bd_x_len && bd_y <= ct_y && ct_y<=bd_y+bd_y_len
        id = i;
    end;
end;
end