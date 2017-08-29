
fileX1 = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\X1.txt');
X1 = fscanf(fileX1, '%lf');
fclose(fileX1);

fileX2 = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\X2.txt');
X2 = fscanf(fileX2, '%lf');
fclose(fileX2);

fileY = fopen('C:\\Users\\Dragokkan\\Documents\\Dropbox\\UFRN\\2015.2\\DCA0454 - Redes Neurais\\simulacoes\\DATA\\D.txt');
Y = fscanf(fileY, '%lf');
fclose(fileY);

%----------------------------------------------

classes = zeros(40,1);
classes(1:5) = 111;
classes(6:10) = 011;
classes(11:15) = 110;
classes(16:20) = 010;
classes(21:25) = 000;
classes(26:30) = 100;
classes(31:35) = 001;
classes(36:40) = 101;

data = [X1, X2];

%Train the SVM Classifier
svm111 = fitcsvm(data(1:3,:),   classes(1:3),  'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[111, -1]);
svm011 = fitcsvm(data(6:8,:),   classes(6:8),  'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[011, -1]);
svm110 = fitcsvm(data(11:13,:), classes(11:13),'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[110, -1]);
svm010 = fitcsvm(data(16:18,:), classes(16:18),'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[010, -1]);
svm000 = fitcsvm(data(21:23,:), classes(21:23),'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[000, -1]);
svm100 = fitcsvm(data(26:28,:), classes(26:28),'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[100, -1]);
svm001 = fitcsvm(data(31:33,:), classes(31:33),'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[001, -1]);
svm101 = fitcsvm(data(36:38,:), classes(36:38),'KernelFunction','rbf', 'BoxConstraint',1,'ClassNames',[101, -1]);

figure;
hold on;
data111 = data(1:5,:);
plot(data111(:,1),data111(:,2),'b*','MarkerSize',5)

data011 = data(6:10,:);
plot(data011(:,1),data011(:,2),'b*','MarkerSize',5)

data110 = data(11:15,:);
plot(data110(:,1),data110(:,2),'b*','MarkerSize',5)

data010 = data(16:20,:);
plot(data010(:,1),data010(:,2),'b*','MarkerSize',5)

data000 = data(21:25,:);
plot(data000(:,1),data000(:,2),'b*','MarkerSize',5)

data100 = data(26:30,:);
plot(data100(:,1),data100(:,2),'b*','MarkerSize',5)

data001 = data(31:35,:);
plot(data001(:,1),data001(:,2),'b*','MarkerSize',5)

data101 = data(36:40,:);
plot(data101(:,1),data101(:,2),'b*','MarkerSize',5)

plot(data111(svm111.IsSupportVector,1),data111(svm111.IsSupportVector,2),'ro','MarkerSize',5);
plot(data011(svm011.IsSupportVector,1),data011(svm011.IsSupportVector,2),'ro','MarkerSize',5);
plot(data110(svm110.IsSupportVector,1),data110(svm110.IsSupportVector,2),'ro','MarkerSize',5);
plot(data010(svm010.IsSupportVector,1),data010(svm010.IsSupportVector,2),'ro','MarkerSize',5);
plot(data000(svm000.IsSupportVector,1),data000(svm000.IsSupportVector,2),'ro','MarkerSize',5);
plot(data100(svm100.IsSupportVector,1),data100(svm100.IsSupportVector,2),'ro','MarkerSize',5);
plot(data001(svm001.IsSupportVector,1),data001(svm001.IsSupportVector,2),'ro','MarkerSize',5);
plot(data101(svm101.IsSupportVector,1),data101(svm101.IsSupportVector,2),'ro','MarkerSize',5);

model = crossval(svm111);

[label,score] = predict(svm111,data111(4:5,:));


hold off;

