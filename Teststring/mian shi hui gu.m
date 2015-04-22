//
//  mian shi hui gu.m
//  Teststring
//
//  Created by wanglin on 15-4-22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "mian shi hui gu.h"

@implementation mian_shi_hui_gu
/*
 1.判断邮箱格式是否正确的代码
 //利用正则表达式验证
 -(BOOL)isValidateEmail:(NSString *)email
 {
 NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
 NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",emailRegex];
 return [emailTest evaluateWithObject:email];
 }
 
 2.图片压缩
 用法：UIImage *yourImage= [self imageWithImageSimple:image scaledToSize:CGSizeMake(210.0, 210.0)];
 //压缩图片
 - (UIImage*)imageWithImageSimple:(UIImage*)image scaledToSize:(CGSize)newSize
 {
 // Create a graphics image context
 UIGraphicsBeginImageContext(newSize);
 // Tell the old image to draw in this newcontext, with the desired
 // new size
 [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
 // Get the new image from the context
 UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
 // End the context
 UIGraphicsEndImageContext();
 // Return the new image.
 return newImage;
 }
 
 3.亲测可用的图片上传代码
 - (IBAction)uploadButton:(id)sender {
 UIImage *image = [UIImage imageNamed:@"1.jpg"]; //图片名
 NSData *imageData = UIImageJPEgrepresentation(image,0.5);//压缩比例
 NSLog(@"字节数:%i",[imageData length]);
 // post url
 NSString *urlString = @"http://192.168.1.113:8090/text/UploadServlet";
 //服务器地址
 // setting up the request object now
 NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init] ;
 [request setURL:[NSURL URLWithString:urlString]];
 [request setHTTPMethod:@"POST"];
 //
 NSString *boundary = [NSString stringWithString:@"---------------------------14737809831466499882746641449"];
 NSString *contentType = [NSString stringWithFormat:@"multipart/form-data;boundary=%@",boundary];
 [request addValue:contentType forHTTPHeaderField: @"Content-Type"];
 NSMutableData *body = [NSMutableData data];
 [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
 [body appendData:[[NSString stringWithString:@"Content-Disposition:form-data; name=\"userfile\"; filename=\"2.png\"\r\n"] dataUsingEncoding:NSUTF8StringEncoding]]; //上传上去的图片名字
 [body appendData:[[NSString stringWithString:@"Content-Type: application/octet-stream\r\n\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
 [body appendData:[NSData dataWithData:imageData]];
 [body appendData:[[NSString stringWithFormat:@"\r\n--%@--\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
 [request setHTTPBody:body];
 // NSLog(@"1-body:%@",body);
 NSLog(@"2-request:%@",request);
 NSData *returnData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
 NSString *returnString = [[NSString alloc] initWithData:returnData encoding:NSUTF8StringEncoding];
 NSLog(@"3-测试输出：%@",returnString);
 
 4.给imageView加载图片
 UIImage *myImage = [UIImage imageNamed:@"1.jpg"];
 [imageView setImage:myImage];
 [self.view addSubview:imageView];
 
 5.对图库的操作
 选择相册：
 UIImagePickerControllerSourceTypesourceType=UIImagePickerControllerSourceTypeCamera;
 if (![UIImagePickerControllerisSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
 sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
 }
 UIImagePickerController * picker = [[UIImagePickerControlleralloc]init];
 picker.delegate = self;
 picker.allowsEditing=YES;
 picker.sourceType=sourceType;
 [self presentModalViewController:picker animated:YES];
 选择完毕：
 -(void)imagePickerController:(UIImagePickerController*)pickerdidFinishPickingMediaWithInfo:(NSDictionary *)info
 {
 [picker dismissModalViewControllerAnimated:YES];
 UIImage * image=[info objectForKey:UIImagePickerControllerEditedImage];
 [self performSelector:@selector(selectPic:) withObject:imageafterDelay:0.1];
 }
 -(void)selectPic:(UIImage*)image
 {
 NSLog(@"image%@",image);
 imageView = [[UIImageView alloc] initWithImage:image];
 imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
 [self.viewaddSubview:imageView];
 [self performSelectorInBackground:@selector(detect:) withObject:nil];
 }
 detect为自己定义的方法，编辑选取照片后要实现的效果
 取消选择：
 -(void)imagePickerControllerDIdCancel:(UIImagePickerController*)picker
 {
 [picker dismissModalViewControllerAnimated:YES];
 }
 
 6.跳到下个View
 nextWebView = [[WEBViewController alloc] initWithNibName:@"WEBViewController" bundle:nil];
 [self presentModalViewController:nextWebView animated:YES];
 //创建一个UIBarButtonItem右边按钮
 UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"右边" style:UIBarButtonItemStyleDone target:self action:@selector(clickRightButton)];
 [self.navigationItem setRightBarButtonItem:rightButton];
 设置navigationBar隐藏
 self.navigationController.navigationBarHidden = YES;//
 ios开发之UIlabel多行文字自动换行 （自动折行）
 UIView *footerView = [[UIView alloc]initWithFrame:CGRectMake(10, 100, 300, 180)];
 UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 100, 300, 150)];
 label.text = @"Hello world! Hello world!Hello world! Hello world! Hello world! Hello world! Hello world! Hello world!Hello world! Hello world! Hello world! Hello world! Hello world! Helloworld!";
 //背景颜色为红色
 label.backgroundColor = [UIColor redColor];
 //设置字体颜色为白色
 label.textColor = [UIColor whiteColor];
 //文字居中显示
 label.textAlignment = UITextAlignmentCenter;
 //自动折行设置
 label.lineBreakMode = UILineBreakModeWordWrap;
 label.numberOfLines = 0;
 
 7.代码生成button
 CGRect frame = CGRectMake(0, 400, 72.0, 37.0);
 UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
 button.frame = frame;
 [button setTitle:@"新添加的按钮" forState: UIControlStateNormal];
 button.backgroundColor = [UIColor clearColor];
 button.tag = 2000;
 [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
 [self.view addSubview:button];
 
 8.让某个控件在View的中心位置显示
 （某个控件，比如label，View）label.center = self.view.center;
 
 9.好看的文字处理
 
 以tableView中cell的textLabel为例子：
 cell.backgroundColor = [UIColorscrollViewTexturedBackgroundColor];
 //设置文字的字体
 cell.textLabel.font = [UIFont fontWithName:@"AmericanTypewriter" size:100.0f];
 //设置文字的颜色
 cell.textLabel.textColor = [UIColor orangeColor];
 //设置文字的背景颜色
 cell.textLabel.shadowColor = [UIColor whiteColor];
 //设置文字的显示位置
 cell.textLabel.textAlignment = UITextAlignmentCenter;
 
 10.隐藏Status Bar
 读者可能知道一个简易的方法,那就是在程序的viewDidLoad中加入
 [[UIApplication sharedApplication]setStatusBarHidden:YES animated:NO];
 
 11.更改AlertView背景
 UIAlertView *theAlert = [[[UIAlertViewalloc] initWithTitle:@"Atention"
 message: @"I'm a Chinese!"
 delegate:nil
 cancelButtonTitle:@"Cancel"
 otherButtonTitles:@"Okay",nil] autorelease];
 [theAlert show];
 UIImage *theImage = [UIImageimageNamed:@"loveChina.png"];
 theImage = [theImage stretchableImageWithLeftCapWidth:0topCapHeight:0];
 CGSize theSize = [theAlert frame].size;
 UIGraphicsBeginImageContext(theSize);
 [theImage drawInRect:CGRectMake(5, 5, theSize.width-10, theSize.height-20)];//这个地方的大小要自己调整，以适应alertview的背景颜色的大小。
 theImage = UIGraphicsGetImageFromCurrentImageContext();
 UIGraphicsEndImageContext();
 theAlert.layer.contents = (id)[theImage CGImage];
 
 12.键盘透明
 textField.keyboardAppearance = UIKeyboardAppearanceAlert;
 状态栏的网络活动风火轮是否旋转
 [UIApplication sharedApplication].networkActivityIndicatorVisible，默认值是NO。
 
 13.截取屏幕图片
 //创建一个基于位图的图形上下文并指定大小为CGSizeMake(200,400)
 UIGraphicsBeginImageContext(CGSizeMake(200,400));
 //renderInContext 呈现接受者及其子范围到指定的上下文
 [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
 //返回一个基于当前图形上下文的图片
 UIImage *aImage = UIGraphicsGetImageFromCurrentImageContext();
 //移除栈顶的基于当前位图的图形上下文
 UIGraphicsEndImageContext();
 //以png格式返回指定图片的数据
 imageData = UIImagePNGRepresentation(aImage);
 
 14.更改cell选中的背景
 UIView *myview = [[UIView alloc] init];
 myview.frame = CGRectMake(0, 0, 320, 47);
 myview.backgroundColor = [UIColorcolorWithPatternImage:[UIImage imageNamed:@"0006.png"]];
 cell.selectedBackgroundView = myview;
 
 15.显示图像
 CGRect myImageRect = CGRectMake(0.0f, 0.0f, 320.0f, 109.0f);
 UIImageView *myImage = [[UIImageView alloc] initWithFrame:myImageRect];
 [myImage setImage:[UIImage imageNamed:@"myImage.png"]];
 myImage.opaque = YES; //opaque是否透明
 [self.view addSubview:myImage];
 
 16.能让图片适应框的大小（没有确认）
 NSString*imagePath = [[NSBundle mainBundle] pathForResource:@"xcodeCrash"ofType:@"png"];
 UIImage *image = [[UIImage alloc]initWithContentsOfFile:imagePath];
 UIImage *newImage= [image transformWidth:80.f height:240.f];
 UIImageView *imageView = [[UIImageView alloc]initWithImage:newImage];
 [newImagerelease];
 [image release];
 [self.view addSubview:imageView];
 
 17.实现点击图片进行跳转的代码：生成一个带有背景图片的button，给button绑定想要的事件！
 UIButton *imgButton=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 120, 120)];
 [imgButton setBackgroundImage:(UIImage *)[self.imgArray objectAtIndex:indexPath.row] forState:UIControlStateNormal];
 imgButton.tag=[indexPath row];
 [imgButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
 
 
 一：UILabel
 
 UILabel显示多行。
 
 
 
 [plain] view plaincopy
 
 self.mylabel=[[UILabel alloc]initWithFrame:CGRectMake(20, 5, 200, 40)];
 self.mylabel.backgroundColor=[UIColor redColor];
 self.mylabel.text=@"你好，这是label测试.现在在测试换行";
 self.mylabel.numberOfLines=0;//以下2句就是实现换行的，不过要frame高度足够大。
 self.mylabel.lineBreakMode=UILineBreakModeWordWrap;//
 [self.view addSubview:self.mylabel];
 备注：该label设置的frame高度足够显示2行，像这里40 可以了，如果是高度20的话，还是只会显示一行文字。
 如果要label显示多行的话，还是建议使用UItextview。下一个会写到。
 
 二：UITextView
 
 UITextView 主要是为了显示多行的，相当于delphi的 memo了。
 
 UITextView主要是知道如何设置它不能被编辑。
 
 如果是使用IB，则只需要将它的Behavior Editable 勾选框去掉即可。
 
 如果是纯代码，则
 
 [plain] view plaincopy
 
 UITextView *txt=[[UITextView alloc]initWithFrame:CGRectMake(20, 100, 100, 50)];
 txt.text=@"sd";
 txt.editable=NO;//不可编辑
 [self.view addSubview:txt];
 
 
 
 
 三：UIButton的使用
 
 UIButton经常使用到，它可以是个按钮点击，也可以由图片填充。
 
 [plain] view plaincopy
 
 UIButton *backbtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
 backbtn.frame=CGRectMake(30,50,70,40);
 [backbtn setTitle:@"按钮" forState:UIControlStateNormal];
 //[backbtn setImage:[UIImage imageNamed:@"icon_top_enable.png"] forState:UIControlStateNormal];//这个是图片填充按钮，如果是图片，则button必须是UIButtonTypeCustom 。当然也可以不用图片
 [backbtn addTarget:self action:@selector(onclick) forControlEvents:UIControlEventTouchUpInside];
 //添加button点击事件 on click
 [self.view addSubview:backbtn];
 
 
 同时也要为onclick事件做一些处理
 
 [plain] view plaincopy
 
 -(void)onclick{
 NSLog(@"你点击了按钮");
 }
 
 
 
 
 四到九 都是参照网上一篇文章，大同小异。http://hi.baidu.com/marktian/item/fbb89c3da8c26e677c034bf3
 四、UITextField
 
 
 
 常用属性：
 
 Text:要显示的文本。
 
 Placeholder:指定将要在文本字段中以灰色显示的占位符文本。
 
 Clear When Editing Begins:用户触摸此字段时是否删除字段中的值。就是text框最右边有一个小叉清空按钮
 
 Text Input Traits:文本输入特征。
 
 
 
 五、UIImageView
 
 
 
 常用属性：
 
 image:指定图像文件
 
 Mode:图像在视图内部的对齐方式以及是否缩放图像以适应视图。选择任何图像缩放的选项都会潜在地增加处理开销，因此最好避开这些选项，并在导入图像之前调整好图像大小。通常Mode属性为Center。
 
 Alpha：图像透明度。一般设置为1.0
 
 Background:该属性继承自UIView，但它不会影响图像视图的外观，请忽略此属性。
 
 Drawing复选框：选中Opaque表示视图后面的任何内容都不应该绘制，并且允许iPhone都绘图方法通过一些优化来加速绘图。
 
 Clear Context Before Drawing:选中它之后，iPhone将使用透明黑色绘制控件覆盖都所有区域，然后才实际绘制控件。考虑到性能问题，并且适用情况很少，通常很少需要选中ClearContext Before Drawing。
 
 Interaction复选框：
 
 User Interaction Enabled:指定用户能否对此对象进行操作。
 
 Multiple Touch：是否能够接收多点触摸事件。
 
 
 
 六：UISlider(滑块)
 
 
 
 常用属性：Value Changed
 
 示例：
 
 // 将silder的值反映到sliderLabel
 
 - (IBAction) sliderValueChanged: (id)sender
 
 {
 
 　　　　UISlider *slider = (UISlider *)sender;
 
 　　　　int progressAsInt = (int)(slider.value + 0.5f);
 
 　　　　NSString *newText = [[NSStringalloc] initWithFormat:@"%d", progressAsInt];
 
 　　　　sliderLabel.text = newText;
 
 　　　　[newText release];
 
 }
 
 
 
 七：UISwitch(开关)
 
 
 
 
 
 代码// 属性on：获取开关的状态是否为on
 // 方法setOn：设置开关的状态
 - (IBAction) switchChanged: (id)sender
 {
 UISwitch *whichSwitch = (UISwitch *)sender;
 BOOL setting = whichSwitch.on;
 [leftSwitch setOn:setting animated:YES];
 [rightSwitch setOn:setting animated:YES];
 }
 
 
 
 
 八、UISegmentedControl
 
 
 
 #define kSegmentIndex_Switches 0
 #define kSegmentIndex_Button 1
 
 
 - (IBAction) segmentChanged: (id)sender
 {
 switch ([sender selectedSegmentIndex])
 {
 case kSegmentIndex_Switches:
 leftSwitch.hidden = NO;
 rightSwitch.hidden = NO;
 doSomethingButton.hidden = YES;
 break;
 case kSegmentIndex_Button:
 leftSwitch.hidden = YES;
 rightSwitch.hidden = YES;
 doSomethingButton.hidden = NO;
 break;
 
 }
 
 
 }
 
 
 九、UIActionSheet（操作表）和UIAlertView（警报）
 
 UIActionSheet用于迫使用户在两个或更多选项之间进行选择都模式视图。操作表从屏幕底部弹出，显示一系列按钮供用户选择，用户只有单击了一个按钮后才能继续使用使用应用程序。
 
 UIAlertView（警报）以蓝色圆角矩形都形式出现在屏幕的中部，警报可显示一个或多个按钮。
 
 为了让控制器类充当操作表的委托，控制器类需要遵从UIActionSheetDelegate协议。我们通过在类声明都超类之后都尖括号中添加协议名称来实现。
 
 
 
 @interface UntitledViewController : UIViewController
 <UIActionSheetDelegate>
 {
 // ....
 }
 // 创建操作表：
 - (IBAction) buttonPressed: (id)sender
 {
 UIActionSheet *actionSheet = [[UIActionSheet alloc]
 initWithTitle:@"Are you sure?"
 delegate:self
 cancelButtonTitle:@"Cancel"
 destructiveButtonTitle:@"Yes,I'm sure."
 otherButtonTitles:nil];
 
 [actionSheet showInView:self.view];
 [actionSheet release];
 }
 // 实现方法：
 #pragma mark ActionSheet Delegate Methods
 - (void) actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
 {
 
 if (buttonIndex != [actionSheet cancelButtonIndex])
 {
 NSString *text = [[NSString alloc] initWithFormat:@"test alert"];
 UIAlertView *alert = [[UIAlertView alloc]
 initWithTitle:@"Something was done."
 message:text
 delegate:self
 cancelButtonTitle:@"OK!"
 otherButtonTitles:nil];
 [alert show];
 [alert release];
 [text release];
 }
 }
 
 //- (void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
 //{
 // NSLog(@"%d",buttonIndex);
 //}
 
 
 示例：
 
 视图有一个UISegmentedControl,"Switches"下有两个UISwitch
 
 
 
 "Button"下有一个“Do Something"的UIButton
 
 
 
 触摸"Do Something"Button时弹出UIActionSheet
 
 
 
 触摸选择"Yes,I'm sure."时弹出 UIAlertView
 

 
 UIK UITableViewController(表视图控制器)
 
 联系人信息:TelphoneInfo 1 通讯录
 
 name:ysy 2             谁的联系人信息
 
 userInfos:  2            所有好友信息
 
 -addUserInfo   3     添加好友
 
 -removeUser    7    删除好友
 
 -lookupUserInfoByName  6查找好友信息
 
 -list 4	   查看所有好友信息
 
 -sort   5                   查看所有好友信息排序
 
 个人信息:UserInfo 1
 
 name:2	   好友的姓名
 
 email:2
 
 telphone:2
 
 -showInfo;3	  查看好友的详细信息
 
 
 
 一、UITableViewController(表视图控制器)
 
 1.什么是
 
 是列表方式展示数据的一种VC
 
 2.在哪儿用
 
 非常常见，有规律的展示固定样式的数据
 
 如果不用TableView，
 
 a.手动管理布局，计算坐标
 
 b.手动判断和处理事件
 
 c.手动设置每一个控件的值
 
 d.手动内存管理
 
 3. 能帮助我们干什么
 
 管理布局，管理事件，有规律的展示数据，管理内存。
 
 4.组成
 
 UITableViewController中的View类型是UITableView。
 
 视图	 视图控制器
 
 UIView	 UIViewController
 
 视图控制器
 
 UITableView	 UITableViewController
 
 
 UITableViewController 类
 
 +	tableView : UITableView 属性：属性类型
 
 + Table Header	表头
 
 +	Section	 分区
 
 +	Section Header	分区头
 
 + Row	(Cell(数据))	 行
 
 +  Section Footer	分区尾
 
 + Table Footer	 表尾
 
 表头、表尾、分区头、分区尾是可以省略
 
 
 
 TableView 有两种Style
 
 Plain:普通Style 没有分区(只有一个分区)
 
 Group: 组 多个分区
 
 
 5.UITableView(委托对象)
 
 处理一些除数据源之外的其它事项，如触发事件。
 
 .delegate :id<UITableViewDelegate>
 
 数据源 是TableView显示的数据来源
 
 .dataSource:id<UITableViewDataSource>
 
 6.使用
 
 1>创建一个类TRMyTableViewController继承UITableViewController。(被委托对象)
 
 2>在此类TRMyTableViewController遵守协议，实现协议里要求的方法。(自动建立好关联)
 
 a.numberOfSectionsInTableView 指定分区数
 
 b.numberOfRowsInSection 指定行数
 
 c.cellForRowAtIndexPath 指定行中的内容
 
 {
 
 static NSString *CellIdentifier = @"Cell";
 
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
 
 if (cell == nil) {
 
 cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
 
 }
 
 // Configure the cell...
 
 cell.textLabel.text = @"HelloWorld";
 
 return cell;
 
 }
 
 }
 
 3>此VC展示出来了
 
 
 
 7.UITableView最重的问题：
 
 三问一响应，之三问：
 
 1)你有几个分区显示？
 
 2)你每个区有几行要显示？
 
 3)你每一行显示的内容是什么?
 
 一响应：
 
 当用户选中某一行时，调用的方法(响应处理)
 
 8.当我们继承UITableViewController时发生的事情：
 
 1)Xcode自动将此VC设置为VC中的tableView的数据源和Delegate。
 
 2)VC继承的父类UITableViewController遵守了两个协议：UITableViewDataSource和UITableViewDelegate。
 
 3)VC类已经实现了三个方法：
 
 有多少区，多少行，每行的内容。
 
 9.indexPath
 
 NSIndexPath(存储路径):是一种集合，(保存多维数组数据关系)。
 
 .section描述哪个分区
 
 .row 描述此分区的哪一行
 
 10.多分区
 
 a.numberOfSectionsInTableView 指定分区数
 
 3
 
 b.numberOfRowsInSection 指定行数
 
 if (section==0) {
 
 return 1;
 
 }else if (section==1){
 
 return 2;
 
 }else{
 
 return 3;
 
 }
 
 c.cellForRowAtIndexPath 指定行中的内容
 
 if (indexPath.section==0) {
 
 cell.textLabel.text = [NSString stringWithFormat:@"第0区的第%ld行",indexPath.row];
 
 }else{
 
 cell.textLabel.text = [NSString stringWithFormat:@"第%ld区的第%ld行",indexPath.section,indexPath.row];
 
 }
 
 注：
 
 区方法执行1次
 
 行方法执行”区”次
 
 内容方法执行”区与关系行”次
 
 
 
 11.UITableViewCell类
 
 a.是什么
 
 TableView中每一行就是一个UITableViewCell类型的对象，UITableViewCell其实是UIView的子类，他也是一个视图。
 
 b.此视图有以下子视图，都是其属性：
 
 .textLabel : UILabel 用于在Cell上显示文字内容
 
 .detailTextLabel:UILabel 用显示详细的内容
 
 .imageView:UIImageView 用于显示图片
 
 c.Cell的Style(系统提供的)
 
 Default:默认，不显示详细信息。
 
 Value1:左右显示主要信息和详细信息
 
 Value2:居中显示详细信息，不显示图片信息
 
 Subtitle:可以显示详细信息，详细信息另起一行。
 
 也可以自己定义Cell。
 
 
 
 12. Cell重用
 
 tableView在运行期间，出出界面的Cell并不会释放，而是放入了tableView中的队列，所以，需要在创建Cell对象之前，先试着从此队列中去拿已经存在的Cell对象，如果能拿到，就不需要再创建，而是重用此Cell对象。
 
 通过dequeueReusableCellWithIdentifier去队列当中找可以重复使用的cell对象，CellIdentifier修饰Cell对象类型。
 
 数据结构：
 
 栈：先进后出，后进先出。
 
 队列：先进先出，后进后出。
 
 13.Cell重用2
 
 新版本Xcode中得到的cell对象方式：
 
 UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
 
 如果使用高版本Xcode，第一次是没办法从队列里得到得用对象的，所以我们需要在viewdidLoad方法里，注册一个重用的Cell对象。
 
 [self.tableView registerClass:[UITableViewCell class]forCellReuseIdentifier:identifier];
 
 当需要Cell对象的时候，就可以在队列中得重用对象。
 
 
 
 属性>cellFor方法(区、行、cell)->tableView
 
 练习：把一组城市信息显示在tableView中
 
 北京、上海、广州、深圳、成都。
 
 区：1
 
 行：5
 
 Cell:5
 
 
 
 14.TableView三问一响应之响应 及展示数据
 
 遵守了UITableViewDelegate
 
 didSelectRowAtIndexPath
 
 push新的页面
 
 注：默认情况下UITableViewController是没有self.navigationController，自己包装。
 
 
 
 练习：
 
 第一个界面显示
 
 [北京name 图片imageNmae 人口数population]，点击北京，
 
 在第二页面显示城市信息和人口数。
 
 提示：封装对象，城市对象。
 
 TRArea
 
 -name:NSString
 
 -imageName:NSString
 
 -population:NSUInteger
 
 
 
 思路：
 
 1.模型层Model 数据TRArea->demoDatas(数据);
 
 2.appDelegate->TableViewController->DetailViewController
 
 3.传值(正向传值->公开属性) 面向对象
 
 总结：如果在表视图中显示数据并跳转界面
 
 
 
 作业：
 
 1.从一个tableView推出一个新的tableView
 
 2.用多个分区显示数据
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 //有多少个分区
 -(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
 {
 return 1;
 }
 
 //每个分区有多少行
 -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
 {
 return self.dataarr.count;
 }
 
 //每行的内容是什么
 -(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
 static NSString *cellName=@"Cell";
 UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellName];
 
 if (!cell) {
 cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
 }
 cell.textLabel.text=[self.dataarr objectAtIndex:indexPath.row];
 cell.textLabel.textAlignment= NSTextAlignmentCenter;
 return cell;
 
 }
 
 //点击事件
 
 -(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
 {
 NSLog(@"123");
 }
 
 UI Imageview属性
 UIImageView* M1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"IMG_0003.JPG"]];
 
 [self.view addSubview:M1];
 
 
 
 UIButton* button=[[UIButton alloc]init];
 
 button.frame=CGRectMake(140, 80, 50, 44);
 
 button.backgroundColor=[UIColor whiteColor];
 
 
 
 [self.view addSubview:button];
 
 
 
 label.layer.mask
 
 
 self.button1=[UIButton buttonWithType:UIButtonTypeSystem];
 self.button1.backgroundColor=[UIColor blackColor];
 self.button1.frame=CGRectMake(100, 300, 100, 100);
 //设置圆的弧度
 self.button1.layer.cornerRadius=50.0;
 //圆的文本
 [self.button1 setTitle:@"张铁兵" forState:UIControlStateNormal];
 [self.button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
 //圆的字体大小
 [self.button1.titleLabel setFont:[UIFont systemFontOfSize:28]];
 //按钮加红色描边
 self.button1.layer.borderWidth=5.0;
 self.button1.layer.borderColor=[UIColor redColor].CGColor;
 //加一个编号
 self.button1.tag=102;
 //点击事件
 [self.button1 addTarget:self action:@selector(Click:) forControlEvents:UIControlEventTouchUpInside];
 
 // 按钮背景图片
 [btn setBackgroundImage:[UIImage imageNamed:@"btn_momal.png"] forState:UIControlStateNormal];
 
 
 [self.view addSubview:self.button1];
 
 
 
 
 
 
 
 
 
 - (void)textFieldDidEndEditing:(UITextField *)textField{
 NSString* str = [self.nameTF.text substringToIndex:2];
 if ([self.passTF.text hasSuffix:@"1"]&&[str  rangeOfString:@"8" ].length>0&&[str  rangeOfString:@"9" ].length) {
 self.label.text = @"登陆成功";
 }else{
 self.label.text = @"登陆失败";
 }
 
 
 
 
 
 最下层
 
 [self.view insertSubview:view atIndex:0];
 

 
 Views  3UIBezierPath类
 1. UIBezierPath类
 
 直线，弧线（圆）
 
 椭圆  矩形 圆角矩形
 
 在 UIViewController中初始化view
 
 ABview *view=[[ABview alloc]initWithFrame:self.view.frame];
 view.backgroundColor=[UIColor whiteColor];
 [self.view addSubview:view];
 
 
 在view中 解开以下方法
 
 
 
 
 
 - (void)drawRect:(CGRect)rect
 
 {
 
 //画3角形
 
 CGContextRef context=UIGraphicsGetCurrentContext();
 
 
 
 //保存当前设备上下文
 
 CGContextSaveGState(context);
 
 //开始绘制 原点  (起始点)
 
 CGContextMoveToPoint(context, 20, 20);
 
 
 
 CGContextAddLineToPoint(context, 20, 120);
 
 
 
 CGContextAddLineToPoint(context, 100, 120);
 
 
 
 CGContextAddLineToPoint(context, 20, 20);
 
 
 
 //设置颜色 线条颜色(填充)
 
 CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
 
 
 
 
 
 //设置渲染的模式，空心kCGPathStroke  实心 kCGPathEOFill
 
 CGContextDrawPath(context, kCGPathEOFill);
 
 
 
 //恢复设备上下文
 
 CGContextRestoreGState(context);
 
 
 
 
 
 
 
 
 
 }
 
 1.1 曲线
 
 贝塞尔曲线
 
 - (void)drawRect:(CGRect)rect
 {
 //绘制圆形   ,从取色板取色
 UIColor *color=[UIColor redColor];
 [color set];
 //创建一个贝塞尔路径
 UIBezierPath *path=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(60, 120, 200, 150)];
 //设置线条的粗细
 path.lineWidth=5.0;
 //设置渲染模式
 [path fill];//fill实心   stroke空心
 
 }
 
 
 
 2. 画字符串  NSString
 
 drawAtPoint
 
 drawInRect
 
 iOS7前后API
 
 
 
 字符串类本身有绘制的功能
 
 [Demo2]
 
 [Demo3]
 
 
 
 3. 画图像  UIImage
 
 [Demo4]
 
 
 
 下午： 贴图与美化
 
 1. 基本概念
 
 1.1 iOS设备                              分辨率               坐标点
 
 Retina屏
 
 iPhone4/4s                      640x960             320x480
 
 iPhone5/5s/5c               640x1136           320x568
 
 new Pad, iPad4            2048x1536
 
 iPad Air
 
 iPad mini 2                     2048x1536         1024x768
 
 
 
 非Retina屏
 
 iPhone 3GS                   320x480              320x480
 
 iPad2, iPad mini           1024x768           1024x768
 
 程序中使用坐标点来计算位置，而不是用分辨率计算
 
 
 
 1.2 iOS系统加载图片时对Retina的处理
 
 美工提供一张图片时，一般会给两个版本(Retina和非Retina)
 
 文件名有一定的要求:
 
 Welcome.jpg  ==> Welcome@2x.jpg
 
 程序如下:
 
 UIImage *image = [UIImage imageNamed:@“Welcome.jpg”];
 
 
 此时系统会自动适配对应的图片:
 
 if(Retina屏){
 
 if(有Welcome@2x.jpg)  return  Welcome@2x.jpg;
 
 else  return Welcome.jpg;
 
 }else{
 
 return Welcome.jpg;
 
 }
 
 
 
 [Demo5]
 
 2. 贴图
 
 给各种控件或视图贴图，以达到美化的效果
 
 [Demo6]
 
 2.1 9切片技术 (iOS6开始)
 
 1> 目的：
 
 解决不同尺寸相同设计风格的图片，需要出多张图的问题。
 
 如果不切，程序就得写重绘代码，非常麻烦(iOS6之前就这么干), 或者美工出多张图。
 
 2> 用在哪里
 
 消息框、新闻框、各种条目如定单等，
 
 以及各种控件贴图时都可以用，如按钮的背景，Cell的背景等
 
 3> 切片原则 :
 
 9片：
 
 4个角不变
 
 上下两边横向拉伸或拷贝
 
 左右两边纵向拉伸或拷贝
 
 中间横向纵向拉伸或拷贝
 
 4> 两种模式:
 
 Tile            瓦片模式(拷贝模式)  默认模式
 
 Stretch    拉伸模式
 
 2.2 Xcode5和9Slicing技术(iOS7开始)
 
 从Xcode5开始，9Slicing技术已经不再需要写代码完成。
 
 [Demo7]
 
 1> Xcode 5 新增的Asset Catalog项目组件
 
 Xcode 5的的项目中，存在一个Images.xcassets的目录， 用来统一管理项目中的图片等资源， 还提供对图片资源的设备适配，高清，拉伸等支持，也提供9Slicing的支持。
 
 2>  使用Asset的好处在于， 提供资源文件不需要特别遵守命名规则，另外，也不需要写代码直接进行9切片。还可以管理和适配和种设备所需要的图片资源。
 
 3> 如何使用
 
 拖拽图片到Images.xcassets中
 
 选中其中要切片的图片
 
 点击 show slicing
 
 进行切片
 
 在检查器中选择是Tile还是Stretch
 
 在Storyboard中直接查看切片结果
 
 
 
 3. 对各种控件进行贴图美化
 
 UIButton  UITextField   UISlider   UISwitch
 
 3.1 UIButton
 
 大部分控件都在以下一些状态:
 
 1>  Normal   正常
 
 2>  Highlighted   高亮(被用户按下时)
 
 3>  Disabled     不可用状态(.enabled = NO)
 
 4>  Selected    选中状态(.selected = YES)
 
 每一种状态都可以贴上不同的图片:
 
 1> 可以直接在xib或storyboard中贴图
 
 2> 也可以用代码贴图
 
 [Demo8]
 
 .showsTouchWhenHighlighted = YES;//发白炫光
 
 
 
 //拉伸模式
 
 UIImageView* imageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 300, 320, 50)];
 
 [self.view addSubview:imageview];
 
 UIImage *image=[UIImage imageNamed:@"id_levelProcess@2x.png"];
 
 
 
 UIImage* newimage=[image resizableImageWithCapInsets:(UIEdgeInsetsMake(10, 10, 10, 10)) resizingMode:(UIImageResizingModeStretch)];
 
 imageview.image=newimage;
 
 
 
 
 
 
 
 //瓦片模式
 
 UIImageView* imageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 300, 320, 50)];
 
 [self.view addSubview:imageview];
 
 UIImage *image=[UIImage imageNamed:@"id_levelProcess.png"];
 
 
 
 UIImage* newimage=[image resizableImageWithCapInsets:(UIEdgeInsetsMake(3, 3, 3, 3)) resizingMode:(UIImageResizingModeTile)];
 
 imageview.image=newimage;
 
 
 Views  4贴图 手势
 回顾：
 
 绘制字符串(Deprecated API, iOS7 API)
 
 绘制图片(视图中，视图控制器中合成图片)
 
 贴图：9Slicing(iOS6 API, Xcode5)
 
 给控件贴图   UIButton  UISlider
 
 App4Code    CocoaChina   。。。
 
 今天：
 
 1. tintColor属性（iOS6开始，iOS7加强使用）
 
 4.1 是什么
 
 是视图的一个颜色属性，代表自己的颜色
 
 4.2 能干什么
 
 可以统一的管理视图及子视图的颜色
 
 可以批量的修改一些视图的颜色
 
 4.3 一般一个视图或控件的颜色
 
 由两个颜色因素决定
 
 1>  可能拥有专门的xxxTintColor属性
 
 如  UISwitch， UIProgress, UINavigationBar等
 
 2> 如果没有专门的xxxTintColor属性，受UIView类定义的tintColor属性的影响。
 
 4.4 批量修改颜色
 
 1>  修改父视图的tintColor颜色时，会导致所有子视图及子视图的子视图的颜色都会发生变化， 除非某一个子视图专门设置了自己的tintColor颜色。
 
 2> 我们甚至可以修改window对象的tintColor颜色，整个应用中所有视图的tintColor颜色都会改变，除非某个视图专门设置了自己的tintColor颜色
 
 [Demo1]
 
 
 
 2. UIAppearance
 
 2.1 是什么
 
 是一个协议， 遵守此协议的对象可以批量设置某种控件的外观(颜色， 贴图)
 
 2.2 如何使用
 
 任何一个视图类或控件类(UIButton)都有一个方法:
 
 +(instancetype)appearance;
 
 此方法返回一个遵守UIAppearance协议的对象
 
 对此对象进行设置颜色等外观属性，或者贴图美化时，相当于对这种类型的所有控件进行设置和美化。
 
 [Demo2]
 
 3. NavigationBar的美化
 
 [Demo3]
 
 3.1 设置NavigationBar颜色
 
 拥有自己的barTintColor属性
 
 .barTintColor  设置颜色
 
 .translucent  BOOL类型的属性  设置是否半透明 默认是YES
 
 3.2 NavigationBar的贴图
 
 setBackgroundImage:forBarMetrics:
 
 3.3 设置返回按钮的图片
 
 .backIndicatorImage
 
 .backIndicatorTransitionMaskImage
 
 3.4 设置标题栏的字体
 
 setTitleTextAttributes:…
 
 3.5 还可以将标题设置成一个视图
 
 self.navigationItem.titleView = …;
 
 3.6 隐藏NavigationBar
 
 self.navigationController setNavigationBarHidden:animated:
 
 
 
 
 
 4. 状态栏处理
 
 4.1 隐藏StatusBar(状态栏)
 
 覆盖方法:
 
 - (BOOL)prefersStatusBarHidden
 
 return YES为隐藏
 
 4.2 设置状态栏的风格
 
 覆盖方法:
 
 - (UIStatusBarStyle)preferredStatusBarStyle
 
 注意，状态栏的风格会受NavigationBar的影响
 
 
 
 
 
 5. TableViewCell地贴图
 
 [Demo4]
 
 
 
 cell.backgroundView
 
 
 
 6. 手势(GestureRecognizer)
 
 6.1 什么是
 
 用户对View进行的一系统触控操作
 
 6.2 有哪些手势
 
 一次性手势   :  一次手势只会执行一次方法
 
 Tap  :   点， 按
 
 Swipe  :   轻扫
 
 连续性手持  ： 手持变化时连续的调用一个方法
 
 LongPress   :    长按
 
 Pan	 :   拖动
 
 Pinch          :  捏/扩，缩/放  拨
 
 Rotation    :   旋转
 
 6.3 手势的本质
 
 程序中，手势其实是对象，当用户对视图进行触控操作时，系统就会感知到，当系统识别成成功后，调用手势对象指定的方法。
 
 一次性手势识别成功后只会调用一次方法
 
 连续性手势识别成功后会持续多次调用方法，直到手势结束
 
 6.4 如何使用手势
 
 1>  创建手势对象, 指定对应的方法
 
 2>  设置手势对象的相关属性
 
 3>  将手势对象加入到需要识别此手势的视图中
 
 
 每一种手势都有一个类对应，这些类有一个共同的父类: UIGestureRecognizer, 此类的每一个子类的命名都是以UIXxxGestureRecognizer命名，如：
 
 UITapGestureRecognizer
 
 UISwipeGestureRecognizer
 
 ……
 
 7. 具体的手势用法
 
 7.1  Tap手势   UITapGestureRecognizer
 
 [Demo5]
 
 重要属性:
 
 .numberOfTapsRequired  点击多少次
 
 .numberOfTouchesRequired  用几个手指点
 
 常见用法：
 
 可以马上将一个普通视图变成按钮
 
 7.2  Swipe手势
 
 [Demo6]
 
 .numberOfTouchesRequired
 
 .direction   可以用按位或(|)的方式设置多个方向
 
 要么左右，要么上下
 
 7.3 UILongPressGestureRecognizer
 
 重要属性：
 
 .numberOfTouchesRequired
 
 .minimumPressDuration  最短多长时间算长按，单位秒，默认是0.5秒
 
 .allowableMovement  允许手势识别期间手势可移动的范围
 
 7.4 UIPinchGestureRecognizer
 
 [Demo7]
 
 .scale    缩放的倍数
 
 .velocity  速度， 捏时为负数，扩时为正数
 
 这两属性经常用来读取，而不是修改
 
 7.5 UIPanGestureRecognizer
 
 [Demo8]
 
 .minimumNumberOfTouches
 
 //获取到手指所在的相对位置(相对于起始位置)
 
 - (CGPoint)translationInView:(UIView *)view
 
 //获取当前手指所在的绝对位置(坐标)
 
 - (CGPoint)locationInView:(UIView*)view;
 
 //获取用户当前拖动的速度
 
 - (CGPoint)velocityInView:(UIView *)view
 
 
 
 
 
 
 手势
 
 2.1 手势(GestureRecongnizer)
 1>什么是手势
 用来对视图UIView进行一系列的触摸 Touch 的操作。
 比如：点击屏幕的手势   移动手势(滑动  轻扫),连续性的
 手势，捏合类的手势(多手指)
 
 2>手势分类
 2.1 一次性的手势
 1> 点  按 屏幕Tap
 2> 轻扫 或 滑动 Swipe   (网易新闻)
 2.2 连续性的手势
 1>  拖动  移动 Pan 拖动手势
 2> 捏合手势   缩小/放大   Pinch 捏合手势
 3> 旋转手势   Rotation
 4> 长按手势   LongPress (微信)
 
 2.3 手势的本质
 程序中手势的本质其实就是一个对象，当用户在视图上进行触控操作时，视图会通过手势识别器识别出用户响应的操作。当手势识别器识别出用户的手势以后，就可以出发响应的方法。
 
 2.4  如何使用
 UIGestureRecongnizer:NSObject 是所有手势类的一个父类。
 1.提供了一些公有的方法,可以给手势添加或移除事
 件。
 2.提供了一些对于手势状态的检测，比如 滑动的手
 势手指刚开始触控屏幕    已经在滑动中   结束了
 滑动等。
 3.提供了委托方法。
 
 
 
 
 协议
 
 <UIGestureRecognizerDelegate>
 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 //创建一个图像视图
 UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(80, 200, 200, 200)];
 //工程中拿一个张图
 UIImage *image = [UIImage imageNamed:@"1.png"];
 imgView.image = image;
 //属性开启和用户交互 NO
 imgView.userInteractionEnabled = YES;
 //第二步 开始添加手势  UIGestureRecognize父类
 //抽象类  特点 不能创建对象
 UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewTap:)];
 tap.delegate = self;
 //设置属性 点击此次  1单击   2 双击
 tap.numberOfTapsRequired = 2;
 //设置属性 单点触控 还是多点触控
 tap.numberOfTouchesRequired = 2;
 //手势View对象  添加给UIImageView
 [imgView addGestureRecognizer:tap];
 [self.view addSubview:imgView];
 
 }
 
 #pragma mark - 点击手势触发事件
 -(void)imageViewTap:(UITapGestureRecognizer *)tap
 {
 NSLog(@"识别到了点击手势");
 self.view.backgroundColor = [UIColor greenColor];
 }
 
 
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 //创建一个图像视图
 self.imgView = [[UIImageView alloc] initWithFrame:CGRectMake(80, 200, 200, 200)];
 //工程中拿一个张图
 UIImage *image = [UIImage imageNamed:@"1.png"];
 self.imgView.image = image;
 //属性开启和用户交互 NO
 self.imgView.userInteractionEnabled = YES;
 //第二步 开始添加手势  UIGestureRecognize父类
 //抽象类  特点 不能创建对象
 UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewPan:)];
 pan.delegate = self;
 //设置属性 移动的时候是几根手指
 pan.minimumNumberOfTouches = 1;
 //手势View对象  添加给UIImageView
 [self.imgView addGestureRecognizer:pan];
 [self.view addSubview:self.imgView];
 
 }
 
 #pragma mark - 点击手势触发事件
 -(void)imageViewPan:(UIPanGestureRecognizer *)pan
 {
 NSLog(@"识别到了移动手势");
 //主要是移动的状态
 if(pan.state == UIGestureRecognizerStateBegan)
 {
 NSLog(@"开始移动");
 //缩放图片
 self.imgView.transform = CGAffineTransformMakeScale(0.5, 0.5);
 }
 else if(pan.state ==
 UIGestureRecognizerStateChanged)
 {
 NSLog(@"移动过程中...A--->B");
 //UITouch的内容
 self.imgView.center = [pan locationInView:self.view];
 }
 else if(pan.state == UIGestureRecognizerStateEnded)
 {
 NSLog(@"移动完成了！");
 self.imgView.transform = CGAffineTransformIdentity;
 }
 }
 
 
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 //创建一个图像视图
 UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(80, 200, 200, 200)];
 //工程中拿一个张图
 UIImage *image = [UIImage imageNamed:@"1.png"];
 imgView.image = image;
 //属性开启和用户交互 NO
 imgView.userInteractionEnabled = YES;
 //第二步 开始添加手势  UIGestureRecognize父类
 //抽象类  特点 不能创建对象
 UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewPinch:)];
 pinch.delegate = self;
 //设置属性 点击此次  1单击   2 双击
 
 //手势View对象  添加给UIImageView
 [imgView addGestureRecognizer:pinch];
 [self.view addSubview:imgView];
 
 }
 
 #pragma mark - 点击手势触发事件
 -(void)imageViewPinch:(UIPinchGestureRecognizer *)pinch
 {
 NSLog(@"识别到了捏合手势");
 pinch.view.transform = CGAffineTransformScale(pinch.view.transform, pinch.scale, pinch.scale);
 pinch.scale = 1.0;
 }
 
 ————————————————————————————————————————————————————————————————————————————————————————
 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 //创建一个图像视图
 UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(80, 200, 200, 200)];
 //工程中拿一个张图
 UIImage *image = [UIImage imageNamed:@"1.png"];
 imgView.image = image;
 //属性开启和用户交互 NO
 imgView.userInteractionEnabled = YES;
 //第二步 开始添加手势  UIGestureRecognize父类
 //抽象类  特点 不能创建对象
 UIRotationGestureRecognizer *rotation = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewRotation:)];
 rotation.delegate = self;
 //手势View对象  添加给UIImageView
 [imgView addGestureRecognizer:rotation];
 [self.view addSubview:imgView];
 
 }
 
 #pragma mark - 点击手势触发事件
 -(void)imageViewRotation:(UIRotationGestureRecognizer *)rotation
 {
 NSLog(@"识别到了旋转手势");
 //缩放  移动  旋转 都是通过transform
 rotation.view.transform = CGAffineTransformRotate(rotation.view.transform, rotation.rotation);
 //旋转的角度 rotation
 rotation.rotation = 0.0;
 }
 
 
 ————————————————————————————————————————————————————————————————————————————————————————
 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 //创建一个图像视图
 UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(80, 200, 200, 200)];
 //工程中拿一个张图
 UIImage *image = [UIImage imageNamed:@"1.png"];
 imgView.image = image;
 //属性开启和用户交互 NO
 imgView.userInteractionEnabled = YES;
 //第二步 开始添加手势  UIGestureRecognize父类
 //抽象类  特点 不能创建对象
 UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewSwipe:)];
 swipe.delegate = self;
 //手势View对象  添加给UIImageView
 //轻扫手势  重要的属性是方向

 UISwipeGestureRecognizerDirectionRight
 UISwipeGestureRecognizerDirectionLeft
 UISwipeGestureRecognizerDirectionUp
 UISwipeGestureRecognizerDirectionDown
 */
/*
swipe.direction = UISwipeGestureRecognizerDirectionRight;
swipe.numberOfTouchesRequired = 1;
[imgView addGestureRecognizer:swipe];
[self.view addSubview:imgView];

}

#pragma mark - 点击手势触发事件
-(void)imageViewSwipe:(UISwipeGestureRecognizer *)swipe
{
    NSLog(@"识别到了轻扫手势");
    if(swipe.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        NSLog(@"Left");
    }
    else if(swipe.direction == UISwipeGestureRecognizerDirectionRight)
    {
        NSLog(@"Right");
    }
}




——————————————————————————————————————————————————————————————————————————————————————

- (void)viewDidLoad
{
    [super viewDidLoad];
    //创建一个图像视图
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(80, 200, 200, 200)];
    //工程中拿一个张图
    UIImage *image = [UIImage imageNamed:@"1.png"];
    imgView.image = image;
    //属性开启和用户交互 NO
    imgView.userInteractionEnabled = YES;
    //第二步 开始添加手势  UIGestureRecognize父类
    //抽象类  特点 不能创建对象
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewLongPress:)];
    longPress.delegate = self;
    //最短是 1 秒
    longPress.minimumPressDuration = 2;
    //手势View对象  添加给UIImageView
    [imgView addGestureRecognizer:longPress];
    [self.view addSubview:imgView];
    
}

#pragma mark - 点击手势触发事件
-(void)imageViewLongPress:(UILongPressGestureRecognizer *)longPress
{
    if(longPress.state == UIGestureRecognizerStateEnded)
    {
        NSLog(@"长按手势完毕");
    }
    else
    {
        NSLog(@"长按手势进行中。。。");
    }
}
——————————————————————————————————————————————————————————————————————————————————————


 -(id)init;
 
 -(instancetype)init;  //iOS7开始的用法
 
 
 
 但是，instancetype和id是不同的：
 
 id是可以用来定义属性，变量，参数类型的
 
 而instancetype只能用来做初始化方法或工厂方法的返回值类型，不能出现在属性，变量，参数的类型定义处。
 
 id  a;//OK
 
 instancetype b;//ERROR
 
 
 
 
 
 
 
 位运算符
 
 &   |   ^   ~   <<  >>
 
 
 
 |      <<
 
 
 
 char x = 10;
 
 char y = 11;
 
 x | y :
 
 00001010
 
 00001011
 
 ——————
 
 00001011
 
 
 
 x<<1
 
 00010100  :   20
 
 
 
 Right    1 << 0   :  1     00000001
 
 Left       1 << 1  :   2     00000010
 
 Up         1 << 2  :   4    00000100
 
 Down   1 << 3  :  8     00001000
 
 
 
 Right | Left  :   3   00000011
 


 1.UITextField的初始化及设置
 
 searchTextField=[[UITextField alloc]initWithFrame:CGRectMake(1.0,0.0,searchBackGroundImageView.frame.size.width, searchBackGroundImageView.frame.size.height)];//创建一个UITextField对象，及设置其位置及大小
 
 searchTextField.contentVerticalAlignment=UIControlContentVerticalAlignmentCenter;//设置其输入内容竖直居中
 
 UIImageView* imgV=[[UIImageViewalloc]initWithImage:[UIImageimageNamed:@"search_ico"]];
 
 searchTextField.leftView=imgV;//设置输入框内左边的图标
 
 [self.tf11setClearButtonMode:UITextFieldViewModeWhileEditing];//右侧删除按钮
 
 searchTextField.leftViewMode=UITextFieldViewModeAlways;
 
 searchTextField.placeholder=@"请输入关键字";//默认显示的字
 
 searchTextField.secureTextEntry=YES;//设置成密码格式
 
 searchTextField.keyboardType=UIKeyboardTypeDefault;//设置键盘类型为默认的
 
 searchTextField.returnKeyType=UIReturnKeyDefault;//返回键的类型
 
 searchTextField.delegate=self;//设置委托
 
 2.可以通过委托方法关闭键盘
 
 -(BOOL)textFieldShouldReturn:(UITextField*)textField
 
 {
 
 [searchTextField resignFirstResponder];
 
 return YES;
 
 }
 
 3.聚焦方法
 
 [searchTextField becomeFirstResponder];
 
 4.各种收键盘
 
 - (void)viewDidLoad {
 
 [superviewDidLoad];
 
 //第一种：触摸背景来关闭虚拟键盘
 
 //给背景view添加UIControl触发点击事件
 
 UIControl *_back = [[UIControlalloc] initWithFrame:self.view.frame];
 
 _back.backgroundColor = [UIColorgrayColor];
 
 self.view = _back;
 
 [_back release];
 
 [(UIControl *)self.viewaddTarget:selfaction:@selector(backgroundTap) forControlEvents:UIControlEventTouchDown];
 
 //红色textfield
 
 textField1 = [[UITextFieldalloc] initWithFrame:CGRectMake(20, 300, 200, 30)];
 
 textField1.backgroundColor = [UIColorredColor];
 
 textField1.borderStyle = UITextBorderStyleRoundedRect;
 
 textField1.textColor = [UIColorredColor];
 
 textField1.delegate = self;
 
 [self.viewaddSubview:textField1];
 
 
 
 textField2 = [[UITextFieldalloc] initWithFrame:CGRectMake(20, 30, 200, 30)];
 
 textField2.backgroundColor = [UIColorclearColor];
 
 textField2.borderStyle = UITextBorderStyleRoundedRect;
 
 textField2.textColor = [UIColorredColor];
 
 textField2.delegate = self;
 
 [self.viewaddSubview:textField2];
 
 
 
 //第三种: 点击虚拟键盘上按键手键盘
 
 UIToolbar *bar=[[UIToolbaralloc]initWithFrame:CGRectMake(0, 0, 320, 30)];
 
 UIBarButtonItem *btn=[[UIBarButtonItemalloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCanceltarget:selfaction:@selector(resign)];
 
 UIBarButtonItem *space=[[UIBarButtonItemalloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpacetarget:selfaction:nil];//用于把btn挤到右侧
 
 NSArray *btarr=[NSArrayarrayWithObjects:btn,space,nil];
 
 bar.items=btarr;
 
 //    bar.tintColor=[UIColor blackColor];//给toolbar染色作用同下
 
 bar.barStyle=UIBarStyleBlackTranslucent;//bar的类型设置半透明
 
 self.textField1.inputAccessoryView=bar;
 
 self.textField2.inputAccessoryView=bar;
 
 }
 
 //toolbar方法
 
 -(void)resign{
 
 [self.textField1resignFirstResponder];
 
 [self.textField2resignFirstResponder];
 
 }
 
 //点击北京手键盘
 
 -(IBAction)backgroundTap
 
 {
 
 //动画是执行推上textfield后还原
 
 NSTimeInterval animationDuration = 0.30f;
 
 [UIViewbeginAnimations:@"ResizeForKeyboard"context:nil];
 
 [UIViewsetAnimationDuration:animationDuration];
 
 CGRect rect = CGRectMake(0.0f, 20.0f, self.view.frame.size.width, self.view.frame.size.height);      //还原view
 
 self.view.frame = rect;
 
 [UIViewcommitAnimations];
 
 
 
 [textField1resignFirstResponder];
 
 [textField2resignFirstResponder];
 
 }
 
 
 
第二种：点击return键手键盘
-(BOOL)textFieldShouldReturn:(UITextField *)textField

{
    
    //动画是执行推上textfield后还原
    
    NSTimeInterval animationDuration = 0.30f;
    
    [UIViewbeginAnimations:@"ResizeForKeyboard"context:nil];
    
    [UIViewsetAnimationDuration:animationDuration];
    
    CGRect rect = CGRectMake(0.0f, 20.0f, self.view.frame.size.width, self.view.frame.size.height);      //还原上一步view上提效果
    
    self.view.frame = rect;
    
    [UIViewcommitAnimations];
    
    
    
    [textField resignFirstResponder];
    
    returnYES;
    
}



解决虚拟键盘挡住UITextField的方法,将整个self.view上推键盘顶部与textfield底部大小的距离即offset

- (void)textFieldDidBeginEditing:(UITextField *)textField

{
    
    CGRect frame = textField.frame;
    
    int offset = frame.origin.y+60- (self.view.frame.size.height - 216.0);//求出键盘顶部与textfield底部大小的距离
    
    NSTimeInterval animationDuration = 0.30f;
    
    [UIViewbeginAnimations:@"ResizeForKeyBoard"context:nil];
    
    [UIViewsetAnimationDuration:animationDuration];
    
    float width = self.view.frame.size.width;
    
    float height = self.view.frame.size.height;
    
    if(offset > 0)
        
    {
        
        CGRect rect = CGRectMake(0.0f, -offset,width,height); //上推键盘操作,view大小始终没变
        
        self.view.frame = rect;
        
    }
    
    [UIViewcommitAnimations];
    
}




IOS-TextField知多少

原文地址：http://blog.csdn.net/tskyfree/article/details/8121915
//初始化textfield并设置位置及大小
UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(20, 20, 130, 30)];



//设置边框样式，只有设置了才会显示边框样式

text.borderStyle = UITextBorderStyleRoundedRect;



typedef enum {
    
    UITextBorderStyleNone,
    
    UITextBorderStyleLine,
    
    UITextBorderStyleBezel,
    
    UITextBorderStyleRoundedRect
    
} UITextBorderStyle;



//设置输入框的背景颜色，此时设置为白色 如果使用了自定义的背景图片边框会被忽略掉

text.backgroundColor = [UIColor whiteColor];



//设置背景

text.background = [UIImage imageNamed:@"dd.png"];



//设置背景

text.disabledBackground = [UIImage imageNamed:@"cc.png"];



//当输入框没有内容时，水印提示 提示内容为password

text.placeholder = @"password";



//设置输入框内容的字体样式和大小

text.font = [UIFont fontWithName:@"Arial" size:20.0f];



//设置字体颜色

text.textColor = [UIColor redColor];



//输入框中是否有个叉号，在什么时候显示，用于一次性删除输入框中的内容

text.clearButtonMode = UITextFieldViewModeAlways;



typedef enum {
    
    UITextFieldViewModeNever,  重不出现
    
    UITextFieldViewModeWhileEditing, 编辑时出现
    
    UITextFieldViewModeUnlessEditing,  除了编辑外都出现
    
    UITextFieldViewModeAlways   一直出现
    
} UITextFieldViewMode;



//输入框中一开始就有的文字

text.text = @"一开始就在输入框的文字";



//每输入一个字符就变成点 用语密码输入

text.secureTextEntry = YES;



//是否纠错

text.autocorrectionType = UITextAutocorrectionTypeNo;



typedef enum {
    
    UITextAutocorrectionTypeDefault, 默认
    
    UITextAutocorrectionTypeNo,   不自动纠错
    
    UITextAutocorrectionTypeYes,  自动纠错
    
} UITextAutocorrectionType;



//再次编辑就清空

text.clearsOnBeginEditing = YES;



//内容对齐方式

text.textAlignment = UITextAlignmentLeft;



//内容的垂直对齐方式  UITextField继承自UIControl,此类中有一个属性contentVerticalAlignment

text.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;



//设置为YES时文本会自动缩小以适应文本窗口大小.默认是保持原来大小,而让长文本滚动

textFied.adjustsFontSizeToFitWidth = YES;



//设置自动缩小显示的最小字体大小

text.minimumFontSize = 20;



//设置键盘的样式

text.keyboardType = UIKeyboardTypeNumberPad;



typedef enum {
    
    UIKeyboardTypeDefault,       默认键盘，支持所有字符
    
    UIKeyboardTypeASCIICapable,  支持ASCII的默认键盘
    
    UIKeyboardTypeNumbersAndPunctuation,  标准电话键盘，支持＋＊＃字符
    
    UIKeyboardTypeURL,            URL键盘，支持.com按钮 只支持URL字符
    
    UIKeyboardTypeNumberPad,              数字键盘
    
    UIKeyboardTypePhonePad,     电话键盘
    
    UIKeyboardTypeNamePhonePad,   电话键盘，也支持输入人名
    
    UIKeyboardTypeEmailAddress,   用于输入电子 邮件地址的键盘
    
    UIKeyboardTypeDecimalPad,     数字键盘 有数字和小数点
    
    UIKeyboardTypeTwitter,        优化的键盘，方便输入@、#字符
    
    UIKeyboardTypeAlphabet = UIKeyboardTypeASCIICapable,
    
} UIKeyboardType;



//首字母是否大写

text.autocapitalizationType = UITextAutocapitalizationTypeNone;



typedef enum {
    
    UITextAutocapitalizationTypeNone, 不自动大写
    
    UITextAutocapitalizationTypeWords,  单词首字母大写
    
    UITextAutocapitalizationTypeSentences,  句子的首字母大写
    
    UITextAutocapitalizationTypeAllCharacters, 所有字母都大写
    
} UITextAutocapitalizationType;



//return键变成什么键

text.returnKeyType =UIReturnKeyDone;



typedef enum {
    
    UIReturnKeyDefault, 默认 灰色按钮，标有Return
    
    UIReturnKeyGo,      标有Go的蓝色按钮
    
    UIReturnKeyGoogle,标有Google的蓝色按钮，用语搜索
    
    UIReturnKeyJoin,标有Join的蓝色按钮
    
    UIReturnKeyNext,标有Next的蓝色按钮
    
    UIReturnKeyRoute,标有Route的蓝色按钮
    
    UIReturnKeySearch,标有Search的蓝色按钮
    
    UIReturnKeySend,标有Send的蓝色按钮
    
    UIReturnKeyYahoo,标有Yahoo的蓝色按钮
    
    UIReturnKeyYahoo,标有Yahoo的蓝色按钮
    
    UIReturnKeyEmergencyCall, 紧急呼叫按钮
    
} UIReturnKeyType;



//键盘外观

textView.keyboardAppearance=UIKeyboardAppearanceDefault；

typedef enum {
    
    UIKeyboardAppearanceDefault， 默认外观，浅灰色
    
    UIKeyboardAppearanceAlert，     深灰 石墨色
    
    
    
} UIReturnKeyType;





//设置代理 用于实现协议

text.delegate = self;



//把textfield加到视图中

[self.window addSubview:text];



//最右侧加图片是以下代码   左侧类似

UIImageView *image=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"right.png"]];

text.rightView=image;

text.rightViewMode = UITextFieldViewModeAlways;



typedef enum {
    
    UITextFieldViewModeNever,
    
    UITextFieldViewModeWhileEditing,
    
    UITextFieldViewModeUnlessEditing,
    
    UITextFieldViewModeAlways
    
} UITextFieldViewMode;





//按return键键盘往下收  becomeFirstResponder



类要采用UITextFieldDelegate协议



text.delegate = self;  声明text的代理是我，我会去实现把键盘往下收的方法 这个方法在UITextFieldDelegate里所以我们要采用UITextFieldDelegate这个协议



- (BOOL)textFieldShouldReturn:(UITextField *)textField

{
    
    [text resignFirstResponder];    //主要是[receiver resignFirstResponder]在哪调用就能把receiver对应的键盘往下收
    
    return YES;
    
}





重写绘制行为

除了UITextField对象的风格选项，你还可以定制化UITextField对象，为他添加许多不同的重写方法，来改变文本字段的显示行为。这些方法都会返回一个CGRect结构，制定了文本字段每个部件的边界范围。以下方法都可以重写。



– textRectForBounds:　　    //重写来重置文字区域

– drawTextInRect:　　        //改变绘文字属性.重写时调用super可以按默认图形属性绘制,若自己完全重写绘制函数，就不用调用super了.

– placeholderRectForBounds:　　//重写来重置占位符区域

– drawPlaceholderInRect:　　//重写改变绘制占位符属性.重写时调用super可以按默认图形属性绘制,若自己完全重写绘制函数，就不用调用super了.

– borderRectForBounds:　　//重写来重置边缘区域

– editingRectForBounds:　　//重写来重置编辑区域

– clearButtonRectForBounds:　　//重写来重置clearButton位置,改变size可能导致button的图片失真

– leftViewRectForBounds:

– rightViewRectForBounds:



委托方法



- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    
    
    //返回一个BOOL值，指定是否循序文本字段开始编辑
    
    
    
    return YES;
    
}



- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
    
    
    //开始编辑时触发，文本字段将成为first responder
    
}



- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
    
    
    //返回BOOL值，指定是否允许文本字段结束编辑，当编辑结束，文本字段会让出first responder
    
    //要想在用户结束编辑时阻止文本字段消失，可以返回NO
    
    //这对一些文本字段必须始终保持活跃状态的程序很有用，比如即时消息
    
    
    
    return NO;
    
}



- (BOOL)textField:(UITextField*)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    
    
    //当用户使用自动更正功能，把输入的文字修改为推荐的文字时，就会调用这个方法。
    
    //这对于想要加入撤销选项的应用程序特别有用
    
    //可以跟踪字段内所做的最后一次修改，也可以对所有编辑做日志记录,用作审计用途。
    
    //要防止文字被改变可以返回NO
    
    //这个方法的参数中有一个NSRange对象，指明了被改变文字的位置，建议修改的文本也在其中
    
    
    
    return YES;
    
}



- (BOOL)textFieldShouldClear:(UITextField *)textField{
    
    
    
    //返回一个BOOL值指明是否允许根据用户请求清除内容
    
    //可以设置在特定条件下才允许清除内容
    
    
    
    return YES;
    
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    
    //返回一个BOOL值，指明是否允许在按下回车键时结束编辑
    
    //如果允许要调用resignFirstResponder 方法，这回导致结束编辑，而键盘会被收起[textField resignFirstResponder];
    
    //查一下resign这个单词的意思就明白这个方法了
    
    
    
    return YES;
    
}







通知

UITextField派生自UIControl，所以UIControl类中的通知系统在文本字段中也可以使用。除了UIControl类的标准事件，你还可以使用下列UITextField类特有的事件



UITextFieldTextDidBeginEditingNotification

UITextFieldTextDidChangeNotification

UITextFieldTextDidEndEditingNotification

当文本字段退出编辑模式时触发。通知的object属性存储了最终文本。



因为文本字段要使用键盘输入文字，所以下面这些事件发生时，也会发送动作通知



UIKeyboardWillShowNotification   //键盘显示之前发送

UIKeyboardDidShowNotification    //键盘显示之后发送

UIKeyboardWillHideNotification   //键盘隐藏之前发送

UIKeyboardDidHideNotification    //键盘隐藏之后发送



1、Text ：设置文本框的默认文本。

2、Placeholder ： 可以在文本框中显示灰色的字，用于提示用户应该在这个文本框输入什么内容。当这个文本框中输入了数据时，用于提示的灰色的字将会自动消失。

3、Background ：

4、Disabled ： 若选中此项，用户将不能更改文本框内容。

5、接下来是三个按钮，用来设置对齐方式。

6、Border Style ： 选择边界风格。

7、Clear Button ： 这是一个下拉菜单，你可以选择清除按钮什么时候出现，所谓清除按钮就是出一个现在文本框右边的小 X ，你可以有以下选择：

7.1 Never appears ： 从不出现

7.2 Appears while editing ： 编辑时出现

7.3 Appears unless editing ：

7.4 Is always visible ： 总是可见

8、Clear when editing begins ： 若选中此项，则当开始编辑这个文本框时，文本框中之前的内容会被清除掉。比如，你现在这个文本框 A 中输入了 "What" ，之后去编辑文本框 B，若再回来编辑文本框 A ，则其中的"What" 会被立即清除。

9、Text Color ： 设置文本框中文本的颜色。

10、Font ： 设置文本的字体与字号。

11、Min Font Size ： 设置文本框可以显示的最小字体（不过我感觉没什么用）

12、Adjust To Fit ： 指定当文本框尺寸减小时，文本框中的文本是否也要缩小。选择它，可以使得全部文本都可见，即使文本很长。但是这个选项要跟 Min Font Size 配合使用，文本再缩小，也不会小于设定的 Min Font Size 。

接下来的部分用于设置键盘如何显示。

13、Captitalization ： 设置大写。下拉菜单中有四个选项：

13.1 None ： 不设置大写

13.2 Words ： 每个单词首字母大写，这里的单词指的是以空格分开的字符串

13.3 Sentances ： 每个句子的第一个字母大写，这里的句子是以句号加空格分开的字符串

13.4 All Characters ： 所以字母大写

14、Correction ： 检查拼写，默认是 YES 。

15、Keyboard ： 选择键盘类型，比如全数字、字母和数字等。

16、Appearance：

17、Return Key ： 选择返回键，可以选择 Search 、 Return 、 Done 等。

18、Auto-enable Return Key ： 如选择此项，则只有至少在文本框输入一个字符后键盘的返回键才有效。

19、Secure ： 当你的文本框用作密码输入框时，可以选择这个选项，此时，字符显示为星号。



1.Alignment Horizontal 水平对齐方式

2.Alignment Vertical 垂直对齐方式

3.用于返回一个BOOL值  输入框是否 Selected(选中) Enabled(可用) Highlighted(高亮)



限制只能输入特定的字符



(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    NSCharacterSet *cs;
    
    cs = [[NSCharacterSet characterSetWithCharactersInString:NUMBERS]invertedSet];
    
    
    
    NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs]componentsJoinedByString:@""]; //按cs分离出数组,数组按@""分离出字符串
    
    
    
    BOOL canChange = [string isEqualToString:filtered];
    
    
    
    return canChange;
    
}



上面那个NUMBERS是一个宏，可以在文件顶部定义：

#define NUMBERS @”0123456789\n” （这个代表可以输入数字和换行，请注意这个\n，如果不写这个，Done按键将不会触发，如果用在SearchBar中，将会不触发Search事件，因为你自己限制不让输入\n，好惨，我在项目中才发现的。）

所以，如果你要限制输入英文和数字的话，就可以把这个定义为：

#define kAlphaNum   @”ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789″。

当然，你还可以在以上方法return之前，做一提示的，比如提示用户只能输入数字之类的。如果你觉得有需要的话。



限制只能输入一定长度的字符



- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;

{  //string就是此时输入的那个字符 textField就是此时正在输入的那个输入框 返回YES就是可以改变输入框的值 NO相反
    
    
    
    if ([string isEqualToString:@"\n"])  //按会车可以改变
        
    {
        
        return YES;
        
    }
    
    
    
    NSString * toBeString = [textField.text stringByReplacingCharactersInRange:range withString:string]; //得到输入框的内容
    
    
    
    if (self.myTextField == textField)  //判断是否时我们想要限定的那个输入框
        
    { 
        
        if ([toBeString length] > 20) { //如果输入框内容大于20则弹出警告
            
            textField.text = [toBeString substringToIndex:20]; 
            
            UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:nil message:@"超过最大字数不能输入了" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil] autorelease]; 
            
            [alert show]; 
            
            return NO; 
            
        } 
        
    } 
    
    return YES; 
    
}


 */
@end
