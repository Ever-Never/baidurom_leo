.class public Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "hostId"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "appWidget"

    .prologue
    .line 42
    new-instance v0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-direct {v0, p1, p0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;)V

    .line 44
    .local v0, widgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;
    return-object v0
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 64
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;->clearViews()V

    .line 67
    :cond_0
    return-void
.end method
