.class final enum Lcom/baidu/bulletin/BulletinPresentation$Event;
.super Ljava/lang/Enum;
.source "BulletinPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/BulletinPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/BulletinPresentation$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/BulletinPresentation$Event;

.field public static final enum New_MESSAGE_NOTIFIED:Lcom/baidu/bulletin/BulletinPresentation$Event;

.field public static final enum PAGE_IMAGE_LOADED:Lcom/baidu/bulletin/BulletinPresentation$Event;

.field public static final enum PAGE_LOADED:Lcom/baidu/bulletin/BulletinPresentation$Event;

.field public static final enum SERVER_START:Lcom/baidu/bulletin/BulletinPresentation$Event;

.field public static final enum SYNCING:Lcom/baidu/bulletin/BulletinPresentation$Event;

.field public static final enum SYNC_FINISH:Lcom/baidu/bulletin/BulletinPresentation$Event;

.field public static final enum SYNC_START:Lcom/baidu/bulletin/BulletinPresentation$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    new-instance v0, Lcom/baidu/bulletin/BulletinPresentation$Event;

    const-string v1, "SERVER_START"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/BulletinPresentation$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->SERVER_START:Lcom/baidu/bulletin/BulletinPresentation$Event;

    .line 217
    new-instance v0, Lcom/baidu/bulletin/BulletinPresentation$Event;

    const-string v1, "SYNC_START"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/BulletinPresentation$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->SYNC_START:Lcom/baidu/bulletin/BulletinPresentation$Event;

    .line 218
    new-instance v0, Lcom/baidu/bulletin/BulletinPresentation$Event;

    const-string v1, "SYNCING"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/BulletinPresentation$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->SYNCING:Lcom/baidu/bulletin/BulletinPresentation$Event;

    .line 219
    new-instance v0, Lcom/baidu/bulletin/BulletinPresentation$Event;

    const-string v1, "SYNC_FINISH"

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/BulletinPresentation$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->SYNC_FINISH:Lcom/baidu/bulletin/BulletinPresentation$Event;

    .line 220
    new-instance v0, Lcom/baidu/bulletin/BulletinPresentation$Event;

    const-string v1, "New_MESSAGE_NOTIFIED"

    invoke-direct {v0, v1, v7}, Lcom/baidu/bulletin/BulletinPresentation$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->New_MESSAGE_NOTIFIED:Lcom/baidu/bulletin/BulletinPresentation$Event;

    .line 221
    new-instance v0, Lcom/baidu/bulletin/BulletinPresentation$Event;

    const-string v1, "PAGE_LOADED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/BulletinPresentation$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->PAGE_LOADED:Lcom/baidu/bulletin/BulletinPresentation$Event;

    .line 222
    new-instance v0, Lcom/baidu/bulletin/BulletinPresentation$Event;

    const-string v1, "PAGE_IMAGE_LOADED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/BulletinPresentation$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->PAGE_IMAGE_LOADED:Lcom/baidu/bulletin/BulletinPresentation$Event;

    .line 215
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/baidu/bulletin/BulletinPresentation$Event;

    sget-object v1, Lcom/baidu/bulletin/BulletinPresentation$Event;->SERVER_START:Lcom/baidu/bulletin/BulletinPresentation$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/BulletinPresentation$Event;->SYNC_START:Lcom/baidu/bulletin/BulletinPresentation$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/BulletinPresentation$Event;->SYNCING:Lcom/baidu/bulletin/BulletinPresentation$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/BulletinPresentation$Event;->SYNC_FINISH:Lcom/baidu/bulletin/BulletinPresentation$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/bulletin/BulletinPresentation$Event;->New_MESSAGE_NOTIFIED:Lcom/baidu/bulletin/BulletinPresentation$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/bulletin/BulletinPresentation$Event;->PAGE_LOADED:Lcom/baidu/bulletin/BulletinPresentation$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/bulletin/BulletinPresentation$Event;->PAGE_IMAGE_LOADED:Lcom/baidu/bulletin/BulletinPresentation$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->$VALUES:[Lcom/baidu/bulletin/BulletinPresentation$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/BulletinPresentation$Event;
    .locals 1
    .parameter "name"

    .prologue
    .line 215
    const-class v0, Lcom/baidu/bulletin/BulletinPresentation$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/BulletinPresentation$Event;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/BulletinPresentation$Event;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->$VALUES:[Lcom/baidu/bulletin/BulletinPresentation$Event;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/BulletinPresentation$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/BulletinPresentation$Event;

    return-object v0
.end method
