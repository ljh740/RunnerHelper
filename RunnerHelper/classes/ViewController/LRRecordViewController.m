//
//  LRRecordViewController.m
//  RunnerHelper
//
//  Created by jie on 2019/2/20.
//

#import "LRRecordViewController.h"
#import "LRRecordTool.h"
@interface LRRecordViewController ()<UITextViewDelegate>
@property (nonatomic,weak) UITextView *textView;
@property (nonatomic,copy) NSString *key;
@end

@implementation LRRecordViewController
+(instancetype) alertWithKey:(NSString *) key
{
    LRRecordViewController *vc=[[LRRecordViewController alloc] init];
    vc.key=key;
    vc.modalPresentationStyle=UIModalPresentationOverCurrentContext;
    return vc;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithWhite:0 alpha:0.5];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.textView becomeFirstResponder];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.textView endEditing:YES];
}
-(UITextView *)textView
{
    if (_textView==nil) {
        CGRect frame=self.view.bounds;
        UITextView *tf=[[UITextView alloc] initWithFrame:CGRectMake(30, 100, frame.size.width-2*30, frame.size.height-400)];
        tf.font=[UIFont systemFontOfSize:22];
        [self.view addSubview:tf];
        tf.delegate=self;
        tf.layer.cornerRadius=20;
        tf.backgroundColor=[UIColor whiteColor];
        tf.text=[LRRecordTool loadByKey:self.key];
        _textView=tf;
    }
    return _textView;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    [LRRecordTool writeByKey:self.key value:textView.text];
}

@end
