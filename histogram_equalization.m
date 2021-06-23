
clear all,
clc;
clf;
close all;

[I,map] = imread('musa512.jpg');
figure, imshow(I);                  		
level = graythresh(I);
display(level);
BW = im2bw(I,level);
figure, imshow(BW);             	
grilk = rgb2gray(I);            	
figure, a = histeq(grilk);   

  	 
subplot(2,2,1),imshow(grilk);  	 
subplot(2,2,2),imhist(grilk); 
subplot(2,2,3),imshow(a);    
subplot(2,2,4),imhist(a);
