.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$2;
.super Ljava/lang/Object;
.source "OneKeyWidgetMedium.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->onInitial()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->access$800(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V

    .line 139
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 140
    return-void
.end method
