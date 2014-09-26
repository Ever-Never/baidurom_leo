.class public Lcom/baidu/bulletin/entity/Channel$Id;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/entity/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Id"
.end annotation


# static fields
.field public static final APP:Ljava/lang/String; = "app"

.field private static AllChannelId:[Ljava/lang/String; = null

.field public static final BAIKE:Ljava/lang/String; = "baike"

.field public static final CAMERA:Ljava/lang/String; = "camera"

.field public static final COUNT:I = 0xb

.field public static final ENTERTAINMENT:Ljava/lang/String; = "entertainment"

.field public static final FINANCE:Ljava/lang/String; = "finance"

.field public static final FOCUS_NEWS:Ljava/lang/String; = "focus_news"

.field public static final GYM:Ljava/lang/String; = "gym"

.field public static final HISTORY_TODAY:Ljava/lang/String; = "history"

.field public static final INTERNET:Ljava/lang/String; = "internet"

.field public static final MILITARY:Ljava/lang/String; = "military"

.field public static final MODEL:Ljava/lang/String; = "model"

.field public static final MOKO:Ljava/lang/String; = "moko"

.field public static final MUSIC:Ljava/lang/String; = "music"

.field public static final NEWS:Ljava/lang/String; = "news"

.field public static final SEXIY:Ljava/lang/String; = "sexiy"

.field public static final TECH:Ljava/lang/String; = "tech"

.field public static final TIEBA:Ljava/lang/String; = "tieba"

.field public static final WOMEN:Ljava/lang/String; = "women"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "focus_news"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "military"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "entertainment"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tech"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "finance"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gym"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "women"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "internet"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "music"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "history"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sexiy"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "model"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "camera"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "moko"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/bulletin/entity/Channel$Id;->AllChannelId:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllChannelId()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/bulletin/entity/Channel$Id;->AllChannelId:[Ljava/lang/String;

    return-object v0
.end method
