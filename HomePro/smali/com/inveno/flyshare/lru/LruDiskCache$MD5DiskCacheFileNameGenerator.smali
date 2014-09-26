.class public Lcom/inveno/flyshare/lru/LruDiskCache$MD5DiskCacheFileNameGenerator;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flyshare/lru/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MD5DiskCacheFileNameGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/flyshare/lru/LruDiskCache;


# direct methods
.method public constructor <init>(Lcom/inveno/flyshare/lru/LruDiskCache;)V
    .locals 0
    .parameter

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$MD5DiskCacheFileNameGenerator;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    .line 1272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 1288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1289
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_0

    .line 1296
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1290
    :cond_0
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1292
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1294
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public generate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 1278
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1279
    .local v2, mDigest:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 1280
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/inveno/flyshare/lru/LruDiskCache$MD5DiskCacheFileNameGenerator;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1284
    .end local v2           #mDigest:Ljava/security/MessageDigest;
    .local v0, cacheKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1281
    .end local v0           #cacheKey:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1282
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cacheKey:Ljava/lang/String;
    goto :goto_0
.end method
