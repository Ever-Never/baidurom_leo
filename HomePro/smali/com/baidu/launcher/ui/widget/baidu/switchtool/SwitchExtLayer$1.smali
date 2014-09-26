.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$1;
.super Ljava/lang/Object;
.source "SwitchExtLayer.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->bindWidgetBar(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitAnimation()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->startStretchAnimation()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$000(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)V

    .line 97
    return-void
.end method
