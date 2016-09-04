function writegif(name,frames,dt)
  nframe = length(frames);
 
  for i=1:nframe
    [image,map] = frame2im(frames(i));
    [im,map2]          =  rgb2ind(image,128);
    if i==1
      imwrite(im,map2,name,'GIF','WriteMode','overwrite','DelayTime',1,'LoopCount',inf);
    elseif i==nframe
      imwrite(im,map2,name,'WriteMode','append','DelayTime',2); 
    else
      imwrite(im,map2,name,'WriteMode','append','DelayTime',dt); 
    end
  end