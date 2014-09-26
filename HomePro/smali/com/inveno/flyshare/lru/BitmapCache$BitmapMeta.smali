.class Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flyshare/lru/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapMeta"
.end annotation


# instance fields
.field public data:[B

.field public expiryTimestamp:J

.field public inputStream:Ljava/io/FileInputStream;

.field final synthetic this$0:Lcom/inveno/flyshare/lru/BitmapCache;


# direct methods
.method private constructor <init>(Lcom/inveno/flyshare/lru/BitmapCache;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->this$0:Lcom/inveno/flyshare/lru/BitmapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/flyshare/lru/BitmapCache;Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;-><init>(Lcom/inveno/flyshare/lru/BitmapCache;)V

    return-void
.end method
