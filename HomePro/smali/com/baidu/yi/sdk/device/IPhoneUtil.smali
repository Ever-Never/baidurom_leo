.class public interface abstract Lcom/baidu/yi/sdk/device/IPhoneUtil;
.super Ljava/lang/Object;
.source "IPhoneUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/device/IPhoneUtil$Creator;
    }
.end annotation


# static fields
.field public static final SLOT_1:I = 0x0

.field public static final SLOT_2:I = 0x1


# virtual methods
.method public abstract getIMEI(I)Ljava/lang/String;
.end method

.method public abstract getIMSI(I)Ljava/lang/String;
.end method

.method public abstract isCompatable()Z
.end method

.method public abstract isSlotEnabled(I)Z
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z
.end method
