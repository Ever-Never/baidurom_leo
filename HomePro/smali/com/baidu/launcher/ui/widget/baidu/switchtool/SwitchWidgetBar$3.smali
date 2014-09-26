.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$3;
.super Ljava/lang/Object;
.source "SwitchWidgetBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->init()V
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
    .line 104
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->loadShortcutSwitch()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->access$100(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V

    .line 109
    return-void
.end method
