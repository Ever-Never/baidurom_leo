.class Lcom/baidu/launcher/ui/folder/Folder$1$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/Folder$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/folder/Folder$1;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/Folder$1;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/Folder$1$1;->this$1:Lcom/baidu/launcher/ui/folder/Folder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder$1$1;->this$1:Lcom/baidu/launcher/ui/folder/Folder$1;

    iget-object v0, v0, Lcom/baidu/launcher/ui/folder/Folder$1;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    #calls: Lcom/baidu/launcher/ui/folder/Folder;->showIME()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/Folder;->access$100(Lcom/baidu/launcher/ui/folder/Folder;)V

    .line 156
    return-void
.end method
