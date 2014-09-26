.class public Lcom/baidu/yi/ads/Ad$Action;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final CALL_ACTION:I = 0x20

.field public static final CLICK_TO_VIDEO_ACTION:I = 0x40

.field public static final DOWNLOAD_ACTION:I = 0x2

.field public static final GOTO_ACTION:I = 0x1

.field public static final MAP_ACTION:I = 0x4

.field public static final SEND_MAIL_ACTION:I = 0x10

.field public static final SEND_SMS_ACTION:I = 0x8

.field public static final SHOW_ACTION:I = 0x80

.field public static final UNSUPPORTED_ACTION:I = 0x0

.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mDestination:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "actionType"
    .parameter "destination"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Lcom/baidu/yi/ads/Ad$Action;->mType:I

    .line 145
    iput-object p2, p0, Lcom/baidu/yi/ads/Ad$Action;->mDestination:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad$Action;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad$Action;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad$Action;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/baidu/yi/ads/Ad$Action;->mType:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/baidu/yi/ads/Ad$Action;->mDescription:Ljava/lang/String;

    .line 181
    return-void
.end method
