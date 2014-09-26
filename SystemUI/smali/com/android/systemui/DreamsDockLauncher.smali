.class public Lcom/android/systemui/DreamsDockLauncher;
.super Landroid/app/Activity;
.source "DreamsDockLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DreamsDockLauncher$DockEventReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DreamsDockLauncher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-static {p0}, Lcom/android/systemui/DreamsDockLauncher;->launchDream(Landroid/content/Context;)V

    return-void
.end method

.method private static launchDream(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 29
    .local v1, component:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 33
    :cond_0
    if-eqz v1, :cond_1

    .line 35
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 38
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const v5, 0x50840004

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 46
    .local v3, zzz:Landroid/content/Intent;
    const-string v4, "DreamsDockLauncher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting screen saver on dock event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v3           #zzz:Landroid/content/Intent;
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v4, "DreamsDockLauncher"

    const-string v5, "Couldn\'t start screen saver: none selected"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 53
    .local v2, exc:Landroid/content/ActivityNotFoundException;
    const-string v4, "DreamsDockLauncher"

    const-string v5, "Couldn\'t start screen saver: none installed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {p0}, Lcom/android/systemui/DreamsDockLauncher;->launchDream(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/DreamsDockLauncher;->finish()V

    .line 22
    return-void
.end method
