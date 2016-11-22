//
//  ViewController.m
//  HeBiaoWeChat
//
//  Created by apple on 2016/11/22.
//  Copyright © 2016年 hebiao. All rights reserved.
//

#import "ViewController.h"

#import "ConstantPart.h"



#import "WeChatCell.h"
#import "MessageModel.h"



@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>{
    
    UITableView *table;
    
    
    NSMutableArray<MessageModel *> *arrList;
    
}



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arrList=[[NSMutableArray alloc] init];
    
    [self allocList];
    
    
    table=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, AppFrameWidth, AppFrameHight)];
    table.separatorColor=[UIColor clearColor];
    table.delegate=self;
    table.dataSource=self;
    [self.view addSubview:table];
    
}

-(void)allocList{
    MessageModel *model=[[MessageModel alloc] init];
    model.showMessageTime=YES;
    model.messageTime=@"11:22";
    model.messageText=@"中央军委主席习近平日前签署命令，追授海军某舰载航空兵部队一级飞行员张超“逐梦海天的强军先锋”荣誉称号。2016年4月27日，张超在驾驶歼-15进行陆基模拟着舰训练时，飞机突发电传故障，不幸壮烈牺牲。中央军委号召，全军和武警部队广大官兵要以张超同志为榜样，高举中国特色社会主义伟大旗帜，坚持以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入学习贯彻习主席系列重要讲话精神，团结奋进，锐意创新，扎实工作，为实现强军目标、建设世界一流军队贡献智慧和力量";
    model.messageSenderType=MessageSenderTypeHantu;
    model.messageType=MessageTypeText;
    [arrList addObject:model];
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.messageText=@"中央军委主席习近平日前签署命令，追授海军某舰载航空兵部队一级飞行员张超“逐梦海天的强军先锋”荣誉称号。2016年4月27日，张超在驾驶歼-15进行陆基模拟着舰训练时，飞机突发电传故障，不幸壮烈牺牲。中央军委号召，全军和武警部队广大官兵要以张超同志为榜样，高举中国特色社会主义伟大旗帜，坚持以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入学习贯彻习主席系列重要讲话精神，团结奋进，锐意创新，扎实工作，为实现强军目标、建设世界一流军队贡献智慧和力量";
    model.messageSenderType=MessageSenderTypeHantu;
    model.messageType=MessageTypeText;
    [arrList addObject:model];
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.messageText=@"中央军委主席";
    model.messageSenderType=MessageSenderTypeHantu;
    model.messageType=MessageTypeText;
    [arrList addObject:model];
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.messageText=@"中央军委主席";
    model.messageSenderType=MessageSenderTypeHantu;
    model.messageType=MessageTypeText;
    
    [arrList addObject:model];
    
    
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=YES;
    model.messageTime=@"11:22";
    model.messageText=@"中央军委主席习近平日前签署命令，追授海军某舰载航空兵部队一级飞行员张超“逐梦海天的强军先锋”荣誉称号。2016年4月27日，张超在驾驶歼-15进行陆基模拟着舰训练时，飞机突发电传故障，不幸壮烈牺牲。中央军委号召，全军和武警部队广大官兵要以张超同志为榜样，高举中国特色社会主义伟大旗帜，坚持以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入学习贯彻习主席系列重要讲话精神，团结奋进，锐意创新，扎实工作，为实现强军目标、建设世界一流军队贡献智慧和力量";
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeText;
    [arrList addObject:model];
    
    
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.messageText=@"中央军委主席习近平日前签署命令，追授海军某舰载航空兵部队一级飞行员张超“逐梦海天的强军先锋”荣誉称号。2016年4月27日，张超在驾驶歼-15进行陆基模拟着舰训练时，飞机突发电传故障，不幸壮烈牺牲。中央军委号召，全军和武警部队广大官兵要以张超同志为榜样，高举中国特色社会主义伟大旗帜，坚持以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入学习贯彻习主席系列重要讲话精神，团结奋进，锐意创新，扎实工作，为实现强军目标、建设世界一流军队贡献智慧和力量中央军委主席习近平日前签署命令，追授海军某舰载航空兵部队一级飞行员张超“逐梦海天的强军先锋”荣誉称号。2016年4月27日，张超在驾驶歼-15进行陆基模拟着舰训练时，飞机突发电传故障，不幸壮烈牺牲。中央军委号召，全军和武警部队广大官兵要以张超同志为榜样，高举中国特色社会主义伟大旗帜，坚持以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入学习贯彻习主席系列重要讲话精神，团结奋进，锐意创新，扎实工作，为实现强军目标、建设世界一流军队贡献智慧和力量中央军委主席习近平日前签署命令，追授海军某舰载航空兵部队一级飞行员张超“逐梦海天的强军先锋”荣誉称号。2016年4月27日，张超在驾驶歼-15进行陆基模拟着舰训练时，飞机突发电传故障，不幸壮烈牺牲。中央军委号召，全军和武警部队广大官兵要以张超同志为榜样，高举中国特色社会主义伟大旗帜，坚持以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入学习贯彻习主席系列重要讲话精神，团结奋进，锐意创新，扎实工作，为实现强军目标、建设世界一流军队贡献智慧和力量中央军委主席习近平日前签署命令，追授海军某舰载航空兵部队一级飞行员张超“逐梦海天的强军先锋”荣誉称号。2016年4月27日，张超在驾驶歼-15进行陆基模拟着舰训练时，飞机突发电传故障，不幸壮烈牺牲。中央军委号召，全军和武警部队广大官兵要以张超同志为榜样，高举中国特色社会主义伟大旗帜，坚持以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入学习贯彻习主席系列重要讲话精神，团结奋进，锐意创新，扎实工作，为实现强军目标、建设世界一流军队贡献智慧和力量中央军委主席习近平日前签署命令，追授海军某舰载航空兵部队一级飞行员张超“逐梦海天的强军先锋”荣誉称号。2016年4月27日，张超在驾驶歼-15进行陆基模拟着舰训练时，飞机突发电传故障，不幸壮烈牺牲。中央军委号召，全军和武警部队广大官兵要以张超同志为榜样，高举中国特色社会主义伟大旗帜，坚持以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入学习贯彻习主席系列重要讲话精神，团结奋进，锐意创新，扎实工作，为实现强军目标、建设世界一流军队贡献智慧和力量中央军委主席习近平日前签署命令，追授海军某舰载航空兵部队一级飞行员张超“逐梦海天的强军先锋”荣誉称号。2016年4月27日，张超在驾驶歼-15进行陆基模拟着舰训练时，飞机突发电传故障，不幸壮烈牺牲。中央军委号召，全军和武警部队广大官兵要以张超同志为榜样，高举中国特色社会主义伟大旗帜，坚持以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入学习贯彻习主席系列重要讲话精神，团结奋进，锐意创新，扎实工作，为实现强军目标、建设世界一流军队贡献智慧和力量中央军委主席习近平日前签署命令，追授海军某舰载航空兵部队一级飞行员张超“逐梦海天的强军先锋”荣誉称号。2016年4月27日，张超在驾驶歼-15进行陆基模拟着舰训练时，飞机突发电传故障，不幸壮烈牺牲。中央军委号召，全军和武警部队广大官兵要以张超同志为榜样，高举中国特色社会主义伟大旗帜，坚持以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入学习贯彻习主席系列重要讲话精神，团结奋进，锐意创新，扎实工作，为实现强军目标、建设世界一流军队贡献智慧和力量";
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeText;
    [arrList addObject:model];
    
    
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.messageText=@"中央军委主席习近平日";
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeText;
    model.messageSentStatus=MessageSentStatusUnSended;
    [arrList addObject:model];
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.messageText=@"中央军委主席习近平日";
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeText;
    model.messageSentStatus=MessageSentStatusUnSended;
    [arrList addObject:model];
    
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=YES;
    model.messageTime=@"11:22";
    model.messageText=@"中央军委主席习近平日";
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeText;
    model.messageSentStatus=MessageSentStatusSended;
    model.messageReadStatus=MessageReadStatusRead;
    [arrList addObject:model];
    
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.messageText=@"中央军委";
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeText;
    model.messageSentStatus=MessageSentStatusSended;
    model.messageReadStatus=MessageReadStatusUnRead;
    [arrList addObject:model];
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.messageText=@"中";
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeText;
    [arrList addObject:model];
    
    
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.duringTime=55;
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeVoice;
    [arrList addObject:model];
    
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.duringTime=55;
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeVoice;
    [arrList addObject:model];
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=YES;
    model.messageTime=@"11:22";
    model.duringTime=4;
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeVoice;
    [arrList addObject:model];
    
    
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.duringTime=9;
    model.messageSentStatus=MessageSentStatusSending;
    model.messageReadStatus=MessageReadStatusUnRead;
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeVoice;
    [arrList addObject:model];
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.duringTime=9;
    model.messageSentStatus=MessageSentStatusUnSended;
    //    model.messageReadStatus=MessageReadStatusUnRead;
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeVoice;
    [arrList addObject:model];
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.duringTime=9;
    model.messageSentStatus=MessageSentStatusSended;
    model.messageReadStatus=MessageReadStatusUnRead;
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeVoice;
    [arrList addObject:model];
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=NO;
    model.messageTime=@"11:22";
    model.duringTime=9;
    model.messageSentStatus=MessageSentStatusSended;
    model.messageReadStatus=MessageReadStatusRead;
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeVoice;
    [arrList addObject:model];
    
    
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=YES;
    model.messageTime=@"11:22";
    model.duringTime=9;
    model.messageSenderType=MessageSenderTypeHantu;
    model.messageType=MessageTypeVoice;
    [arrList addObject:model];
    
    
    
    
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=YES;
    model.messageTime=@"11:22";
    model.duringTime=9;
    model.messageSenderType=MessageSenderTypeHantu;
    model.messageType=MessageTypeImage;
    model.imageSmall=[UIImage imageNamed:@"WechatIMG4e"];
    [arrList addObject:model];
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=YES;
    model.messageTime=@"11:22";
    model.duringTime=9;
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeImage;
    model.messageSentStatus=MessageSentStatusSended;
    model.messageReadStatus=MessageReadStatusRead;
    model.imageSmall=[UIImage imageNamed:@"WechatIMG4e"];
    [arrList addObject:model];
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=YES;
    model.messageTime=@"11:22";
    model.duringTime=9;
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeImage;
    model.messageSentStatus=MessageSentStatusSended;
    model.messageReadStatus=MessageReadStatusUnRead;
    model.imageSmall=[UIImage imageNamed:@"WechatIMG4e"];
    [arrList addObject:model];
    
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=YES;
    model.messageTime=@"11:22";
    model.duringTime=9;
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeImage;
    model.messageSentStatus=MessageSentStatusSending;
    model.messageReadStatus=MessageReadStatusRead;
    model.imageSmall=[UIImage imageNamed:@"WechatIMG4e"];
    [arrList addObject:model];
    
    
    
    model=[[MessageModel alloc] init];
    model.showMessageTime=YES;
    model.messageTime=@"11:22";
    model.duringTime=9;
    model.messageSenderType=MessageSenderTypeUser;
    model.messageType=MessageTypeImage;
    model.messageSentStatus=MessageSentStatusUnSended;
    model.messageReadStatus=MessageReadStatusRead;
    model.imageSmall=[UIImage imageNamed:@"WechatIMG4e"];
    [arrList addObject:model];
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    //    [[NSNotificationCenter defaultCenter] postNotificationName:@"notice_hidden" object:nil];
    
    [[UIMenuController sharedMenuController] setMenuVisible:NO animated:YES];
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [arrList count];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return [WeChatCell tableHeightWithModel:arrList[indexPath.row]];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WeChatCell *cell=[WeChatCell cellWithTableView:table messageModel:arrList[indexPath.row]];
    
    [cell setDoubleClickBlock:^(MessageModel *model) {
        
        NSLog(@"%@-----",model.messageText);
        
    }];
    
    [cell setSingleblock:^(MessageModel *model) {
        
        //        NSLog(@"%@-----",model.imageUrl);
        
        
        if (model.messageType==MessageTypeVoice) {
            
        }else if (model.messageType==MessageTypeImage){
            
        }
        
        
    }];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    
}
/*
-(void)aaa:(id)sender
{
    
}
-(BOOL)canBecomeFirstResponder{
    return YES;
}

-(BOOL)canPerformAction:(SEL)action withSender:(id)sender{
    return YES;
}

*/



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
