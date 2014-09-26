.class Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/DataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/DataTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/DataTracker;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/DataTracker;

    .line 134
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 135
    iput-object p3, p0, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;->mContext:Landroid/content/Context;

    .line 136
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastReceiver Settings onChanged.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/switcher/DataTracker;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/switcher/DataTracker;->updateStatus(Landroid/content/Context;)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, dataSwitch:I
    invoke-static {}, Lcom/android/systemui/statusbar/switcher/DataTracker;->access$000()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 155
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/DataTracker;->access$002(I)I

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/UBCManager;->getDefault(Landroid/content/Context;)Lcom/android/systemui/UBCManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/UBCManager;->submitDataSwitch(I)V

    .line 161
    :cond_0
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    return-void
.end method
