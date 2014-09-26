.class public final enum Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;
.super Ljava/lang/Enum;
.source "UIController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

.field public static final enum HAVE_CONTENT:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

.field public static final enum NO_CHANNEL:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

.field public static final enum NO_MESSAGE:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

.field public static final enum NO_NETWORK:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 928
    new-instance v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    const-string v1, "NO_NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_NETWORK:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    new-instance v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    const-string v1, "NO_CHANNEL"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_CHANNEL:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    new-instance v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    const-string v1, "NO_MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_MESSAGE:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    new-instance v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    const-string v1, "HAVE_CONTENT"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->HAVE_CONTENT:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    .line 927
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    sget-object v1, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_NETWORK:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_CHANNEL:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_MESSAGE:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->HAVE_CONTENT:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->$VALUES:[Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

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
    .line 927
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;
    .locals 1
    .parameter "name"

    .prologue
    .line 927
    const-class v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;
    .locals 1

    .prologue
    .line 927
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->$VALUES:[Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    return-object v0
.end method
