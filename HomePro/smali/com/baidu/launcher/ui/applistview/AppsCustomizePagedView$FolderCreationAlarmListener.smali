.class Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field childIndex:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 3259
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$FolderCreationAlarmListener;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3260
    iput p2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$FolderCreationAlarmListener;->childIndex:I

    .line 3261
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/baidu/launcher/ui/animation/Alarm;)V
    .locals 2
    .parameter "alarm"

    .prologue
    .line 3264
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$FolderCreationAlarmListener;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$FolderCreationAlarmListener;->childIndex:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->showFolderAccept(I)V

    .line 3266
    return-void
.end method
