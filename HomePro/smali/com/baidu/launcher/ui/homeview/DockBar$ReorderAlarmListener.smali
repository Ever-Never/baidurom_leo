.class Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;
.super Ljava/lang/Object;
.source "DockBar.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/DockBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderAlarmListener"
.end annotation


# instance fields
.field mDraggedIndex:I

.field mNearestIndex:I

.field mNearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/DockBar;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/homeview/DockBar;Lcom/baidu/launcher/ui/homeview/DockBarItem;II)V
    .locals 0
    .parameter
    .parameter "aNearestItem"
    .parameter "aNearestIndex"
    .parameter "aDraggedIndex"

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;->mNearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1340
    iput p3, p0, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;->mNearestIndex:I

    .line 1341
    iput p4, p0, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;->mDraggedIndex:I

    .line 1342
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/baidu/launcher/ui/animation/Alarm;)V
    .locals 3
    .parameter "alarm"

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->setDragMode(I)V

    .line 1346
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;->mNearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    #setter for: Lcom/baidu/launcher/ui/homeview/DockBar;->mLastNearestItem:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$402(Lcom/baidu/launcher/ui/homeview/DockBar;Lcom/baidu/launcher/ui/homeview/DockBarItem;)Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1357
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;->mDraggedIndex:I

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;->mNearestIndex:I

    #calls: Lcom/baidu/launcher/ui/homeview/DockBar;->calculateAnimateViews(II)V
    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$500(Lcom/baidu/launcher/ui/homeview/DockBar;II)V

    .line 1358
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    #calls: Lcom/baidu/launcher/ui/homeview/DockBar;->postAnimation()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$600(Lcom/baidu/launcher/ui/homeview/DockBar;)V

    .line 1361
    return-void
.end method
