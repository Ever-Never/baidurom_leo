.class public Lcom/baidu/yi/sdk/device/IPhoneUtil$Creator;
.super Ljava/lang/Object;
.source "IPhoneUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/device/IPhoneUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# static fields
.field private static mInstance:Lcom/baidu/yi/sdk/device/IPhoneUtil;

.field private static msync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/yi/sdk/device/IPhoneUtil$Creator;->mInstance:Lcom/baidu/yi/sdk/device/IPhoneUtil;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/yi/sdk/device/IPhoneUtil$Creator;->msync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/device/IPhoneUtil;
    .locals 6
    .parameter "context"

    .prologue
    .line 27
    sget-object v3, Lcom/baidu/yi/sdk/device/IPhoneUtil$Creator;->mInstance:Lcom/baidu/yi/sdk/device/IPhoneUtil;

    if-nez v3, :cond_0

    .line 28
    sget-object v4, Lcom/baidu/yi/sdk/device/IPhoneUtil$Creator;->msync:Ljava/lang/Object;

    monitor-enter v4

    .line 29
    :try_start_0
    new-instance v1, Lcom/baidu/yi/sdk/device/DefaultPhoneUtil;

    invoke-direct {v1, p0}, Lcom/baidu/yi/sdk/device/DefaultPhoneUtil;-><init>(Landroid/content/Context;)V

    .line 32
    .local v1, mPhoneUtilImpl:Lcom/baidu/yi/sdk/device/IPhoneUtil;
    const/4 v3, 0x4

    new-array v2, v3, [Lcom/baidu/yi/sdk/device/IPhoneUtil;

    const/4 v3, 0x0

    new-instance v5, Lcom/baidu/yi/sdk/device/MTKTCLPhoneUtil;

    invoke-direct {v5, p0}, Lcom/baidu/yi/sdk/device/MTKTCLPhoneUtil;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v3

    const/4 v3, 0x1

    .line 33
    new-instance v5, Lcom/baidu/yi/sdk/device/MTKZXPhoneUtil;

    invoke-direct {v5, p0}, Lcom/baidu/yi/sdk/device/MTKZXPhoneUtil;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v3

    const/4 v3, 0x2

    new-instance v5, Lcom/baidu/yi/sdk/device/MTKPhoneUtil;

    invoke-direct {v5, p0}, Lcom/baidu/yi/sdk/device/MTKPhoneUtil;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v3

    const/4 v3, 0x3

    new-instance v5, Lcom/baidu/yi/sdk/device/QualcommPhoneUtil;

    invoke-direct {v5, p0}, Lcom/baidu/yi/sdk/device/QualcommPhoneUtil;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v3

    .line 34
    .local v2, mPhones:[Lcom/baidu/yi/sdk/device/IPhoneUtil;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 40
    :goto_1
    sput-object v1, Lcom/baidu/yi/sdk/device/IPhoneUtil$Creator;->mInstance:Lcom/baidu/yi/sdk/device/IPhoneUtil;

    .line 28
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v0           #i:I
    .end local v1           #mPhoneUtilImpl:Lcom/baidu/yi/sdk/device/IPhoneUtil;
    .end local v2           #mPhones:[Lcom/baidu/yi/sdk/device/IPhoneUtil;
    :cond_0
    sget-object v3, Lcom/baidu/yi/sdk/device/IPhoneUtil$Creator;->mInstance:Lcom/baidu/yi/sdk/device/IPhoneUtil;

    return-object v3

    .line 35
    .restart local v0       #i:I
    .restart local v1       #mPhoneUtilImpl:Lcom/baidu/yi/sdk/device/IPhoneUtil;
    .restart local v2       #mPhones:[Lcom/baidu/yi/sdk/device/IPhoneUtil;
    :cond_1
    :try_start_1
    aget-object v3, v2, v0

    invoke-interface {v3}, Lcom/baidu/yi/sdk/device/IPhoneUtil;->isCompatable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    aget-object v1, v2, v0

    .line 37
    goto :goto_1

    .line 34
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    .end local v0           #i:I
    .end local v1           #mPhoneUtilImpl:Lcom/baidu/yi/sdk/device/IPhoneUtil;
    .end local v2           #mPhones:[Lcom/baidu/yi/sdk/device/IPhoneUtil;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
