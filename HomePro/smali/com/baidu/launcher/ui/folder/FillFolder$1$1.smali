.class Lcom/baidu/launcher/ui/folder/FillFolder$1$1;
.super Ljava/lang/Object;
.source "FillFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/FillFolder$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/folder/FillFolder$1;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/FillFolder$1;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1$1;->this$1:Lcom/baidu/launcher/ui/folder/FillFolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder$1$1;->this$1:Lcom/baidu/launcher/ui/folder/FillFolder$1;

    iget-object v0, v0, Lcom/baidu/launcher/ui/folder/FillFolder$1;->this$0:Lcom/baidu/launcher/ui/folder/FillFolder;

    #calls: Lcom/baidu/launcher/ui/folder/FillFolder;->showIME()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->access$400(Lcom/baidu/launcher/ui/folder/FillFolder;)V

    .line 132
    return-void
.end method
