.class Lcom/baidu/launcher/ui/folder/FolderManager$2;
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

.field final synthetic val$launcher:Lcom/baidu/launcher/app/Launcher;

.field final synthetic val$pos:[I

.field final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/FolderManager;Lcom/baidu/launcher/app/Launcher;[ILjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderManager$2;->this$0:Lcom/baidu/launcher/ui/folder/FolderManager;

    iput-object p2, p0, Lcom/baidu/launcher/ui/folder/FolderManager$2;->val$launcher:Lcom/baidu/launcher/app/Launcher;

    iput-object p3, p0, Lcom/baidu/launcher/ui/folder/FolderManager$2;->val$pos:[I

    iput-object p4, p0, Lcom/baidu/launcher/ui/folder/FolderManager$2;->val$run:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 99
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderManager$2;->val$launcher:Lcom/baidu/launcher/app/Launcher;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager$2;->this$0:Lcom/baidu/launcher/ui/folder/FolderManager;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderManager;->mOpendFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;
    invoke-static {v2}, Lcom/baidu/launcher/ui/folder/FolderManager;->access$000(Lcom/baidu/launcher/ui/folder/FolderManager;)Lcom/baidu/launcher/ui/folder/FolderHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/FolderManager$2;->this$0:Lcom/baidu/launcher/ui/folder/FolderManager;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;
    invoke-static {v3}, Lcom/baidu/launcher/ui/folder/FolderManager;->access$100(Lcom/baidu/launcher/ui/folder/FolderManager;)Lcom/baidu/launcher/ui/folder/FolderLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FolderManager$2;->this$0:Lcom/baidu/launcher/ui/folder/FolderManager;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;
    invoke-static {v4}, Lcom/baidu/launcher/ui/folder/FolderManager;->access$200(Lcom/baidu/launcher/ui/folder/FolderManager;)Lcom/baidu/launcher/ui/folder/Folder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager$2;->val$pos:[I

    iget-object v6, p0, Lcom/baidu/launcher/ui/folder/FolderManager$2;->val$run:Ljava/lang/Runnable;

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/baidu/launcher/ui/animation/Choreographer;->playOpenFolderAnim(Lcom/baidu/launcher/ui/logic/ViewManager;Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/ui/folder/FolderLayer;Lcom/baidu/launcher/ui/folder/Folder;[ILjava/lang/Runnable;Z)V

    .line 102
    return-void
.end method
