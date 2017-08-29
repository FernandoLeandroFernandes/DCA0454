
file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C0X.txt');
C0X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C0Y.txt');
C0Y = fscanf(file, '%lf');
fclose(file);

C0 = [C0X, C0Y];

%-----------------------------

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C1X.txt');
C1X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C1Y.txt');
C1Y = fscanf(file, '%lf');
fclose(file);

C1 = [C1X, C1Y];

%-----------------------------

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C2X.txt');
C2X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C2Y.txt');
C2Y = fscanf(file, '%lf');
fclose(file);

C2 = [C2X, C2Y];

%-----------------------------

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C3X.txt');
C3X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C3Y.txt');
C3Y = fscanf(file, '%lf');
fclose(file);

C3 = [C3X, C3Y];

%-----------------------------

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C4X.txt');
C4X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C4Y.txt');
C4Y = fscanf(file, '%lf');
fclose(file);

C4 = [C4X, C4Y];

%-----------------------------

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C5X.txt');
C5X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C5Y.txt');
C5Y = fscanf(file, '%lf');
fclose(file);

C5 = [C5X, C5Y];

%-----------------------------

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C6X.txt');
C6X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C6Y.txt');
C6Y = fscanf(file, '%lf');
fclose(file);

C6 = [C6X, C6Y];

%-----------------------------

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C7X.txt');
C7X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C7Y.txt');
C7Y = fscanf(file, '%lf');
fclose(file);

C7 = [C7X, C7Y];

%-----------------------------

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C8X.txt');
C8X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C8Y.txt');
C8Y = fscanf(file, '%lf');
fclose(file);

C8 = [C8X, C8Y];

%-----------------------------

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C9X.txt');
C9X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C9Y.txt');
C9Y = fscanf(file, '%lf');
fclose(file);

C9 = [C9X, C9Y];

%-----------------------------

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C10X.txt');
C10X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C10Y.txt');
C10Y = fscanf(file, '%lf');
fclose(file);

C10 = [C10X, C10Y];

%-----------------------------

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C11X.txt');
C11X = fscanf(file, '%lf');
fclose(file);

file = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\DATA-12PATTERNS\\train\\C11Y.txt');
C11Y = fscanf(file, '%lf');
fclose(file);

C11 = [C11X, C11Y];

%-----------------------------

figure;
hold on;

plot(C0X,  C0Y,  'r.');
plot(C1X,  C1Y,  'g.');
plot(C2X,  C2Y,  'b.');
plot(C3X,  C3Y,  'y.');
plot(C4X,  C4Y,  'c.');
plot(C5X,  C5Y,  'm.');
plot(C6X,  C6Y,  'r.');
plot(C7X,  C7Y,  'g.');
plot(C8X,  C8Y,  'b.');
plot(C9X,  C9Y,  'y.');
plot(C10X, C10Y, 'c.');
plot(C11X, C11Y, 'm.');

hold off;

class = zeros(1200,1);
class(100:200) = 1;
class(201:300) = 2;
class(301:400) = 3;
class(401:500) = 4;
class(501:600) = 5;
class(601:700) = 6;
class(701:800) = 7;
class(801:900) = 8;
class(901:1000) = 9;
class(1001:1100) = 10;
class(1101:1200) = 11;

%Train the SVM Classifier
svmC0  = fitcsvm(C0, class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[1, -1]);
svmC1  = fitcsvm(C1, class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[2, -1]);
svmC2  = fitcsvm(C2, class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[3, -1]);
svmC3  = fitcsvm(C3, class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[4, -1]);
svmC4  = fitcsvm(C4, class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[5, -1]);
svmC5  = fitcsvm(C5, class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[6, -1]);
svmC6  = fitcsvm(C6, class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[7, -1]);
svmC7  = fitcsvm(C7, class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[8, -1]);
svmC8  = fitcsvm(C8, class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[9, -1]);
svmC9  = fitcsvm(C9, class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[10, -1]);
svmC10 = fitcsvm(C10,class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[11, -1]);
svmC11 = fitcsvm(C11,class,'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[12, -1]);

% Predict scores over the grid
%d = 0.02;
%[x1Grid,x2Grid] = meshgrid(min(C0(:,1)):d:max(C0(:,1)), min(C0(:,2)):d:max(C0(:,2)));
%xGrid = [x1Grid(:),x2Grid(:)];
%[~,scores] = predict(svmC0,xGrid);

% Plot the data and the decision boundary
%figure;
%h(1:2) = gscatter(C0(:,1),C0(:,2),class,'bb','.');
%hold on
%ezpolar(@(x)1);
%h(3) = plot(C0(svmC0.IsSupportVector,1),C0(cvmC0.IsSupportVector,2),'ko');
%contour(x1Grid,x2Grid,reshape(scores(:,2),size(x1Grid)),[0 0],'k');
%legend(h,{'0', '2','Support Vectors'});


plot(C0(svmC0.IsSupportVector,1),   C0(svmC0.IsSupportVector,2),  'ro');
plot(C1(svmC1.IsSupportVector,1),   C1(svmC1.IsSupportVector,2),  'go');
plot(C2(svmC2.IsSupportVector,1),   C2(svmC2.IsSupportVector,2),  'bo');
plot(C3(svmC3.IsSupportVector,1),   C3(svmC3.IsSupportVector,2),  'yo');
plot(C4(svmC4.IsSupportVector,1),   C4(svmC4.IsSupportVector,2),  'co');
plot(C5(svmC5.IsSupportVector,1),   C5(svmC5.IsSupportVector,2),  'mo');
plot(C6(svmC6.IsSupportVector,1),   C6(svmC6.IsSupportVector,2),  'ro');
plot(C7(svmC7.IsSupportVector,1),   C7(svmC7.IsSupportVector,2),  'go');
plot(C8(svmC8.IsSupportVector,1),   C8(svmC8.IsSupportVector,2),  'bo');
plot(C9(svmC9.IsSupportVector,1),   C9(svmC9.IsSupportVector,2),  'yo');
plot(C10(svmC10.IsSupportVector,1), C10(svmC10.IsSupportVector,2),'co');
plot(C11(svmC11.IsSupportVector,1), C11(svmC11.IsSupportVector,2),'mo');

axis equal
hold off