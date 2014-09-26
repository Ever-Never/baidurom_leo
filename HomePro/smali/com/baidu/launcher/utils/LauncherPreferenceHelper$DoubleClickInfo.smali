.class Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;
.super Ljava/lang/Object;
.source "LauncherPreferenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/utils/LauncherPreferenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleClickInfo"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field name:Ljava/lang/String;

.field type:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;->type:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/utils/LauncherPreferenceHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper$DoubleClickInfo;-><init>()V

    return-void
.end method
