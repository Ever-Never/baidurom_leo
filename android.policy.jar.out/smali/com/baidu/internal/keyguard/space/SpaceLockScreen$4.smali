.class Lcom/baidu/internal/keyguard/space/SpaceLockScreen$4;
.super Landroid/database/ContentObserver;
.source "SpaceLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/space/SpaceLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/space/SpaceLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$4;->this$0:Lcom/baidu/internal/keyguard/space/SpaceLockScreen;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$4;->this$0:Lcom/baidu/internal/keyguard/space/SpaceLockScreen;

    #calls: Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->updateAlarmInfo()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->access$300(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)V

    .line 184
    return-void
.end method