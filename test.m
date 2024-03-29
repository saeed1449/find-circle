rawimg = imread('TestImg_CHT_b3.bmp');
  fltr4img = [1 1 1 1 1; 1 2 2 2 1; 1 2 4 2 1; 1 2 2 2 1; 1 1 1 1 1];
  fltr4img = fltr4img / sum(fltr4img(:));
  imgfltrd = filter2( fltr4img , rawimg );
  tic;
  [accum, circen, cirrad] = CircularHough_Grd(imgfltrd, [15 80], 8, 10);
  toc;
  figure(1); imagesc(accum); axis image;
  title('Accumulation Array from Circular Hough Transform');
  figure(2); imagesc(rawimg); colormap('gray'); axis image;
  hold on;
  plot(circen(:,1), circen(:,2), 'r+');
  for k = 1 : size(circen, 1),
      DrawCircle(circen(k,1), circen(k,2), cirrad(k), 32, 'b-');
  end
  hold off;
  title(['Raw Image with Circles Detected ', ...
      '(center positions and radii marked)']);