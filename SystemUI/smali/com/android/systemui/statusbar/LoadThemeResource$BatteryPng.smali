.class final enum Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;
.super Ljava/lang/Enum;
.source "LoadThemeResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/LoadThemeResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BatteryPng"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

.field public static final enum preBatteryChargeName:Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

.field public static final enum preBatteryName:Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

    const-string v1, "preBatteryName"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;->preBatteryName:Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

    const-string v1, "preBatteryChargeName"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;->preBatteryChargeName:Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

    sget-object v1, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;->preBatteryName:Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;->preBatteryChargeName:Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;->$VALUES:[Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;
    .locals 1
    .parameter "name"

    .prologue
    .line 51
    const-class v0, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;->$VALUES:[Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;

    return-object v0
.end method
