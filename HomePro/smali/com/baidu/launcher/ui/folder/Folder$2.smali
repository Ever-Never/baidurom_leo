.class Lcom/baidu/launcher/ui/folder/Folder$2;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 164
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/Folder$2;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 167
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder$2;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/folder/Folder;->doneEditTitle(Z)V

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
