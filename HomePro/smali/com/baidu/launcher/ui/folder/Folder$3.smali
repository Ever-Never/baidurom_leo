.class Lcom/baidu/launcher/ui/folder/Folder$3;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 174
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/Folder$3;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    .line 183
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, title:Ljava/lang/String;
    const/4 v0, 0x0

    .line 186
    .local v0, byteCount:I
    const/4 v2, 0x0

    .line 187
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 188
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/baidu/launcher/utils/Utilities;->isChinese(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 189
    add-int/lit8 v0, v0, 0x2

    .line 193
    :goto_2
    const/16 v4, 0x10

    if-le v0, v4, :cond_4

    .line 199
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 200
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/Folder$3;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    iget-object v4, v4, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/Folder$3;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    iget-object v4, v4, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v4, v2}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setSelection(I)V

    goto :goto_0

    .line 191
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 196
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 177
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 180
    return-void
.end method
