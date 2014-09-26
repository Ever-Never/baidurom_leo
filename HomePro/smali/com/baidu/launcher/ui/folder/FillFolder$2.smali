.class Lcom/baidu/launcher/ui/folder/FillFolder$2;
.super Ljava/lang/Object;
.source "FillFolder.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 140
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FillFolder$2;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 143
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder$2;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->doneEditTitle()V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
