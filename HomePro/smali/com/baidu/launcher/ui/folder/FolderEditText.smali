.class public Lcom/baidu/launcher/ui/folder/FolderEditText;
.super Landroid/widget/EditText;
.source "FolderEditText.java"


# instance fields
.field private mFolder:Lcom/baidu/launcher/ui/folder/Folder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderEditText;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderEditText;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/Folder;->doneEditTitle(Z)V

    :cond_0
    :goto_0
    move v0, v1

    .line 45
    :goto_1
    return v0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderEditText;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/baidu/launcher/ui/folder/FillFolder;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderEditText;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/baidu/launcher/ui/folder/FillFolder;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->doneEditTitle()V

    goto :goto_0

    .line 45
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public setFolder(Lcom/baidu/launcher/ui/folder/Folder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderEditText;->mFolder:Lcom/baidu/launcher/ui/folder/Folder;

    .line 26
    return-void
.end method
