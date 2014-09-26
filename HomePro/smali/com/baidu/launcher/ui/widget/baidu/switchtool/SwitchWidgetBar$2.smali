.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$2;
.super Ljava/lang/Object;
.source "SwitchWidgetBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->onAttachedToWindow()V
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
    .line 78
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->loadShortcutSwitch()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->access$100(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;)V

    .line 85
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 86
    return-void
.end method
