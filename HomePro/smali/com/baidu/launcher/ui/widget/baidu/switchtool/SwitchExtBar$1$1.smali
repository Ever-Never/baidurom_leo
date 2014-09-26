.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1$1;
.super Ljava/lang/Object;
.source "SwitchExtBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mCallback:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->access$100(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;->onInitAnimation()V

    .line 86
    return-void
.end method
