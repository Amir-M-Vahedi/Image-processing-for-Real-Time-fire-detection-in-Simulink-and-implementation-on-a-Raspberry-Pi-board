mypi=raspi
% openShell(mypi)
%sudo modprobe bcm2835-v4l2
% cam=cameraboard(mypi,'Resolution','1280x720')
wcam=webcam(mypi);
%%
for ii = 1:10
    img = snapshot(wcam);
    imagesc(img)
    drawnow
    
end