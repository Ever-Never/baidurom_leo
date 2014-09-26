.class public Lcom/baidu/launcher/LauncherConfig;
.super Ljava/lang/Object;
.source "LauncherConfig.java"


# static fields
.field public static final DEBUG_ENABLE:Z = false

.field public static DEFAULT_BUSINESS_SYNC_INTERVAL:J = 0x0L

.field public static SAFE_BUSINESS_SYNC_AFTER:J = 0x0L

.field public static final SERVER_URL:Ljava/lang/String; = "https://cloud.os.baidu.com/launcher/mb/"

.field public static final UPDATE_USER_INFO_INTERVAL:J = 0x493e0L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/32 v0, 0x57e40

    .line 15
    sput-wide v0, Lcom/baidu/launcher/LauncherConfig;->SAFE_BUSINESS_SYNC_AFTER:J

    .line 20
    sput-wide v0, Lcom/baidu/launcher/LauncherConfig;->DEFAULT_BUSINESS_SYNC_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
