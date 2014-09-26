.class Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/CellLayout;II)V
    .locals 0
    .parameter
    .parameter "layout"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 3964
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3965
    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;->layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3966
    iput p3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;->cellX:I

    .line 3967
    iput p4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;->cellY:I

    .line 3968
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/baidu/launcher/ui/animation/Alarm;)V
    .locals 3
    .parameter "alarm"

    .prologue
    .line 3971
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;->layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->showFolderAccept(II)V

    .line 3972
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;->layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->clearDragOutlines()V

    .line 3973
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$FolderCreationAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setDragMode(I)V

    .line 3974
    return-void
.end method
