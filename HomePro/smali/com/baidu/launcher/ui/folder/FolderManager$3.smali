.class Lcom/baidu/launcher/ui/folder/FolderManager$3;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/FolderManager;->openFolder(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/ui/logic/ViewManager;Z[IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/FolderManager;

.field final synthetic val$folderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

.field final synthetic val$launcher:Lcom/baidu/launcher/app/Launcher;

.field final synthetic val$pos:[I

.field final synthetic val$viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/FolderManager;Lcom/baidu/launcher/ui/logic/ViewManager;Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/folder/FolderHolder;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderManager$3;->this$0:Lcom/baidu/launcher/ui/folder/FolderManager;

    iput-object p2, p0, Lcom/baidu/launcher/ui/folder/FolderManager$3;->val$viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    iput-object p3, p0, Lcom/baidu/launcher/ui/folder/FolderManager$3;->val$launcher:Lcom/baidu/launcher/app/Launcher;

    iput-object p4, p0, Lcom/baidu/launcher/ui/folder/FolderManager$3;->val$folderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    iput-object p5, p0, Lcom/baidu/launcher/ui/folder/FolderManager$3;->val$pos:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 155
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderManager$3;->val$viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderManager$3;->val$launcher:Lcom/baidu/launcher/app/Launcher;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderManager$3;->val$folderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/FolderManager$3;->this$0:Lcom/baidu/launcher/ui/folder/FolderManager;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderManager;->mFolderLayer:Lcom/baidu/launcher/ui/folder/FolderLayer;
    invoke-static {v3}, Lcom/baidu/launcher/ui/folder/FolderManager;->access$100(Lcom/baidu/launcher/ui/folder/FolderManager;)Lcom/baidu/launcher/ui/folder/FolderLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/FolderManager$3;->this$0:Lcom/baidu/launcher/ui/folder/FolderManager;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderManager;->mOpenedFolder:Lcom/baidu/launcher/ui/folder/Folder;
    invoke-static {v4}, Lcom/baidu/launcher/ui/folder/FolderManager;->access$200(Lcom/baidu/launcher/ui/folder/FolderManager;)Lcom/baidu/launcher/ui/folder/Folder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FolderManager$3;->val$pos:[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/baidu/launcher/ui/animation/Choreographer;->playOpenFolderAnim(Lcom/baidu/launcher/ui/logic/ViewManager;Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/ui/folder/FolderLayer;Lcom/baidu/launcher/ui/folder/Folder;[ILjava/lang/Runnable;Z)V

    .line 157
    return-void
.end method
