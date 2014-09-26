.class public Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;
.super Ljava/lang/Object;
.source "RequestAccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/RequestAccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SongItem"
.end annotation


# instance fields
.field public can_load:Z

.field public can_see:I

.field public down_type:I

.field public file_bitrate:I

.field public file_duration:J

.field public file_extension:Ljava/lang/String;

.field public file_link:Ljava/lang/String;

.field public file_size:J

.field public is_udition_url:I

.field public show_link:Ljava/lang/String;

.field public song_file_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
