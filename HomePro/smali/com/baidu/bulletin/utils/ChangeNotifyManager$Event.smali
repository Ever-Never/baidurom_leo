.class public final enum Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;
.super Ljava/lang/Enum;
.source "ChangeNotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/ChangeNotifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

.field public static final enum BulletinSwitcherUnlock:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

.field public static final enum ChannelItemChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

.field public static final enum MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

.field public static final enum StorageSpaceNotEnough:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

.field public static final enum SubscribedInfoChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    const-string v1, "ChannelItemChange"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->ChannelItemChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    .line 15
    new-instance v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    const-string v1, "MediaMountChange"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    .line 16
    new-instance v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    const-string v1, "BulletinSwitcherUnlock"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->BulletinSwitcherUnlock:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    .line 17
    new-instance v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    const-string v1, "StorageSpaceNotEnough"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->StorageSpaceNotEnough:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    .line 18
    new-instance v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    const-string v1, "SubscribedInfoChange"

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->SubscribedInfoChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    sget-object v1, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->ChannelItemChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->BulletinSwitcherUnlock:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->StorageSpaceNotEnough:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->SubscribedInfoChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->$VALUES:[Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->$VALUES:[Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    return-object v0
.end method
