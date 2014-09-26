.class public Lcom/android/systemui/statusbar/switcher/WordTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "WordTracker.java"


# static fields
.field private static final WORD_SEARCH_CLASS_NAME:Ljava/lang/String; = "com.baidu.clicksearch.service.ClickSearchService"

.field private static final WORD_SEARCH_STATUS:Ljava/lang/String; = "clicksearch_status"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/switcher/WordTracker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/WordTracker$1;-><init>(Lcom/android/systemui/statusbar/switcher/WordTracker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/WordTracker;->getInitWordStatus(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mCurrentState:I

    .line 22
    return-void
.end method

.method private getInitWordStatus(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v4, "clicksearch_status"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, status:I
    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/WordTracker;->isWordSearchServiceOn(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isWordSearchServiceOn(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    .line 108
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 110
    .local v3, mActivityManager:Landroid/app/ActivityManager;
    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 111
    .local v4, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 112
    .local v2, info:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v0, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 113
    .local v0, cp:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    const-string v5, "com.baidu.clicksearch.service.ClickSearchService"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    const/4 v5, 0x1

    .line 117
    .end local v0           #cp:Landroid/content/ComponentName;
    .end local v2           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mCurrentState:I

    return v0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0xa

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.clicksearch.clicksearch.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method public onClick(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/WordTracker;->collapse(Landroid/content/Context;)V

    .line 76
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.clicksearch.clicksearch"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v2, "entrance"

    const-string v3, "status_bar"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "toggleservice"

    iget v3, p0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mCurrentState:I

    if-ne v3, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/WordTracker;->toggleStateChange(Landroid/content/Context;)V

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onLongClick(Landroid/content/Context;)V

    .line 90
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.baidu.clicksearch"

    const-string v3, "com.baidu.clicksearch.ui.MainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, cpn:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 94
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0           #cpn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 41
    iput p2, p0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mCurrentState:I

    .line 42
    return-void
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 26
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mCurrentState:I

    if-ne v0, v1, :cond_0

    .line 27
    const v0, 0x7f0200ad

    invoke-virtual {p2, v0, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 31
    :goto_0
    const v0, 0x7f0c00c1

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 32
    return-void

    .line 29
    :cond_0
    const v0, 0x7f0200ac

    invoke-virtual {p2, v0, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0
.end method
