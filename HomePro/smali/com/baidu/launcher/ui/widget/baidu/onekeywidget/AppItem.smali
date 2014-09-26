.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
.super Ljava/lang/Object;
.source "AppItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

.field private mIsLocked:Ljava/lang/Boolean;

.field private mpm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;Landroid/content/Context;)V
    .locals 1
    .parameter "item"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    .line 10
    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mpm:Landroid/content/pm/PackageManager;

    .line 15
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mpm:Landroid/content/pm/PackageManager;

    .line 17
    iget-boolean v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mIsLocked:Ljava/lang/Boolean;

    .line 18
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;)I
    .locals 7
    .parameter "another"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 60
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mIsLocked:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mIsLocked:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mIsLocked:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mIsLocked:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-wide v3, v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    iget-object v5, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-wide v5, v5, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 76
    :cond_2
    :goto_0
    return v0

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-wide v3, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    iget-object v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-wide v5, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    move v0, v1

    .line 66
    goto :goto_0

    :cond_4
    move v0, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_5
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mIsLocked:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 72
    iget-object v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mIsLocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 74
    goto :goto_0

    :cond_6
    move v0, v2

    .line 76
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->compareTo(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;)I

    move-result v0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->label:Ljava/lang/String;

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApppIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-object v1, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mpm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMergedItem()Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mAppMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    return-object v0
.end method

.method public isLocked()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mIsLocked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setLocked(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "mIsLocked"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->mIsLocked:Ljava/lang/Boolean;

    .line 26
    return-void
.end method
