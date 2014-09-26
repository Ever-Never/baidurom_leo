.class public Lcom/baidu/bulletin/utils/DeviceEnv$Static;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/DeviceEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Static"
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static context()Landroid/content/Context;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceEnv context is null!"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    sput-object p0, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method
