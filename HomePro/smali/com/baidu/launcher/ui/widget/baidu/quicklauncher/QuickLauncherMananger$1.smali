.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$1;
.super Ljava/lang/Object;
.source "QuickLauncherMananger.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/launcher/data/item/ListAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/launcher/data/item/ListAppInfo;Lcom/baidu/launcher/data/item/ListAppInfo;)I
    .locals 9
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->access$000(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 111
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v5, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 113
    .local v0, pia:Landroid/content/pm/PackageInfo;
    iget-object v5, p2, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 115
    .local v1, pib:Landroid/content/pm/PackageInfo;
    iget-wide v5, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v7, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 116
    const/4 v4, -0x1

    .line 126
    .end local v0           #pia:Landroid/content/pm/PackageInfo;
    .end local v1           #pib:Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    .line 117
    .restart local v0       #pia:Landroid/content/pm/PackageInfo;
    .restart local v1       #pib:Landroid/content/pm/PackageInfo;
    :cond_0
    iget-wide v5, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v7, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 118
    const/4 v4, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v3

    .line 121
    .local v3, sCollator:Ljava/text/Collator;
    iget-object v5, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 122
    .end local v0           #pia:Landroid/content/pm/PackageInfo;
    .end local v1           #pib:Landroid/content/pm/PackageInfo;
    .end local v3           #sCollator:Ljava/text/Collator;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    check-cast p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p1
    check-cast p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$1;->compare(Lcom/baidu/launcher/data/item/ListAppInfo;Lcom/baidu/launcher/data/item/ListAppInfo;)I

    move-result v0

    return v0
.end method
