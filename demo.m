%This is the testing code of our paper "NO REFERENCE QUALITY OF HAZY IMAGES
%DEPENDING ON TRANSMISSION COMPONENT 
%ESTIMATION "

clear all,
clc,
close all,warning('off')

 co=imread('2.jpg'); 
 Q=TCL(co);
 figure(),imshow(co),title(sprintf('%f',Q))
