
function J = image_adjust(I, Imatch)

R=I(:,:,1);%��ȡԭͼ��Rͨ��  
G=I(:,:,2);%��ȡԭͼ��Gͨ��  
B=I(:,:,3);%��ȡԭͼ��Bͨ��  
Rmatch=Imatch(:,:,1);%��ȡƥ��ͼ��Rͨ��  
Gmatch=Imatch(:,:,2);%��ȡƥ��ͼ��Gͨ��  
Bmatch=Imatch(:,:,3);%��ȡƥ��ͼ��Bͨ��  
Rmatch_hist=imhist(Rmatch);%��ȡƥ��ͼ��Rͨ��ֱ��ͼ  
Gmatch_hist=imhist(Gmatch);%��ȡƥ��ͼ��Gͨ��ֱ��ͼ  
Bmatch_hist=imhist(Bmatch);%��ȡƥ��ͼ��Bͨ��ֱ��ͼ  
Rout=histeq(R,Rmatch_hist);%Rͨ��ֱ��ͼƥ��  
Gout=histeq(G,Gmatch_hist);%Gͨ��ֱ��ͼƥ��  
Bout=histeq(B,Bmatch_hist);%Bͨ��ֱ��ͼƥ��  
J(:,:,1)=Rout;  
J(:,:,2)=Gout;  
J(:,:,3)=Bout;  