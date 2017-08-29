
fileX = fopen('E:\\DATA\\train\\C0X.txt');
C0X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C0Y.txt');
C0Y = fscanf(fileY, '%lf');
fclose(fileY);

data0 = [C0X, C0Y];

%----------------------------------------------


fileX = fopen('E:\\DATA\\train\\C1X.txt');
C1X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C1Y.txt');
C1Y = fscanf(fileY, '%lf');
fclose(fileY);

data1 = [C1X, C1Y];

%----------------------------------------------

fileX = fopen('E:\\DATA\\train\\C2X.txt');
C2X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C2Y.txt');
C2Y = fscanf(fileY, '%lf');
fclose(fileY);

data2 = [C2X, C2Y];

%----------------------------------------------


fileX = fopen('E:\\DATA\\train\\C3X.txt');
C3X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C3Y.txt');
C3Y = fscanf(fileY, '%lf');
fclose(fileY);

data3 = [C3X, C3Y];

%----------------------------------------------


fileX = fopen('E:\\DATA\\train\\C4X.txt');
C4X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C4Y.txt');
C4Y = fscanf(fileY, '%lf');
fclose(fileY);

data4 = [C4X, C4Y];

%----------------------------------------------


fileX = fopen('E:\\DATA\\train\\C5X.txt');
C5X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C5Y.txt');
C5Y = fscanf(fileY, '%lf');
fclose(fileY);

data5 = [C5X, C5Y];

%----------------------------------------------


fileX = fopen('E:\\DATA\\train\\C6X.txt');
C6X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C6Y.txt');
C6Y = fscanf(fileY, '%lf');
fclose(fileY);

data6 = [C6X, C6Y];

%----------------------------------------------


fileX = fopen('E:\\DATA\\train\\C7X.txt');
C7X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C7Y.txt');
C7Y = fscanf(fileY, '%lf');
fclose(fileY);

data7 = [C7X, C7Y];

%----------------------------------------------


fileX = fopen('E:\\DATA\\train\\C8X.txt');
C8X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C8Y.txt');
C8Y = fscanf(fileY, '%lf');
fclose(fileY);

data8 = [C8X, C8Y];

%----------------------------------------------


fileX = fopen('E:\\DATA\\train\\C9X.txt');
C9X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C9Y.txt');
C9Y = fscanf(fileY, '%lf');
fclose(fileY);

data9 = [C9X, C9Y];

%----------------------------------------------


fileX = fopen('E:\\DATA\\train\\C10X.txt');
C10X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C10Y.txt');
C10Y = fscanf(fileY, '%lf');
fclose(fileY);

data10 = [C10X, C10Y];

%----------------------------------------------


fileX = fopen('E:\\DATA\\train\\C11X.txt');
C11X = fscanf(fileX, '%lf');
fclose(fileX);

fileY = fopen('E:\\DATA\\train\\C11Y.txt');
C11Y = fscanf(fileY, '%lf');
fclose(fileY);

data11 = [C11X, C11Y];

%----------------------------------------------

data = [data0; data1; data2; data3; data4; data5; data6; data7; data8; data9; data10; data11];

figure;
hold on

plot(data0(:,1),data0(:,2),'r.','MarkerSize',15);

plot(data1(:,1),data1(:,2),'b.','MarkerSize',15);
plot(data2(:,1),data2(:,2),'g.','MarkerSize',15);
plot(data3(:,1),data3(:,2),'y.','MarkerSize',15);
plot(data4(:,1),data4(:,2),'c.','MarkerSize',15);
plot(data5(:,1),data5(:,2),'m.','MarkerSize',15);
plot(data6(:,1),data6(:,2),'r.','MarkerSize',15);
plot(data7(:,1),data7(:,2),'b.','MarkerSize',15);
plot(data8(:,1),data8(:,2),'g.','MarkerSize',15);
plot(data9(:,1),data9(:,2),'y.','MarkerSize',15);
plot(data10(:,1),data10(:,2),'c.','MarkerSize',15);
plot(data11(:,1),data11(:,2),'m.','MarkerSize',15);

axis equal
hold off

theclass = zeros(1200,1);
theclass(100:200) = 1;
theclass(201:300) = 2;
theclass(301:400) = 3;
theclass(401:500) = 4;
theclass(501:600) = 5;
theclass(601:700) = 6;
theclass(701:800) = 7;
theclass(801:900) = 8;
theclass(901:1000) = 9;
theclass(1001:1100) = 10;
theclass(1101:1200) = 11;

%Train the SVM Classifier
cl  = fitcsvm(data, theclass,'KernelFunction','rbf', 'BoxConstraint',Inf,'ClassNames',[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]);

%c1  = fitcsvm(data1, theclass,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',1);
%c2  = fitcsvm(data2, theclass,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',2);
%c3  = fitcsvm(data3, theclass,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',3);
%c4  = fitcsvm(data4, theclass,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',4);
%c5  = fitcsvm(data5, theclass,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',5);
%c6  = fitcsvm(data6, theclass,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',6);
%c7  = fitcsvm(data7, theclass,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',7);
%c8  = fitcsvm(data8, theclass,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',8);
%c9  = fitcsvm(data9, theclass,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',9);
%c10 = fitcsvm(data10,theclass,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',10);
%c11 = fitcsvm(data11,theclass,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',11);

% Predict scores over the grid
d = 0.02;
[x1Grid,x2Grid] = meshgrid(min(data(:,1)):d:max(data(:,1)), min(data(:,2)):d:max(data(:,2)));
xGrid = [x1Grid(:),x2Grid(:)];
[~,scores] = predict(cl,xGrid);

% Plot the data and the decision boundary
figure;
h(1:2) = gscatter(data(:,1),data(:,2),theclass,'bb','.');
hold on
ezpolar(@(x)1);
h(3) = plot(data(cl.IsSupportVector,1),data(cl.IsSupportVector,2),'ko');
contour(x1Grid,x2Grid,reshape(scores(:,2),size(x1Grid)),[0 0],'k');
legend(h,{'0', '2','Support Vectors'});
axis equal
hold off