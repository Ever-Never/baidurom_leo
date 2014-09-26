.class Lcom/baidu/launcher/ui/folder/FillFolder$1;
.super Ljava/lang/Object;
.source "FillFolder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/FillFolder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/FillFolder;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/FillFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 123
    if-eqz p2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/launcher/ui/folder/FillFolder;->mIsEdittingTitle:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$002(Lcom/baidu/launcher/ui/folder/FillFolder;Z)Z

    .line 125
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    #getter for: Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$200(Lcom/baidu/launcher/ui/folder/FillFolder;)Lcom/baidu/launcher/ui/folder/FolderEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    #getter for: Lcom/baidu/launcher/ui/folder/FillFolder;->mFolerName:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$100(Lcom/baidu/launcher/ui/folder/FillFolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    #getter for: Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$200(Lcom/baidu/launcher/ui/folder/FillFolder;)Lcom/baidu/launcher/ui/folder/FolderEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    #getter for: Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$200(Lcom/baidu/launcher/ui/folder/FillFolder;)Lcom/baidu/launcher/ui/folder/FolderEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderEditText;->selectAll()V

    .line 128
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    #getter for: Lcom/baidu/launcher/ui/folder/FillFolder;->mEditBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$300(Lcom/baidu/launcher/ui/folder/FillFolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    #getter for: Lcom/baidu/launcher/ui/folder/FillFolder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$500(Lcom/baidu/launcher/ui/folder/FillFolder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/launcher/ui/folder/FillFolder$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/folder/FillFolder$1$1;-><init>(Lcom/baidu/launcher/ui/folder/FillFolder$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    #getter for: Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$200(Lcom/baidu/launcher/ui/folder/FillFolder;)Lcom/baidu/launcher/ui/folder/FolderEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    #getter for: Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderHint:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$600(Lcom/baidu/launcher/ui/folder/FillFolder;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/baidu/launcher/ui/folder/FillFolder;->buildTitle(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$700(Lcom/baidu/launcher/ui/folder/FillFolder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    #getter for: Lcom/baidu/launcher/ui/folder/FillFolder;->mEditBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$300(Lcom/baidu/launcher/ui/folder/FillFolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
