.class Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$1;
.super Ljava/lang/Thread;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->removeWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$1;->this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$1;->this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    #getter for: Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHost:Landroid/appwidget/AppWidgetHost;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->access$400(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)Landroid/appwidget/AppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$1;->this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 198
    return-void
.end method
