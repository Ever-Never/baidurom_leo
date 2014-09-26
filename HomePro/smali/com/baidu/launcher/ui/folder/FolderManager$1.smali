.class Lcom/baidu/launcher/ui/folder/FolderManager$1;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/FolderManager;->closeFolder(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/dragdrop/DragController;ZZ[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/FolderManager;

.field final synthetic val$animate:Z

.field final synthetic val$dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

.field final synthetic val$save:Z


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/FolderManager;Lcom/baidu/launcher/ui/dragdrop/DragController;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderManager$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderManager;

    iput-object p2, p0, Lcom/baidu/launcher/ui/folder/FolderManager$1;->val$dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    iput-boolean p3, p0, Lcom/baidu/launcher/ui/folder/FolderManager$1;->val$save:Z

    iput-boolean p4, p0, Lcom/baidu/launcher/ui/folder/FolderManager$1;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderManager;

    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderManager$1;->val$dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager$1;->val$save:Z

    iget-boolean v3, p0, Lcom/baidu/launcher/ui/folder/FolderManager$1;->val$animate:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/folder/FolderManager;->closeFolder(Lcom/baidu/launcher/ui/dragdrop/DragController;ZZ)V

    .line 95
    return-void
.end method
