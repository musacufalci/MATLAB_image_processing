

%Histogram_streching

clear all
close all
clc

f=imread('musa512.jpg');
f=rgb2gray(f);

subplot(2,2,1),imshow(f)
subplot(2,2,3)
imshow(f)
imhist(f)

ylim('auto')
g=histeq(f,256);

subplot(2,2,2),imshow(g)
subplot(2,2,4)
imshow(g)
imhist(g)

ylim('auto')
