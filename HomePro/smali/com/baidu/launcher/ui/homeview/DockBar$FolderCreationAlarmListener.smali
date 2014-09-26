.class Lcom/baidu/launcher/ui/homeview/DockBar$FolderCreationAlarmListener;
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
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/DockBar;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/homeview/DockBar;I)V
    .locals 0
    .parameter
    .parameter "aIndex"

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$FolderCreationAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    iput p2, p0, Lcom/baidu/launcher/ui/homeview/DockBar$FolderCreationAlarmListener;->index:I

    .line 1326
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/baidu/launcher/ui/animation/Alarm;)V
    .locals 2
    .parameter "alarm"

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$FolderCreationAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$FolderCreationAlarmListener;->index:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->showFolderAccept(I)V

    .line 1330
    return-void
.end method
