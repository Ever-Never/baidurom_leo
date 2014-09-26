.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$1;
.super Ljava/lang/Object;
.source "SwitchWidgetBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 68
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->access$000(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->open(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V

    .line 69
    return-void
.end method
