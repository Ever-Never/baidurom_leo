.class public Lcom/baidu/bulletin/entity/ChannelItem$Type;
.super Ljava/lang/Object;
.source "ChannelItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/entity/ChannelItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final APP_LIST:Ljava/lang/String; = "app"

.field public static final MP3:Ljava/lang/String; = "mp3"

.field public static final NATIVE_PAGE:Ljava/lang/String; = "native"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
