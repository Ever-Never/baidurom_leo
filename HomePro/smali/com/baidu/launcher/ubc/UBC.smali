.class public Lcom/baidu/launcher/ubc/UBC;
.super Ljava/lang/Object;
.source "UBC.java"


# static fields
.field public static final EVENT_APPSTORE:Ljava/lang/String; = "market"

.field public static final EVENT_APP_ACTIVATED:Ljava/lang/String; = "activated"

.field public static final EVENT_APP_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final EVENT_FOLDER:Ljava/lang/String; = "folder"

.field public static final EVENT_ICON_FOLDER:Ljava/lang/String; = "icon_folder"

.field public static final EVENT_ICON_HOME:Ljava/lang/String; = "icon_home"

.field public static final EVENT_ICON_LAUNCHER:Ljava/lang/String; = "icon_applist"

.field public static final EVENT_SEARCH:Ljava/lang/String; = "searchbox"

.field public static final EVENT_THEME:Ljava/lang/String; = "theme"

.field public static final EVENT_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field public static final EVENT_WIDGET:Ljava/lang/String; = "widget"

.field public static final LABEL_ADD:Ljava/lang/String; = "add"

.field public static final LABEL_BROWSE:Ljava/lang/String; = "browse"

.field public static final LABEL_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final LABEL_REMOVE:Ljava/lang/String; = "remove"

.field public static final LABEL_USE:Ljava/lang/String; = "use"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public static reporWallpaperDownload(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 63
    const-string v0, "wallpaper"

    const-string v1, "download"

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static reportAppActivated(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .parameter "aContext"
    .parameter "aAppName"
    .parameter "aId"

    .prologue
    .line 116
    invoke-static {p0, p2, p3}, Lcom/baidu/launcher/business/BusinessDAOUtil;->getBusinessIdbyBusinessTableId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 117
    .local v0, businessId:J
    const-string v2, "activated"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static reportAppDownload(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .parameter "aContext"
    .parameter "aAppName"
    .parameter "aId"

    .prologue
    .line 112
    invoke-static {p0, p2, p3}, Lcom/baidu/launcher/business/BusinessDAOUtil;->getBusinessIdbyBusinessTableId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 113
    .local v0, businessId:J
    const-string v2, "download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static reportAppstoreOpen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "aContext"
    .parameter "aAppName"

    .prologue
    .line 108
    const-string v0, "market"

    invoke-static {p0, v0, p1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static reportFolderOpen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "aContext"
    .parameter "aFolderName"

    .prologue
    .line 88
    const-string v0, "folder"

    invoke-static {p0, v0, p1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static reportIconApplistOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "aContext"
    .parameter "aAppName"
    .parameter "aPackageName"

    .prologue
    .line 96
    const-string v0, "icon_applist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static reportIconFolderOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "aContext"
    .parameter "aAppName"
    .parameter "aPackageName"

    .prologue
    .line 100
    const-string v0, "icon_folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static reportIconHomeOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "aContext"
    .parameter "aAppName"
    .parameter "aPackageName"

    .prologue
    .line 92
    const-string v0, "icon_home"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static reportSearchAdd(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 31
    const-string v0, "searchbox"

    const-string v1, "add"

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static reportSearchRemove(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 35
    const-string v0, "searchbox"

    const-string v1, "remove"

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static reportSearchUse(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 39
    const-string v0, "searchbox"

    const-string v1, "use"

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static reportThemeBrowse(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 43
    const-string v0, "theme"

    const-string v1, "browse"

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static reportThemeDownload(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 51
    const-string v0, "theme"

    const-string v1, "download"

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static reportThemeUse(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 47
    const-string v0, "theme"

    const-string v1, "use"

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static reportWallpaperBrowse(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 55
    const-string v0, "wallpaper"

    const-string v1, "browse"

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static reportWallpaperUse(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 59
    const-string v0, "wallpaper"

    const-string v1, "use"

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static reportWidgetClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "aContext"
    .parameter "aAppName"
    .parameter "aPackageName"

    .prologue
    .line 104
    const-string v0, "widget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "category"
    .parameter "event"

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    return-void
.end method
