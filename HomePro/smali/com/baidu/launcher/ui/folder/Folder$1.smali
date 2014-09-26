.class Lcom/baidu/launcher/ui/folder/Folder$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/Folder;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/Folder;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/Folder$1;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder$1;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    iget-object v1, v0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    if-eqz p2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 150
    if-eqz p2, :cond_1

    .line 151
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder$1;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/launcher/ui/folder/Folder;->isEdittingTitle:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/folder/Folder;->access$002(Lcom/baidu/launcher/ui/folder/Folder;Z)Z

    .line 152
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder$1;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    iget-object v0, v0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderEditBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder$1;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    new-instance v1, Lcom/baidu/launcher/ui/folder/Folder$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/folder/Folder$1$1;-><init>(Lcom/baidu/launcher/ui/folder/Folder$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/Folder;->post(Ljava/lang/Runnable;)Z

    .line 162
    :goto_1
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder$1;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    iget-object v0, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder$1;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    iget-object v0, v0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderEditBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
