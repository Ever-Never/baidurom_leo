.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    .line 152
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 153
    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;->mContext:Landroid/content/Context;

    .line 154
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 176
    const-string v2, "SwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange:selfChange="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;

    .line 178
    .local v1, vStateTracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getInterestObserverChangedUri()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->onChange(Landroid/content/Context;Z)V

    goto :goto_0

    .line 183
    .end local v1           #vStateTracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    :cond_1
    return-void
.end method

.method registerObservingUri(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, aInterestUri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;>;"
    const/4 v4, 0x0

    .line 157
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 158
    .local v2, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;

    .line 160
    .local v1, interest:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;
    iget-boolean v3, v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;->mIsSecure:Z

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v3, v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 172
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #interest:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;
    :cond_1
    return-void
.end method
